# MODINFO module Devel::ModInfo::Constructor
package Devel::ModInfo::Constructor;

# MODINFO dependency module strict
use strict;
# MODINFO dependency module vars
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

# MODINFO dependency module Exporter
require Exporter;
# MODINFO dependency module Devel::ModInfo::Function
require Devel::ModInfo::Function;
# MODINFO parent_class Devel::ModInfo::Function
@ISA = qw(Exporter AutoLoader Devel::ModInfo::Function);
@EXPORT = qw();
# MODINFO version 0.01
$VERSION = '0.01';


# Preloaded methods go here.
# MODINFO constructor new
sub new{
	my ($class, %attribs) = @_;
	my $self  = $class->SUPER::new(%attribs);
	return bless $self => $class;
}

1;

__END__


=head1 Devel::ModInfo::Constructor

Devel::ModInfo::Constructor - Defines a function in an object-oriented Perl module that 
is expected to create and return an instance of the module class.

=head1 SYNOPSIS

Not meant to be used outside the ModInfo system.
  
=head1 DESCRIPTION

Devel::ModInfo::Constructor is a specialized version of Devel::ModInfo::Function which 
is expected to return an instance of the module class in which it is defined.  The 
presence of a constructor is one of the things that distinguishes an object-oriented 
module from a non-oo module.

=head1 AUTHOR

jtillman@bigfoot.com

tcushard@bigfoot.com

=head1 SEE ALSO

Devel::ModInfo::Tutorial
Devel::ModInfo::Function

perl(1).