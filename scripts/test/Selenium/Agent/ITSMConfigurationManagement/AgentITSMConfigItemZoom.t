# --
# Copyright (C) 2001-2015 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use utf8;

use vars (qw($Self));

# get selenium object
my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        # get needed objects
        my $Helper               = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');
        my $GeneralCatalogObject = $Kernel::OM->Get('Kernel::System::GeneralCatalog');

        # get 'Hardware' catalog class IDs
        my $ConfigItemDataRef = $GeneralCatalogObject->ItemGet(
            Class => 'ITSM::ConfigItem::Class',
            Name  => 'Hardware',
        );
        my $HardwareConfigItemID = $ConfigItemDataRef->{ItemID};

        # get 'Production' and 'Repair' deployment state IDs
        my @DeplStateIDs;
        my @DeplStates = (qw(Production Repair));
        for my $DeplState (@DeplStates) {
            my $DeplStateDataRef = $GeneralCatalogObject->ItemGet(
                Class => 'ITSM::ConfigItem::DeploymentState',
                Name  => $DeplState,
            );
            push @DeplStateIDs, $DeplStateDataRef->{ItemID}
        }

        # get config item object
        my $ConfigItemObject = $Kernel::OM->Get('Kernel::System::ITSMConfigItem');

        # create config item number
        my $ConfigItemNumber = $ConfigItemObject->ConfigItemNumberCreate(
            Type    => $Kernel::OM->Get('Kernel::Config')->Get('ITSMConfigItem::NumberGenerator'),
            ClassID => $HardwareConfigItemID,
        );

        # add the new config item
        my $ConfigItemID = $ConfigItemObject->ConfigItemAdd(
            Number  => $ConfigItemNumber,
            ClassID => $HardwareConfigItemID,
            UserID  => 1,
        );

        # add two versions
        my @VersionIDs;
        for my $Version (@DeplStateIDs) {
            my $VersionID = $ConfigItemObject->VersionAdd(
                Name         => 'SeleniumTest',
                DefinitionID => 1,
                DeplStateID  => $Version,
                InciStateID  => 1,
                UserID       => 1,
                ConfigItemID => $ConfigItemID,
            );
            push @VersionIDs, $VersionID
        }

        # create test user and login
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => [ 'admin', 'itsm-configitem' ],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        # navigate te AgentITSMConfigItemZoom screen
        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');
        $Selenium->get(
            "${ScriptAlias}index.pl?Action=AgentITSMConfigItemZoom;ConfigItemID=$ConfigItemID;Version=$VersionIDs[0]"
        );

        # get config item value params
        my @ConfigItemValues = (
            {
                Value => 'Hardware',
                Check => 'p.Value:contains(Hardware)',
            },
            {
                Value => 'SeleniumTest',
                Check => 'p.Value:contains(SeleniumTest)',
            },
            {
                Value => 'Repair',
                Check => 'div.Value:contains(Repair)',
            },
            {
                Value => 'Operational',
                Check => 'div.Value:contains(Operational)',
            },
            {
                Value => "$ConfigItemNumber",
                Check => "h1:contains($ConfigItemNumber)",
            },
        );

        # check config item values on screen
        for my $CheckConfigItemValue (@ConfigItemValues) {
            $Self->True(
                $Selenium->execute_script(
                    "return \$('$CheckConfigItemValue->{Check}').length"
                ),
                "Test config item value $CheckConfigItemValue->{Value} - found",
            );
        }

        # click to show all versions
        $Selenium->find_element( ".AllITSMItems", 'css' )->click();

        # verify both versions are present on screen
        for my $VersionsCheck (@DeplStates) {
            $Self->True(
                index( $Selenium->get_page_source(), "SeleniumTest ($VersionsCheck)" ) > -1,
                "SeleniumTest ($VersionsCheck) - found",
            );
        }

        # get test menu buttons params
        my @MenuButtons = (
            {
                Name => 'Back',
                Link => "Action=AgentITSMConfigItem;ClassID=$HardwareConfigItemID",
            },
            {
                Name => 'History',
                Link => "AgentITSMConfigItemHistory;ConfigItemID=$ConfigItemID;VersionID=$VersionIDs[1]",
            },
            {
                Name => 'Edit',
                Link => "AgentITSMConfigItemEdit;ConfigItemID=$ConfigItemID",
            },
            {
                Name => 'Print',
                Link => "AgentITSMConfigItemPrint;ConfigItemID=$ConfigItemID;VersionID=$VersionIDs[1]",
            },
            {
                Name => 'Link',
                Link => "AgentLinkObject;SourceObject=ITSMConfigItem;SourceKey=$ConfigItemID",
            },
            {
                Name => 'Duplicate',
                Link => "Action=AgentITSMConfigItemEdit;DuplicateID=$ConfigItemID;VersionID=$VersionIDs[1]",
            },
        );

        # check menu buttons
        for my $MenuButtonCheck (@MenuButtons) {
            my $Success = $Selenium->find_element("//a[contains(\@href, \'$MenuButtonCheck->{Link}' )]");
            $Self->True(
                $Success,
                "Menu button $MenuButtonCheck->{Name} - found",
            );
        }

        # delete created test config item
        my $Success = $ConfigItemObject->ConfigItemDelete(
            ConfigItemID => $ConfigItemID,
            UserID       => 1,
        );
        $Self->True(
            $Success,
            "Deleted ConfigItem - $ConfigItemID",
        );
        }

);

1;
