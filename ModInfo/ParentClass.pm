# MODINFO module Devel::ModInfo::ParentClass
package Devel::ModInfo::ParentClass;

# MODINFO dependency module strict
use strict;
# MODINFO dependency module vars
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

# MODINFO dependency module Exporter
require Exporter;

# MODINFO parent_class AutoLoader
@ISA = qw(Exporter AutoLoader);
@EXPORT = qw();
# MODINFO version 0.01
$VERSION = '0.01';


# Preloaded methods go here.
# MODINFO constructor new
sub new{
	my ($class, %attribs) = @_;
	my $self = {
		name => $attribs{name},
	};
	return bless $self => $class;
}

# MODINFO function name
# MODINFO retval STRING
sub name{$_[0]->{name}}

1;

__END__


=head1 Devel::ModInfo::ParentClass

Devel::ModInfo::ParentClass - Defines a module from which the current module 
inherits (i.e., defines a SUPERCLASS)

=head1 SYNOPSIS

Not meant to be used outside the ModInfo system.
  
=head1 DESCRIPTION

Devel::ModInfo::ParentClass allows a module to define its place in an inheritance tree. 
A class that appears in the @ISA array of a particular module is a candidate for 
inclusion as a ParentClass in the module's ModInfo metadata.

=head1 AUTHOR

jtillman@bigfoot.com

tcushard@bigfoot.com

=head1 SEE ALSO

Devel::ModInfo::Tutorial

Devel::ModInfo::ParamHash

perl(1).