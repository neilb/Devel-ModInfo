# MODINFO module Devel::ModInfo::Function
package Devel::ModInfo::Function;

# MODINFO dependency module strict
use strict;
# MODINFO dependency module vars
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

# MODINFO dependency module Exporter
require Exporter;
# MODINFO dependency module Devel::ModInfo::Feature
require Devel::ModInfo::Feature;
# MODINFO parent_class Devel::ModInfo::Feature
@ISA = qw(Exporter AutoLoader Devel::ModInfo::Feature);
@EXPORT = qw();
# MODINFO version 0.01
$VERSION = '0.01';


# Preloaded methods go here.
# MODINFO constructor new
# MODINFO paramkey attribs  Attributes for the new object
# MODINFO key parameters ARRAYREF  Array ref of parameter objects for this function
# MODINFO key data_type  STRING    Data type this function returns
sub new{
	my ($class, %attribs) = @_;
	my $self  = $class->SUPER::new(%attribs);

	#Set up local properties	
	$self->{parameters} = $attribs{parameters};
	$self->{data_type} = $attribs{data_type};
	
	return bless $self => $class;
}

# MODINFO function parameters  The array of parameters that can be provided for this function
# MODINFO retval STRING
sub parameters {$_[0]->{parameters}}

# MODINFO function data_type  The data type returned by this function
# MODINFO retval STRING
sub data_type {$_[0]->{data_type}}

1;

__END__


=head1 Devel::ModInfo::Function

Devel::ModInfo::Function - Defines a non-object-oriented function that can be accessed in 
a Perl module

=head1 SYNOPSIS

Not meant to be used outside the ModInfo system.
  
=head1 DESCRIPTION

Devel::ModInfo::Function provides the name, description, and parameters for a function in 
a Perl module.  It is not meant to model object-oriented functions (also known as 
"methods"), which are instead handled by ModInfo::Method.

=head1 AUTHOR

jtillman@bigfoot.com
tcushard@bigfoot.com

=head1 SEE ALSO

Devel::ModInfo::Tutorial

Devel::ModInfo::Method

Devel::ModInfo::Parameter

Devel::ModInfo::ParamHash

Devel::ModInfo::ParamArray

perl(1).

=cut