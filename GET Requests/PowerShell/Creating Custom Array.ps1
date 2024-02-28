$array = @() #initialize the variable as an array

foreach ($item in $variable)
{
  $object = "" #This is your PSCustom Object that you already know how to create.

  $array += $object #This action append the $object variable to the bottom of the $array variable. 
}
