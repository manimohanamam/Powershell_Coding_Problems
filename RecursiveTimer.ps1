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