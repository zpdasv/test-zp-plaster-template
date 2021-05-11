# test-zp-plaster-template

This is a plaster template that may be used to setup a new Zervicepoint plugin base.

## Requirements

This requires the PowerShell module [Plaster](https://github.com/PowerShellOrg/Plaster).

*What is plaster?*

Plaster is a template-based file and project generator written in PowerShell. Its purpose is to streamline the creation of PowerShell module projects, Pester tests, DSC configurations, and more. File generation is performed using crafted templates which allow the user to fill in details and choose from options to get their desired output.

*This example assume you run the following on the ZP Worker*

```powershell
Find-Module -Name Plaster | Install-Module
```

```powershell
Import-Module -Name Plaster
```

```powershell
mkdir C:\temp
cd C:\temp
git clone https://github.com/zpdasv/test-zp-plaster-template.git
```

```powershell
Invoke-Plaster -TemplatePath C:\temp\test-zp-plaster-template\PlasterTemplate\PowerShell -DestinationPath "C:\Program Files\Zipper\Zervicepoint\Provider extensions\"
```

# How to make plugin available in Zervicepoint?

To do this we must setup a provider.xml file that will be read by the ProvisioningSystem and ProvisioningSystemInventory services.

You will need to create a plugin.<*providertype*>.provider.xml in either C:\Program Files\Zipper\Zervicepoint\ProvisioningSystem\ or ..\Zipper\Zervicepoint\ClientWebService\

```powershell
Import-Module C:\temp\test-zp-plaster-template\tools\SetupProviderXML.psm1

New-ZPProviderXML -PackageName "Zervicepoint" -ProviderType Activity -AssemblyType PowerShell -SourcePath "C:\Plugin\MyPlugin\Activities"
# Creates Zervicepoint.provisioningsystem.provider.xml in C:\Program Files\Zipper\Zervicepoint\ProvisioningSystem\ and will inventory PowerShell providers from C:\Plugin\MyPlugin\Activities

New-ZPProviderXML -PackageName "Zervicepoint" -ProviderType DataSource -AssemblyType PowerShell -SourcePath "C:\Plugin\MyPlugin\Data sources"
# Creates Zervicepoint.provisioningsystem.provider.xml in C:\Program Files\Zipper\Zervicepoint\ClientWebService\ and will inventory PowerShell providers from C:\Plugin\MyPlugin\Data sources
```

```powershell
Restart-Service -Name ProvisioningSystem,ProvisioningSystemInventory
```

## Quickly create new providers using snippets

