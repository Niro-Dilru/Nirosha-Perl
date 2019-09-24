use Data::Dumper;

#Create a complex data structure : a hash of arrays
$c = { 'even'=> [2, 4,], 'odd' => [1, 3,]};

#create sample object
$obj = bless {'foo' => 'bar'}, 'Example';

$msg = Dumper ($c, $obj);
print $msg;  
