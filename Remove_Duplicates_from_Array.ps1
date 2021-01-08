<#
Author: Mani Mohan Amam
Objective: Write a Powershell function to remove duplicates from an array and print clean array to output

Sample Usage: Remove-DupsFromArray -Array @(0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5, 6, 7, 9, 9, 8)
#>
Function Remove-DupsFromArray()
{
    param($Array)
    $newArray = @()

    for($i = 0; $i -lt $Array.Length; $i++)
    {
        $counter = 0;
        for($j = 0; $j -lt $newArray.Length; $j++)
        {
            if ($Array[$i] -eq $newArray[$j])
            {
                $counter = $counter + 1
            }
        }
        if ($counter -eq 0)
        {
            $newArray += $Array[$i]
        }
    }
    $newArray = $newArray | Sort-Object
    Write-Host "Array after removing duplicates: $newArray"
}

Remove-DupsFromArray -Array @(0, 0, 0, 0, 0, 1, 8, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5, 7, 9, 9, 2,2)
