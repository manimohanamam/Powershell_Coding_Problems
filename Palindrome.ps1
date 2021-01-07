$string = "MALAYALAM"
$strArray = $string.ToCharArray()

for($i = 0; $i -lt $strArray.Length; $i++)
{
    for($j = $strArray.Length-1; $j -ge 0; $j--)
    {
        If($strArray[$i] -eq $strArray[$j])
        {
            $palindrome = $true
        }
        else
        {
            $palindrome = $false
        }
    }
}

If ($palindrome)
{
    Write-Host "$string is a palindrome"
}
else
{
    Write-Host "$string is not a palindrome"
}