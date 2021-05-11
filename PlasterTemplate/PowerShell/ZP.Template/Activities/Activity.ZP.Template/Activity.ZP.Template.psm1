function Get-ZPResource {
    Param(
        [Parameter(Mandatory=$false)]
        $Identity,

        [Parameter(Mandatory = $false, ParameterSetName = "Hidden")]
        [Hashtable]$Parameters    
    )

    $output = Get-ZPCommonFunction
    @{
        ZPActivityStatus = "Successfully retrieved data for $($Identity)";
        Test = $output;
        Message = "Hello World"
    }
}

function Set-ZPResource {
    Param(
        [Parameter(Mandatory=$false)]
        $Identity,

        [Parameter(Mandatory = $false, ParameterSetName = "Hidden")]
        [Hashtable]$Parameters    
    )
}

function New-ZPResource {
    Param(
        [Parameter(Mandatory=$false)]
        $Identity,

        [Parameter(Mandatory = $false, ParameterSetName = "Hidden")]
        [Hashtable]$Parameters    
    )
}

function Remove-ZPResource {
    Param(
        [Parameter(Mandatory=$false)]
        $Identity,

        [Parameter(Mandatory = $false, ParameterSetName = "Hidden")]
        [Hashtable]$Parameters    
    )
}