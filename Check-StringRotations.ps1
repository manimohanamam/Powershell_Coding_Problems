Function Check-RotationStrings()
{
    param($string1, $string2)

    $tempstring = $string1 + $string1

    If ($tempstring -match $string2)
    {
        Write-Host "Strings are rotations of eachother"
    }
    else
    {
        Write-Host "Strings are not rotations of eachother"
    }
}