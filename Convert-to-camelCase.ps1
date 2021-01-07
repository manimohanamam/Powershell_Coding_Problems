Function Convert-to-cameCase()
{
    param($string)
    $string = (Get-Culture).TextInfo.ToTitleCase($string)
    $str_array = $string.Split(" ")
    for($i = 0; $i -lt $string.Length; $i++)
    {
        if ($i -eq 0)
        {
            $cc_word = $str_array[$i].tolower()
        }
        else
        {
            $cc_word = $cc_word + $str_array[$i]
        }   
    }
    return $cc_word
}

Convert-to-cameCase -string "madhura mani mohan amam"