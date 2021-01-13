<# 

Objective: Write a Function to rotate the given Array with given no.of rotations
Using ArrayLists

Input = @(1,2,3,4,5) with no.of.rotations 
Output = 5,1,2,3,4


#>

Function Rotate-Array()
{
    param([System.Collections.ArrayList]$input_array, [int]$no_of_rotations)

    #$input_array

    for($i = 0; $i -lt $no_of_rotations; $i++)
    {
        
        $len_array = $input_array.Count

        $array_element_to_be_rotated = $input_array[$len_array - 1]

        $input_array.Remove($array_element_to_be_rotated) | Out-Null
        $input_array.Insert(0,$array_element_to_be_rotated) | Out-Null
    }
    return $input_array
}

$array = @(1,2,3,4,5)
Rotate-Array -input_array @(1,2,3,4,5) -no_of_rotations 5
