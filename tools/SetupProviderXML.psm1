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
        [string]$SourcePath,

        [hashtable]$Config
    )

    Write-Host "This should create $($PackageName).providertype.provider.xml for assemblytype $($AssemblyType) and inventory providers from $($SourcePath)"
}