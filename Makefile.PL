use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'AUTHOR'          => 'James Tillman <jtillman@bigfoot.com>',
    'ABSTRACT'	      => 'Perl extension for providing metadata about a module\'s methods, properties, and arguments',
    'BINARY_LOCATION' => 'x86/Devel-ModInfo.tar.gz',
    'NAME'            => 'Devel::ModInfo',
    'VERSION_FROM'    => 'ModInfo.pm', # finds $VERSION
    'PL_FILES'        => {
	'pl2modinfo.PL'     => 'pl2modinfo',
	'modinfo2html.PL'   => 'modinfo2html',
	'modinfo2embpod.PL' => 'modinfo2embpod',
	'modinfo2xml.PL'    => 'modinfo2xml',
    },
    'EXE_FILES'	      => ['pl2modinfo', 'modinfo2html', 'modinfo2embpod', 'modinfo2xml', 'modinfo2embpod.tt', 'modinfo2html.tt', 'modinfo2html_idx.tt'],
    'clean'       => { FILES => '$(EXE_FILES)' },
    PREREQ_PM   => {
        'XML::DOM'          => '0',
	'Template' => '0',
	'Parse::RecDescent' => '0',
    },
);

sub MY::postamble {
return qq|

# These provided by Pod::Tree
POD2HTML = podhtml
PODS2HTML = pods2html

#
# Publishing/CVS constants
#

WEB_SITE = modinfo.sf.net
LOCAL_WEB_DIR = ../website/
PROJ_DIR = /home/groups/m/mo/modinfo/
HTDOCS = \$(PROJ_DIR)htdocs/
HTMLDOC_ROOT = ./doc/
REMOTE_HTMLDOC_ROOT = \$(HTDOCS)doc/
REMOTE_HTMLHELP_ROOT = \$(HTDOCS)help/
SSH_USER = \$(USER)
SSH = ssh
SCP = scp
RSYNC = rsync
RSYNC_RSH = \$(SSH)

publish_website :
\t\@echo "Publishing web site"
\t\$(SCP) -pr ../website/ \$(SSH_USER)\@\$(WEB_SITE):\$(HTDOCS)

doc : libdoc

libdoc :
	\$(PODS2HTML) --index="ModInfo Module Documentation" . \$(HTMLDOC_ROOT)lib

publish_doc : doc
	\@echo Publishing doc files...
	\$(RSYNC) --rsh=\$(RSYNC_RSH) --cvs-exclude --recursive \\
		--verbose \$(HTMLDOC_ROOT) \\
		\$(SSH_USER)\@\$(WEB_SITE):\$(REMOTE_HTMLDOC_ROOT)
|;
}
