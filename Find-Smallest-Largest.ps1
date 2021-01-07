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
    
    Write-Host "Smallest: $smallest at position $s_index"
    Write-Host "Largest: $largest at position $l_index"
}