function Search($config, $search, $category)
{    
     @("Computer1","Computer2","Computer3") | Select-Object @{
        Name="Id";
        Expression = {
            $_
        }
    },
    @{
        Name="Name";
        Expression = {
            $_
        }
    }
}

function Validate($config, $search) 
{
    return @()
}

function GetCategories($config) 
{
    return @()
}

function GetDefault($config)
{    
     Search -Config $config
}