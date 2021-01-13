<# Shift the Array on given input as no.of rotations
Output = Array

Input = @(1,2,3,4,5)

5,1,2,3,4

4,5,1,2,3

1) record input - Array, rotations
2) Iterate the array 

#>

Function Rotate-Array()
{
    param([array]$input_array, [int]$no_of_rotations)

    for($i = 0; $i -lt $no_of_rotations; $i++)
    {
        
        $len_array = $input_array.Length

        $array_element_to_be_rotated = $input_array[$input_array.Length-1]

        $Output_array = @()
        $Output_array += $array_element_to_be_rotated

        for($j = 0; $j -lt $input_array.Length-1; $j++)
        {
            if($input_array[$j] -ne $Output_array[$j])
            {
                $Output_array += $input_array[$j]
            }
        }

        $input_array = $Output_array
    }
    Write-Host "$Output_array"
    #return $Output_array
}

Rotate-Array -input_array @(1,2,3,4,5) -no_of_rotations 4