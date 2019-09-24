if (connect() -eq 0)
{
proceed;

{ else
{ retry ;
}

sub connect(){
try{
connect to server;
$error = 0
} catch
$ error = 1
}
return $error;
}

# this is only how to do try catch , not the full code
