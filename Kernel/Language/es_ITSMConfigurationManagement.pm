# --
# Copyright (C) 2001-2017 OTRS AG, http://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::es_ITSMConfigurationManagement;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AdminITSMConfigItem
    $Self->{Translation}->{'Config Item Management'} = 'Gestión de Elementos de Configuración';
    $Self->{Translation}->{'Change class definition'} = 'Cambiar definición de la Clase';
    $Self->{Translation}->{'Config Item Class'} = 'Clase de elemento de configuración';
    $Self->{Translation}->{'Definition'} = 'Definición';

    # Template: AgentITSMConfigItemAdd
    $Self->{Translation}->{'Config Item'} = 'Elemento de Configuración';
    $Self->{Translation}->{'Filter for Classes'} = 'Filtro para Clases';
    $Self->{Translation}->{'Select a Class from the list to create a new Config Item.'} = 'Seleccione una Clase de la lista para crear un nuevo Item de Configuración';
    $Self->{Translation}->{'Class'} = 'Clase';

    # Template: AgentITSMConfigItemBulk
    $Self->{Translation}->{'ITSM ConfigItem Bulk Action'} = '';
    $Self->{Translation}->{'Deployment state'} = 'Estado de despliegue';
    $Self->{Translation}->{'Incident state'} = 'Estado del incidente';
    $Self->{Translation}->{'Link to another'} = 'Enlazar con otro';
    $Self->{Translation}->{'Invalid Configuration Item number!'} = '¡Número de Ítem de Configuración no valido!';
    $Self->{Translation}->{'The number of another Configuration Item to link with.'} = 'El número de otro elemento de configuración con el que vincular.';

    # Template: AgentITSMConfigItemDelete
    $Self->{Translation}->{'Do you really want to delete this config item?'} = '¿Realmente desea eliminar este elemento de configuración?';

    # Template: AgentITSMConfigItemEdit
    $Self->{Translation}->{'The name of this config item'} = 'El nombre de este elemento de configuración';
    $Self->{Translation}->{'Name is already in use by the ConfigItems with the following Number(s): %s'} =
        'El nombre ya esta en uso por Ítems de Configuración con los siguientes número(s): %s';
    $Self->{Translation}->{'Deployment State'} = 'Estado de la Implementación';
    $Self->{Translation}->{'Incident State'} = 'Estado del Incidente';

    # Template: AgentITSMConfigItemHistory
    $Self->{Translation}->{'History of Config Item: %s'} = 'Historial del Elemento de configuración: %s';

    # Template: AgentITSMConfigItemOverviewNavBar
    $Self->{Translation}->{'Context Settings'} = 'Ajustes de Contexto';
    $Self->{Translation}->{'Config Items per page'} = 'CIs por página';

    # Template: AgentITSMConfigItemOverviewSmall
    $Self->{Translation}->{'A generic ITSM Configuration Item table'} = 'Una tabla genérica de ítems de configuración de ITSM';
    $Self->{Translation}->{'Deployment State Type'} = 'Tipo de estado de implementación';
    $Self->{Translation}->{'Current Incident State'} = 'Estado Actual del Incidente';
    $Self->{Translation}->{'Current Incident State Type'} = '';
    $Self->{Translation}->{'Last changed'} = 'Última modificación';

    # Template: AgentITSMConfigItemSearch
    $Self->{Translation}->{'Create New Template'} = 'Crear nueva plantilla';
    $Self->{Translation}->{'Run Search'} = 'Ejecutar la búsqueda';
    $Self->{Translation}->{'Also search in previous versions?'} = '¿Desea buscar en versiones anteriores?';

    # Template: AgentITSMConfigItemZoom
    $Self->{Translation}->{'Configuration Item'} = 'Elemento de configuración';
    $Self->{Translation}->{'Configuration Item Information'} = 'Información del elemento de configuración';
    $Self->{Translation}->{'Current Deployment State'} = 'Estado Actual de la Implementación';
    $Self->{Translation}->{'Last changed by'} = 'Última modificación por';
    $Self->{Translation}->{'Ok'} = 'Ok';
    $Self->{Translation}->{'Show one version'} = 'Mostrar una versión';
    $Self->{Translation}->{'Show all versions'} = 'Mostrar todas las versiones';
    $Self->{Translation}->{'Version Incident State'} = 'Estado del incidente de la versión';
    $Self->{Translation}->{'Version Deployment State'} = 'Estado de la versión de implementación';
    $Self->{Translation}->{'Version Number'} = 'Número de versión';
    $Self->{Translation}->{'Configuration Item Version Details'} = '';
    $Self->{Translation}->{'Property'} = 'Propiedad';

    # Perl Module: Kernel/Modules/AgentITSMConfigItem.pm
    $Self->{Translation}->{'No access to Class is given!'} = '';
    $Self->{Translation}->{'Overview: ITSM ConfigItem'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemBulk.pm
    $Self->{Translation}->{'No ConfigItemID is given!'} = '';
    $Self->{Translation}->{'You need at least one selected Configuration Item!'} = '';
    $Self->{Translation}->{'You don\'t have write access to this configuration item: %s.'} =
        '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemDelete.pm
    $Self->{Translation}->{'Config item "%s" not found in database!'} = '';
    $Self->{Translation}->{'Was not able to delete the configitem ID %s!'} = '';
    $Self->{Translation}->{'No version found for ConfigItemID %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemEdit.pm
    $Self->{Translation}->{'No ConfigItemID, DuplicateID or ClassID is given!'} = '';
    $Self->{Translation}->{'No access is given!'} = '';
    $Self->{Translation}->{'No definition was defined for class %s!'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemHistory.pm
    $Self->{Translation}->{'Can\'t show history, no ConfigItemID is given!'} = '';
    $Self->{Translation}->{'Can\'t show history, no access rights given!'} = '';
    $Self->{Translation}->{'CIHistory::'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemPrint.pm
    $Self->{Translation}->{'No ConfigItemID or VersionID is given!'} = '';
    $Self->{Translation}->{'Can\'t show config item, no access rights given!'} = '';
    $Self->{Translation}->{'ConfigItemID %s not found in database!'} = '';
    $Self->{Translation}->{'VersionID %s not found in database!'} = '';
    $Self->{Translation}->{'ConfigItem'} = '';
    $Self->{Translation}->{'printed by %s at %s'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemSearch.pm
    $Self->{Translation}->{'Invalid ClassID!'} = '';
    $Self->{Translation}->{'No ClassID is given!'} = '';
    $Self->{Translation}->{'No access rights for this class given!'} = '';
    $Self->{Translation}->{'No Result!'} = '¡Sin resultados!';
    $Self->{Translation}->{'Config Item Search Results'} = '';

    # Perl Module: Kernel/Modules/AgentITSMConfigItemZoom.pm
    $Self->{Translation}->{'Can\'t show item, no access rights for ConfigItem are given!'} =
        '';
    $Self->{Translation}->{'The deployment state of this config item'} = 'El estado de implementación de este elemento de configuración';
    $Self->{Translation}->{'The incident state of this config item'} = 'El estado de este elemento de configuración';

    # Perl Module: Kernel/System/ImportExport/ObjectBackend/ITSMConfigItem.pm
    $Self->{Translation}->{'Maximum number of one element'} = 'Número máximo de un elemento ';
    $Self->{Translation}->{'Empty fields indicate that the current values are kept'} = 'Los campos vacíos indican que los valores actuales se mantienen';

    # Perl Module: var/packagesetup/ITSMConfigurationManagement.pm
    $Self->{Translation}->{'Model'} = '';
    $Self->{Translation}->{'Serial Number'} = '';
    $Self->{Translation}->{'CPU'} = '';
    $Self->{Translation}->{'Ram'} = '';
    $Self->{Translation}->{'Hard Disk'} = '';
    $Self->{Translation}->{'Capacity'} = '';
    $Self->{Translation}->{'Network Adapter'} = '';
    $Self->{Translation}->{'IP over DHCP'} = '';
    $Self->{Translation}->{'IP Address'} = '';
    $Self->{Translation}->{'Graphic Adapter'} = '';
    $Self->{Translation}->{'Other Equipment'} = '';
    $Self->{Translation}->{'Warranty Expiration Date'} = '';
    $Self->{Translation}->{'Install Date'} = '';
    $Self->{Translation}->{'Phone 1'} = '';
    $Self->{Translation}->{'Phone 2'} = '';
    $Self->{Translation}->{'E-Mail'} = '';
    $Self->{Translation}->{'Address'} = '';
    $Self->{Translation}->{'Network Address'} = '';
    $Self->{Translation}->{'Subnet Mask'} = '';
    $Self->{Translation}->{'Gateway'} = '';
    $Self->{Translation}->{'Licence Type'} = '';
    $Self->{Translation}->{'Licence Key'} = '';
    $Self->{Translation}->{'Quantity'} = '';
    $Self->{Translation}->{'Expiration Date'} = '';
    $Self->{Translation}->{'Media'} = '';

    # Database XML Definition: /devel/ITSMConfigurationManagement_5_0//ITSMConfigurationManagement.sopm
    $Self->{Translation}->{'Computer'} = 'Ordenador';
    $Self->{Translation}->{'Hardware'} = 'Hardware';
    $Self->{Translation}->{'Network'} = 'Red';
    $Self->{Translation}->{'Software'} = 'Software';
    $Self->{Translation}->{'Expired'} = 'Expirado';
    $Self->{Translation}->{'Maintenance'} = 'Mantenimiento';
    $Self->{Translation}->{'Pilot'} = 'Piloto';
    $Self->{Translation}->{'Planned'} = 'Planificado';
    $Self->{Translation}->{'Production'} = 'Producción';
    $Self->{Translation}->{'Repair'} = 'Reparación';
    $Self->{Translation}->{'Retired'} = 'Retirado';
    $Self->{Translation}->{'Review'} = 'Revisado';
    $Self->{Translation}->{'Test/QA'} = 'Prueba / Control de calidad';
    $Self->{Translation}->{'Laptop'} = 'Ordenador portátil';
    $Self->{Translation}->{'Desktop'} = 'Escritorio';
    $Self->{Translation}->{'PDA'} = 'Agenda Personal';
    $Self->{Translation}->{'Server'} = 'Servidor';
    $Self->{Translation}->{'Other'} = 'Otro';
    $Self->{Translation}->{'Monitor'} = 'Monitor';
    $Self->{Translation}->{'Printer'} = 'Impresora';
    $Self->{Translation}->{'Switch'} = 'Switch';
    $Self->{Translation}->{'Router'} = 'Enrutador';
    $Self->{Translation}->{'WLAN Access Point'} = 'Punto de Acceso WLAN';
    $Self->{Translation}->{'Security Device'} = 'Dispositivo de Seguridad';
    $Self->{Translation}->{'Backup Device'} = 'Dispositivo de Respaldo';
    $Self->{Translation}->{'Mouse'} = 'Ratón';
    $Self->{Translation}->{'Keyboard'} = 'Teclado';
    $Self->{Translation}->{'Camera'} = 'Cámara';
    $Self->{Translation}->{'Beamer'} = 'Proyector';
    $Self->{Translation}->{'Modem'} = 'Módem';
    $Self->{Translation}->{'PCMCIA Card'} = 'Tarjeta PCMCIA';
    $Self->{Translation}->{'USB Device'} = 'Dispositivo USB';
    $Self->{Translation}->{'Docking Station'} = 'Estación de acoplamiento';
    $Self->{Translation}->{'Scanner'} = 'Escáner';
    $Self->{Translation}->{'Building'} = 'Edificio';
    $Self->{Translation}->{'Floor'} = 'Piso';
    $Self->{Translation}->{'Room'} = 'Habitación';
    $Self->{Translation}->{'Rack'} = 'Rack';
    $Self->{Translation}->{'Workplace'} = 'Lugar de trabajo';
    $Self->{Translation}->{'Outlet'} = 'Outlet';
    $Self->{Translation}->{'IT Facility'} = 'Instalaciones de TI';
    $Self->{Translation}->{'LAN'} = 'LAN';
    $Self->{Translation}->{'WLAN'} = 'WLAN';
    $Self->{Translation}->{'Telco'} = 'Conferencia telefónica';
    $Self->{Translation}->{'GSM'} = 'GSM';
    $Self->{Translation}->{'Client Application'} = 'Aplicación Cliente';
    $Self->{Translation}->{'Middleware'} = 'Middleware';
    $Self->{Translation}->{'Server Application'} = 'Aplicación Servidor';
    $Self->{Translation}->{'Client OS'} = 'Sistema Operativo del Cliente';
    $Self->{Translation}->{'Server OS'} = 'Sistema operativo del Servidor';
    $Self->{Translation}->{'Admin Tool'} = 'Herramienta de Administración';
    $Self->{Translation}->{'User Tool'} = 'Herramienta de Usuario';
    $Self->{Translation}->{'Embedded'} = 'Embebido';
    $Self->{Translation}->{'Single Licence'} = 'Licencia Única';
    $Self->{Translation}->{'Per User'} = 'Por Usuario';
    $Self->{Translation}->{'Per Processor'} = 'Por Procesador';
    $Self->{Translation}->{'Per Server'} = 'Por Servidor';
    $Self->{Translation}->{'Per Node'} = 'Por Nodo';
    $Self->{Translation}->{'Volume Licence'} = 'Licencia por Volumen';
    $Self->{Translation}->{'Enterprise Licence'} = 'Licencia Corporativa';
    $Self->{Translation}->{'Developer Licence'} = 'Licencia de Desarrollador';
    $Self->{Translation}->{'Demo'} = 'Demostración';
    $Self->{Translation}->{'Time Restricted'} = 'Tiempo Restringido';
    $Self->{Translation}->{'Freeware'} = 'Freeware';
    $Self->{Translation}->{'Open Source'} = 'Código Abierto';
    $Self->{Translation}->{'Unlimited'} = 'Ilimitada';

    # SysConfig
    $Self->{Translation}->{'Admin.'} = 'Admin.';
    $Self->{Translation}->{'Check for a unique name only within the same ConfigItem class (\'class\') or globally (\'global\'), which means every existing ConfigItem is taken into account when looking for duplicates.'} =
        '';
    $Self->{Translation}->{'Config Items'} = '';
    $Self->{Translation}->{'Config item add.'} = '';
    $Self->{Translation}->{'Config item edit.'} = '';
    $Self->{Translation}->{'Config item event module that enables logging to history in the agent interface.'} =
        'Módulo de evento de elementos de configuración que habilita el acceso a la historia en la interfaz del agente.';
    $Self->{Translation}->{'Config item history.'} = '';
    $Self->{Translation}->{'Config item print.'} = '';
    $Self->{Translation}->{'Config item zoom.'} = '';
    $Self->{Translation}->{'ConfigItemNumber'} = '';
    $Self->{Translation}->{'Configuration Item Limit'} = 'Límite de Elementos de Configuración';
    $Self->{Translation}->{'Configuration Item limit per page'} = 'Límite por página de Elementos de Configuración';
    $Self->{Translation}->{'Configuration Management Database.'} = '';
    $Self->{Translation}->{'Configuration item bulk module.'} = '';
    $Self->{Translation}->{'Configuration item search backend router of the agent interface.'} =
        'Router backend de búsqueda de elementos de configuración de la interfaz del agente.';
    $Self->{Translation}->{'Create and manage the definitions for Configuration Items.'} = 'Crea y gestiona las definiciones de los elementos de configuración.';
    $Self->{Translation}->{'Define Actions where a settings button is available in the linked objects widget (LinkObject::ViewMode = "complex"). Please note that these Actions must have registered the following JS and CSS files: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js and Core.Agent.LinkObject.js.'} =
        'Definir acciones donde está disponible un botón de configuración en el widget de objetos vinculados (LinkObject::ViewMode = "complex"). Tenga en cuenta que estas acciones deben haber registrado los siguientes archivos JS y CSS: Core.AllocationList.css, Core.UI.AllocationList.js, Core.UI.Table.Sort.js, Core.Agent.TableFilters.js y Core.Agent.LinkObject.js.';
    $Self->{Translation}->{'Define the group with permissions.'} = 'Definir el grupo con permisos.';
    $Self->{Translation}->{'Defines Required permissions to create ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to delete ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to get ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to search ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines Required permissions to update ITSM configuration items using the Generic Interface.'} =
        '';
    $Self->{Translation}->{'Defines an overview module to show the small view of a configuration item list.'} =
        '';
    $Self->{Translation}->{'Defines regular expressions individually for each ConfigItem class to check the ConfigItem name and to show corresponding error messages.'} =
        '';
    $Self->{Translation}->{'Defines the default subobject of the class \'ITSMConfigItem\'.'} =
        'Define el subobjeto por default de la clase \'ITSMConfigItem\'.';
    $Self->{Translation}->{'Defines the number of rows for the CI definition editor in the admin interface.'} =
        '';
    $Self->{Translation}->{'Defines the order of incident states from high (e.g. cricital) to low (e.g. functional).'} =
        '';
    $Self->{Translation}->{'Defines the relevant deployment states where linked tickets can affect the status of a CI.'} =
        '';
    $Self->{Translation}->{'Defines the search limit for the AgentITSMConfigItem screen.'} =
        '';
    $Self->{Translation}->{'Defines the search limit for the AgentITSMConfigItemSearch screen.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the config item overview. This option has no effect on the position of the column. Note: Class column is always available if filter \'All\' is selected.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns in the config item search. This option has no effect on the position of the column.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the config item overview depending on the CI class. Each entry must be prefixed with the class name and double colons (i.e. Computer::). There are a few CI-Attributes that are common to all CIs (example for the class Computer: Computer::Name, Computer::CurDeplState, Computer::CreateTime). To show individual CI-Attributes as defined in the CI-Definition, the following scheme must be used (example for the class Computer): Computer::HardDisk::1, Computer::HardDisk::1::Capacity::1, Computer::HardDisk::2, Computer::HardDisk::2::Capacity::1. If there is no entry for a CI class, then the default columns are shown as defined in the setting ITSMConfigItem::Frontend::AgentITSMConfigItem###ShowColumns.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the config item search depending on the CI class. Each entry must be prefixed with the class name and double colons (i.e. Computer::). There are a few CI-Attributes that are common to all CIs (example for the class Computer: Computer::Name, Computer::CurDeplState, Computer::CreateTime). To show individual CI-Attributes as defined in the CI-Definition, the following scheme must be used (example for the class Computer): Computer::HardDisk::1, Computer::HardDisk::1::Capacity::1, Computer::HardDisk::2, Computer::HardDisk::2::Capacity::1. If there is no entry for a CI class, then the default columns are shown as defined in the setting ITSMConfigItem::Frontend::AgentITSMConfigItem###ShowColumns.'} =
        '';
    $Self->{Translation}->{'Defines the shown columns of CIs in the link table complex view, depending on the CI class. Each entry must be prefixed with the class name and double colons (i.e. Computer::). There are a few CI-Attributes that common to all CIs (example for the class Computer: Computer::Name, Computer::CurDeplState, Computer::CreateTime). To show individual CI-Attributes as defined in the CI-Definition, the following scheme must be used (example for the class Computer): Computer::HardDisk::1, Computer::HardDisk::1::Capacity::1, Computer::HardDisk::2, Computer::HardDisk::2::Capacity::1. If there is no entry for a CI class, then the default columns are shown.'} =
        '';
    $Self->{Translation}->{'Defines which type of link (named from the ticket perspective) can affect the status of a linked CI.'} =
        '';
    $Self->{Translation}->{'Defines which type of ticket can affect the status of a linked CI.'} =
        '';
    $Self->{Translation}->{'Deployment State Color'} = '';
    $Self->{Translation}->{'Deployment State Color.'} = '';
    $Self->{Translation}->{'Deployment State Type.'} = '';
    $Self->{Translation}->{'Disabled'} = 'Deshabilitado';
    $Self->{Translation}->{'Enabled'} = 'Habilitado';
    $Self->{Translation}->{'Enables configuration item bulk action feature for the agent frontend to work on more than one configuration item at a time.'} =
        '';
    $Self->{Translation}->{'Enables configuration item bulk action feature only for the listed groups.'} =
        '';
    $Self->{Translation}->{'Enables/disables the functionality to check ConfigItems for unique names. Before enabling this option you should check your system for already existing config items with duplicate names. You can do this with the script bin/otrs.ITSMConfigItemListDuplicates.pl.'} =
        '';
    $Self->{Translation}->{'Event module to set configitem-status on ticket-configitem-link.'} =
        '';
    $Self->{Translation}->{'ITSM config item overview.'} = '';
    $Self->{Translation}->{'Module to check the group responsible for a class.'} = 'Módulo para verificar el grupo responsable de una clase.';
    $Self->{Translation}->{'Module to check the group responsible for a configuration item.'} =
        'Módulo para verificar el grupo responsable de un elemento de configuración.';
    $Self->{Translation}->{'Module to generate ITSM config item statistics.'} = 'Módulo para generar estadísticas de los elementos de configuración ITSM.';
    $Self->{Translation}->{'Object backend module registration for the import/export module.'} =
        'Registro del módulo de objeto backend para el módulo de importación/exportación.';
    $Self->{Translation}->{'Overview.'} = 'Vista general.';
    $Self->{Translation}->{'Parameters for the deployment states color in the preferences view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Parameters for the deployment states in the preferences view of the agent interface.'} =
        'Parámetros para los estados de implementación en la vista de preferencias de la interfaz del agente.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parámetros para los permisos de ejemplo de los atributos del catálogo general.';
    $Self->{Translation}->{'Parameters for the pages (in which the configuration items are shown).'} =
        'Parámetros para las páginas (donde se muestran los elementos de configuración)';
    $Self->{Translation}->{'Required permissions to use the ITSM configuration item screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de los elementos de configuración en la interfaz del agente.';
    $Self->{Translation}->{'Required permissions to use the ITSM configuration item search screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de búsqueda de elementos de configuración en la interfaz del agente.';
    $Self->{Translation}->{'Required permissions to use the ITSM configuration item zoom screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de detalle de los elementos de configuración en la interfaz del agente.';
    $Self->{Translation}->{'Required permissions to use the add ITSM configuration item screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana para agregar elementos de configuración en la interfaz del agente.';
    $Self->{Translation}->{'Required permissions to use the edit ITSM configuration item screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de edición de los elementos de configuración en la interfaz del agente.';
    $Self->{Translation}->{'Required permissions to use the history ITSM configuration item screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de historial de los elementos de configuración en la interfaz del agente.';
    $Self->{Translation}->{'Required permissions to use the print ITSM configuration item screen in the agent interface.'} =
        'Permisos necesarios para usar la ventana de impresión de elementos de configuración en la interfaz del agente.';
    $Self->{Translation}->{'Required privileges to delete config items.'} = 'Privilegios necesarios para eliminar los elementos de configuración.';
    $Self->{Translation}->{'Search config items.'} = '';
    $Self->{Translation}->{'Selects the configuration item number generator module. "AutoIncrement" increments the configuration item number, the SystemID, the ConfigItemClassID and the counter are used. The format is "SystemID.ConfigItemClassID.Counter", e.g. 1205000004, 1205000005.'} =
        'Selecciona el módulo generador de números de los elementos de configuración. "AutoIncrementar" incrementa el número del elemento de configuración; el SystemID, el ConfigItemClassID y el contador son usados. El formato es "SystemID.ConfigItemClassID.Counter", por ejemplo: 1205000004, 1205000005.';
    $Self->{Translation}->{'Set the incident state of a CI automatically when a Ticket is Linked to a CI.'} =
        '';
    $Self->{Translation}->{'Sets the deployment state in the configuration item bulk screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Sets the incident state in the configuration item bulk screen of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu that allows linking a configuration item with another object in the config item zoom view of the agent interface.'} =
        'Muestra un link en el menú para vincular un elemento de configuración con otro objeto, en la vista detallada de dicho elemento de configuración de la interfaz del agente.';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a configuration item in the configuration item overview of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to access the history of a configuration item in the its zoom view of the agent interface.'} =
        'Muestra un link en el menú para acceder a la historia de un elemento de configuracion en su vista detallada, en la interfaz del agente.';
    $Self->{Translation}->{'Shows a link in the menu to delete a configuration item in its zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to duplicate a configuration item in the configuration item overview of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to duplicate a configuration item in the its zoom view of the agent interface.'} =
        'Muestra un link en el menú para duplicar un elemento de configuracion en su vista detallada, en la interfaz del agente.';
    $Self->{Translation}->{'Shows a link in the menu to edit a configuration item in the its zoom view of the agent interface.'} =
        'Muestra un link en el menú para editar un elemento de configuracion en su vista detallada, en la interfaz del agente.';
    $Self->{Translation}->{'Shows a link in the menu to go back in the configuration item zoom view of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows a link in the menu to print a configuration item in the its zoom view of the agent interface.'} =
        'Muestra un link en el menú para imprimir un elemento de configuracion en su vista detallada, en la interfaz del agente.';
    $Self->{Translation}->{'Shows a link in the menu to zoom into a configuration item in the configuration item overview of the agent interface.'} =
        '';
    $Self->{Translation}->{'Shows the config item history (reverse ordered) in the agent interface.'} =
        'Muestra la historia de los elementos de configuración (ordenados inversamente) en la interfaz del agente.';
    $Self->{Translation}->{'The identifier for a configuration item, e.g. ConfigItem#, MyConfigItem#. The default is ConfigItem#.'} =
        '';
    $Self->{Translation}->{'class'} = 'clase';
    $Self->{Translation}->{'global'} = 'global';

}

1;
