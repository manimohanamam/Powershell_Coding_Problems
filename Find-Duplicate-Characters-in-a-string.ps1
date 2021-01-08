<#
Author: Mani Mohan Amam
Objective: Write a PowerShell function to find the duplicate characters from a string and print them to output

Sample Usage: Find-DuplicateChars -string "test program to find duplicate characters"
#>

Function Find-DuplicateChars()
{
    param($string)
    $dup_chars = @()

    $str_array = $string.ToCharArray()

    for ($i = 0; $i -lt $string.Length; $i++)
    {
        $counter = 0
        for ($j = $i + 1; $j -lt $string.Length; $j++)
        {
            if ($string[$i] -eq $string[$j])
            {
                if ($i -eq 0 -and $counter -eq 0)
                {
                    $counter = 1
                    $dup_chars += $string[$i]
                }
                else
                {
                    if ($string[$i] -notin $dup_chars -and $string[$i] -ne " ")
                    {
                        $dup_chars += $string[$i]
                    }
                }
            }
        }
    }

    Write-Host "Duplicate Characters in $string : $dup_chars"
}

Find-DuplicateChars -string "test program to find duplicate characters"