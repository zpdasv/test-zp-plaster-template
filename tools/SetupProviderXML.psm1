function New-ZPProviderXML {
    Param (
        [Parameter(Mandatory=$true)]
        [string]$PackageName,

        [Parameter(Mandatory=$true)]
        [ValidateSet("Activity","Datasource")]
        [string]$ProviderType,

        [ValidateSet("PowerShell","DotNet")]
        [string]$AssemblyType = "PowerShell",

        [Parameter(Mandatory=$true)]
        [string]$SourcePath
    )

    Write-Host "This should create $($PackageName).providertype.provider.xml for assemblytype $($AssembltyType) and inventory providers from $($SourcePath)"
}