<#
Author: Mani Mohan Amam
Objective: Write a powershell function to check if the given string is a Palindrome
           without using array reverse function

Sample Usage: Check-Palindrome1 -string "LIRIL"
#>

Function Check-Palindrome1()
{
    param ($string)
    $strArray = $string.ToCharArray()

    for($i = 0; $i -lt $strArray.Length; $i++)
    {
        for($j = $strArray.Length - 1; $j -ge 0; $j--)
        {
            If ($strArray[$i] -eq $strArray[$j])
            {
                $palindrome = $true
            }
            else
            {
                $palindrome = $false
            }
        }
    }

    If ($palindrome)
    {
        Write-Host "$string is a palindrome"
    }
    else
    {
        Write-Host "$string is not a palindrome"
    }
}

Check-Palindrome1 -string "MALAYALAM"