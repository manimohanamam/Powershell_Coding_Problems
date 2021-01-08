<#
Author: Mani Mohan Amam
Objective: Write a PowerShell function to check if the given 2 input strings are Anagrams of each other

Sample Usage: Check-Anagram -string1 "LISTEN" -string2 "SILENT"
#>
Function Check-Anagram()
{
    param($string1, $string2)

    $string1 = $string1.ToLower()
    $string2 = $string2.ToLower()

    $str1_array = $string1.ToCharArray()
    $str2_array = $string2.ToCharArray()
    
    If ($string1.Length -eq $string2.Length)
    {
        $sorted_str1_array = $str1_array | Sort-Object
        $sorted_str2_array = $str2_array | Sort-Object

        $sorted_str1 = -join($sorted_str1_array)
        $sorted_str2 = -join($sorted_str2_array)
    
        If ($sorted_str1 -eq $sorted_str2)
        {
            Write-Host "Given Strings are anagrams" -ForegroundColor Green
        }
        else
        {
            Write-Host "Given Strings are not anagrams" -ForegroundColor Red
            Write-Host "Sorted String1: $sorted_str1 | Sorted String2: $sorted_str2" -ForegroundColor Red
        }
    }
    else
    {
        Write-Host "Given Strings are not anagrams, they are of different string lengths" -ForegroundColor Red
    }
}

Check-Anagram -string1 "LISTEN" -string2 "SILENT"