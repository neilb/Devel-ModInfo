# MODINFO module Devel::ModInfo::ParamArray
package Devel::ModInfo::ParamArray;

# MODINFO dependency module strict
use strict;
# MODINFO dependency module vars
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

# MODINFO dependency module Exporter
require Exporter;

# MODINFO parent_class Devel::ModInfo::Parameter
@ISA = qw(Exporter AutoLoader Devel::ModInfo::Parameter);
@EXPORT = qw();
# MODINFO version 0.01
$VERSION = '0.01';


# Preloaded methods go here.
# MODINFO constructor new
sub new{
	my ($class, %attribs) = @_;
	#Call superclass
	my $self  = $class->SUPER::new(%attribs);

	#Set up local properties	
	return bless $self => $class;
}

1;

__END__


=head1 Devel::ModInfo::ParamArray

Devel::ModInfo::ParamArray - Defines a particular Perl module and contains collections of 
descriptors for that module

=head1 SYNOPSIS

Not meant to be used outside the ModInfo system.
  
=head1 DESCRIPTION

Devel::ModInfo::ParamArray provides the name and description of an array of parameters 
that can be provided to a Perl function.  A ParamArray is an array of undefined length, 
which means that the author has no idea how many parameters will really be provided to 
the function.  It should be used only when the function itself expects a variable 
number of parameters.  When the function anticipates a specific order of parameters, they 
should be explicitly defined using ParameterScalars instead.

=head1 AUTHOR

jtillman@bigfoot.com
tcushard@bigfoot.com

=head1 SEE ALSO

Devel::ModInfo::Parameter

Devel::ModInfo::Function

perl(1).

=cut