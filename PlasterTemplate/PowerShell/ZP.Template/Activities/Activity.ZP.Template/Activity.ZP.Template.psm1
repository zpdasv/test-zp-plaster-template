function Get-ZPTemplate {
    Param($Identity)

    $output = Get-ZPCommonFunction
    @{
        ZPActivityStatus = "Successfully retrieved data for $($Identity)";
        Test = $output;
        Message = "Hello World"
    }
}


# Get Example
# Set Example
# New Example
# Remove Example
# Add Example
# All in all - CRUD
# Split(";",",")/trim example - AddGroupMember
#