<#
Author: Mani Mohan Amam
Objective: Write a Powershell function to reverse the words from a given string and
           print the sentense with reverse words to output

Sample Usage: Reverse-Words -string "Sample Program to reverse the words in a sentense"
#>

Function Reverse-Words()
{
    param ($string)
    $str_array_rev = @()
    
    $str_array = $string.split(" ")
    
    foreach($word in $str_array)
    {
        $rev_word = ""
        $char_array_rev = @()
        $char_array = @()
    
        $char_array = $word.toChararray()
        for($i = $char_array.length-1; $i -ge 0; $i--)
        {
            $char_array_rev += $char_array[$i]
        }
        $rev_word = -join($char_array_rev)
        $str_array_rev += $rev_word
    }
    
    return $str_array_rev -join " "
}

Reverse-Words -string "Sample Program to reverse the words in a sentense"