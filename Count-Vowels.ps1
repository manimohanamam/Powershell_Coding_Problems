Function Count-Vowels()
{
    param($string)
    $vowel_counter = 0
    $constant_counter = 0
    
    $vowels = @('a','e','i','o','u')
    
    $string = $string.Replace(" ", "")
    $str_array = $string.ToCharArray()
    
    for ($i=0; $i -lt $str_array.Length; $i++)
    {
        If($vowels -contains $str_array[$i])
        {
            $vowel_counter = $vowel_counter + 1
        }
        else
        {
            $constant_counter = $constant_counter + 1
        }
    }
    
    Write-Host "No.Of Vowels and Constants in the given words are $vowel_counter & $constant_counter" -ForegroundColor Green
}