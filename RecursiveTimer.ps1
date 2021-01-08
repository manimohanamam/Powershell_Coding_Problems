<#
Author: Mani Mohan Amam
Objective: Write a Powershell recursive function to countdown n seconds

Sample Usage: RecurssiveTimer -time 10
#>

function RecurssiveTimer([int]$time){
    if ($time -eq 0)
    {
        #write-host "$time*"
        return
    }
    write-host "$time*"
    $time--
    Start-sleep -s 1
    RecurssiveTimer -time $time
}

RecurssiveTimer -time 10