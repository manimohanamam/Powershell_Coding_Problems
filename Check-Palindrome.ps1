<#
Author: Mani Mohan Amam
Objective: Write a PowerShell function to check if the given string is a Palindrome

Sample Usage: Check-Palindrome -string "LIRIL"
#>
Function Check-Palindrome()
{

    param($string)
    
    $str_array = $string.ToCharArray()
    
    [array]::Reverse($str_array)
    
    $rev_string = -join($str_array)
    
    if ($string -eq $rev_string)
    {
        Write-Host "$string is a palindrome" -ForegroundColor Green
    }
    else
    {
        Write-Host "$string is not a palindrome" -ForegroundColor Red
    }
}

Check-Palindrome -string "LIRIL"