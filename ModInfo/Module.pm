# MODINFO module Devel::ModInfo::Module
package Devel::ModInfo::Module;

# MODINFO dependency module strict
use strict;
# MODINFO dependency module vars
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

# MODINFO dependency module Exporter
require Exporter;

# MODINFO parent_class Devel::ModInfo::Feature
@ISA = qw(Exporter AutoLoader Devel::ModInfo::Feature);
@EXPORT = qw();
# MODINFO version 0.01
$VERSION = '0.01';

# Preloaded methods go here.
# MODINFO constructor new
# MODINFO paramkey attribs	Attributes for the new object
# MODINFO key class			 STRING	  Name of the class this object represents
# MODINFO key version		 STRING   Version of the class
# MODINFO key dependencies	 ARRAYREF Array of dependencies this module has
# MODINFO key parent_classes ARRAYREF Array of classes this module inherits from
sub new{
	my ($class, %attribs) = @_;
	my $self  = $class->SUPER::new(%attribs);
	$self->{class} = $attribs{class};
	$self->{version} = $attribs{version};
	$self->{dependencies} = $attribs{dependencies};
	$self->{parent_classes} = $attribs{parent_classes};
	return bless $self => $class;
}

# MODINFO function class
# MODINFO retval STRING
sub class{$_[0]->{class}}

# MODINFO function version
# MODINFO retval STRING
sub version{$_[0]->{version}}

# MODINFO function dependencies
# MODINFO retval STRING
sub dependencies{$_[0]->{dependencies}}

# MODINFO function parent_classes
# MODINFO retval STRING
sub parent_classes{$_[0]->{parent_classes}}

1;

__END__



=head1 Devel::ModInfo::Module

Devel::ModInfo::Module - Defines a particular Perl module and contains collections of 
descriptors for that module

=head1 SYNOPSIS

Not meant to be used outside the ModInfo system.
  
=head1 DESCRIPTION

Devel::ModInfo::Module provides the name, description, dependency information, and 
parent classes of a Perl Module.  It is meant to model both object-oriented and non-
object-oriented modules.

=head1 AUTHOR

jtillman@bigfoot.com
tcushard@bigfoot.com

=head1 SEE ALSO

Devel::ModInfo::Dependency

Devel::ModInfo::ParentClass

perl(1).

=cut