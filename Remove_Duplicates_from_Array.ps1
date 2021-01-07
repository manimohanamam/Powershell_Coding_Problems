$Array = @(0,0,0,0,0,1,2,3,4,5,6,7,1,2,3,4,5,6,7,9,9,8)
$newArray = @()

    for($i = 0; $i -lt $Array.Length; $i++)
    {
        $counter = 0;
        for($j = 0; $j -lt $newArray.Length; $j++)
        {
            if($Array[$i] -eq $newArray[$j])
            {
                $counter = $counter + 1
            }
        }
        if ($counter -eq 0)
        {
            $newArray += $Array[$i]
        }
    }

$newArray | Sort-Object