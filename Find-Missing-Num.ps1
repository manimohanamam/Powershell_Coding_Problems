﻿<#
Author: Mani Mohan Amam
Objective: Write a PowerShell function to find the missing number from an Array

$InputArray = @(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,
               26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,
               48,49,50,51,52,53,54,55,56,57,59,60,61,62,63,64,65,66,67,68,69,
               70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,
               92,93,94,95,96,97,98,99,100)
Sample Usage: Find-MissingNum -InputArray $InputArray
#>

Function Find-MissingNum()
{
    param($InputArray)
    
    $Sum_of_array = 0

    $array_len = $InputArray.Length

    $total = ($array_len + 1)*($array_len + 2)/2

    $InputArray | % { $Sum_of_array += $_ }

    $missing_num = $total - $Sum_of_array

    Write-Host "Missing Number: $missing_num"
}

$InputArray = @(1,2,3,4,5,6,8,9,10)
Find-MissingNum -InputArray $InputArray