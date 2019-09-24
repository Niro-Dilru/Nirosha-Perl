package Calculator; 

  
# Defining sub-routine for Addition 
sub addition 
{ 
    # Initializing Variables a & b 
    $a = $_[0]; 
    $b = $_[1]; 
      
    # Performing the operation 
    $a = $a + $b; 
      
    # Function to print the Sum 
    print "\n***Addition is $a"; 
} 
  
# Defining sub-routine for Subtraction 
sub subtraction 
{ 
    # Initializing Variables a & b 
    $a = $_[0]; 
    $b = $_[1]; 
      
    # Performing the operation 
    $a = $a - $b; 
      
    # Function to print the difference 
    print "\n***Subtraction is $a"; 

} 

sub divide 
{
	# Initializing Variables a & b
	$a = $_[0]; 
    $b = $_[1]; 
	
	# Performing the operation
	$a = $a/$b;
	
	# Function to print the results 
    print "\n***Divide is $a";
}
# write new functions for divide, multiply, into the power of, round to closest 10th
1; #end the PM with success. default is failed
