package Product;

use strict;
use warnings;

#init product with serial , name and price
sub new{
		my ($class, $args) = @_;
		my $self = bless { serial => $args ->{serial},
							name => $args -> {name},
							model => $args -> {model},
							price => $args ->{price}
							}, $class;
}

# get name of the product
sub get_name{
			my $self = shift;
			return $self ->{name};
}

#set new name for the product
sub set_name{
			my ($self, $new_name)= @_;
			$self -> {name} = $new_name;
}

#get price of the product
sub get_price{
			my $self = shift;
			return $self->{price};
}

#set price for the product
sub set_price{
			my ($self, $new_price)=@_;
			$self->{price} = $new_price;
}

#get serial
sub get_serial{
			my $self = shift;
			return $self->{serial}
}

#set serial
sub set_serial{
			my ($self, $new_serial) = @_;
			$self->{serial} = $new_serial;
}

#get model
sub get_model{
			my $self = shift;
			return $self->{model}
}

#set model
sub set_model{
			my ($self, $new_model) = @_;
			$self->{model} = $new_model;
}

#return phone name with model
sub get_name_model{
			my $self = shift;
			return $self->{name}." ".$self->{model}
}

#return formatted string of the product
sub to_string{
			my $self = shift;
			return "Serial: $self->{serial}\nName: $self->{name}\nModel: $self->{model}\nprice: $self->{price}USD\n"
}
1;
