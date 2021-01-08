<#
Author: Mani Mohan Amam
Objective: Write a PowerShell function to check if the given input strings are rotations of eachother

Example: "ABCD" is the first string and "CDAB" is the second string
         Function checks if the second string is the rotation of first string

Sample Usage: Check-RotationStrings -string1 "ABCD" -string2 "CDAB"
#>

Function Check-RotationStrings()
{
    param($string1, $string2)

    $tempstring = $string1 + $string1

    If ($tempstring -match $string2)
    {
        Write-Host "$string1 & $string2 are rotations of eachother"
    }
    else
    {
        Write-Host "$string1 & $string2 are not rotations of eachother"
    }
}

Check-RotationStrings -string1 "ABCD" -string2 "CDAB"