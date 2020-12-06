function getFirstRecurringChar {
    [CmdletBinding()]
    param (
    [string]$teststring
    )
    $temp = @{} #Temporary Hashtable to store each unique element
    $testArray = $teststring.ToCharArray() #Converting the input string to an array of characters

    #Iterating on the array and  checking if element read already exists in Hashtable
    foreach ($char in $testArray) {
        if($char -in $temp.Keys) {
            $char
            break
        }
        else {
            $temp[$char] = $null
        }
    }
}

#Calling Function with the required Parameters
getFirstRecurringChar("abcdedcba")