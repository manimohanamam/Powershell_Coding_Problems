<#
Author: Mani Mohan Amam
Objective: Write a PowerShell function to find the smallest and largest numbers in an array

Sample Usage: Find-Smallest-Largest -array @(1,8,3,7,6,5,4,2,9,10)
#>

Function Find-Smallest-Largest()
{
    param($array)
    
    $smallest = $array[0]
    $largest = $array[0]
    $s_index = 0
    $l_index = 0
    
    for($i = 0; $i -lt $array.Length; $i++)
    {
        if($array[$i] -lt $smallest)
        {
            $smallest = $array[$i]
            $s_index = $i
        }
        if($array[$i] -gt $largest)
        {
            $largest = $array[$i]
            $l_index = $i
        }
    }
    
    Write-Host "Smallest: $smallest at index $s_index"
    Write-Host "Largest: $largest at index $l_index"
}

Find-Smallest-Largest -array @(9,8,3,7,10,5,4,2,1,6)