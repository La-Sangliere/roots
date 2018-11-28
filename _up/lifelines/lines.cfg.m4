dnl this file is processed by m4. 
dnl to generate the windows version
dnl m4 -D WINDOWS lines.cfg.input > lines.cfg 
dnl to generate a linux/unix version
dnl m4 lines.cfg.input > .linesrc
# config file for LifeLines
# .linesrc under UNIX, lines.cfg under Windows
# Lines beginning with # are ignored (comments)
# As are blank lines
# So some of the examples are commented out...
#
# 2007-10-01
#
# Note that paths are assigned with :=
# Other values are assigned with =
# The distinction is that using plain = means that
# backslash escapes are enabled:
#  \t means tab, \n means carriage return
# We don't want these enabled in paths, because they might
# occur naturally in path names under MS-Windows.
#
# All variables here are available to report programs
# via the report language function getproperty, so, for
# example, the user email property (which is built-in under
# UNIX), may be specified here like so:
#user.email=user@domain.name
# Similarly the user fullname property (also built-in under
# UNIX) may be specified like so:
#user.fullname=myname
# the user address property is a one line version of your address
#user.address=1234 Some Street, Some City, State 00000
# the user phone property is your phone number
#user.phone=(800)-555-1234
# the user url property is for your url (if you have one)
#user.url=http://mylifelines.genealogy.net

# Set a variable for the lifelines root
# Variables have % at start and end
ifdef(`WINDOWS',%llroot%:=\lifelines,%llroot%=/home/user/LifeLines)

# Root path for utility/read command
ifdef(`WINDOWS',
InputPath:=%llroot%
,
#InputPath=%llroot%
)
# Place to store output of utility/save
ifdef(`WINDOWS',
LLARCHIVES:=%llroot%\Archives
,
#LLARCHIVES=%llroot%/Archives
)dnl

# Path(s) to search for databases
ifdef(`WINDOWS',
LLDATABASES:=%llroot%\Databases
,
#LLDATABASES=%llroot%/Databases
)dnl
# (New databases will be created in first directory of this path.)

# (LLNEWDBDIR {Path for new databases} is obsolete)

# Path for report programs
ifdef(`WINDOWS',
LLPROGRAMS:=%llroot%\Programs
,
#LLPROGRAMS=%llroot%/Reports
)dnl

# Path for report output
ifdef(`WINDOWS',
LLREPORTS:=%llroot%\Outputs
,
#LLREPORTS=%llroot%/Outputs
)dnl

ifdef(`WINDOWS',
# Editor (notepad by default)
#LLEDITOR:=notepad.exe

# Path for reference translation tables
TTPATH:=%llroot%\tt
,
# Editor
#LLEDITOR=/usr/local/vi

# Path for global translation tables
#TTPATH=%llroot%/tt
)dnl

# Path for exported translation tables (from a db)
ifdef(`WINDOWS',
LLTTEXPORT:=%llroot%\ttdb
,
#LLTTEXPORT=%llroot%/ttdb
)dnl

# Refuse to execute system calls from report programs (default allowed)
ifdef(`WINDOWS',
DenySystemCalls=1
,
#DenySystemCalls=1
)dnl

# Log file for report errors (default none)
ifdef(`WINDOWS',
#ReportLog:=%llroot%\rpterrs.log
,
#ReportLog=%llroot%/reporterrs.log
)dnl

# Log file for crashes for llines (default none)
ifdef(`WINDOWS',
#CrashLog_llines:=%llroot%\crashes_llines.log
,
#CrashLog_llines=%llroot%/crashes_llines.log
)dnl

# Log file for crashes for llexec (default none)
ifdef(`WINDOWS',
#CrashLog_llexec:=%llroot%\crashes_llexec.log
,
#CrashLog_llexec=%llroot%/crashes_llexec.log
)dnl

# Log file for import errors (default errs.log)
ifdef(`WINDOWS',
#ImportLog:=%llroot%\import.log
,
#ImportLog=%llroot%/import.log
)dnl

# Log file for report pvalue leaks (for debugging)
ifdef(`WINDOWS',
#ReportLeakLog:=%llroot%\reportleaks.log
,
#ReportLeakLog=%llroot%/reportleaks.log
)dnl

# Delay (secs) between each report error on screen (default 0)
#PerErrorDelay=4

# Print more detailed call stack for each report error
#FullReportCallStack=1

# dayfmt,monthfmt,yearfmt,datefmt,erafmt,complexfmt
# see programmers reference for stddate for these
# 2,3,0,0,1,1 is GEDCOM style (1 AUG 1945) with complex dates
# 2,5,0,1,1,1 is American style (AUGUST 1, 1945) with complex dates
# 1,1,0,9,1,1 is Chinese style (1945/04/25) with complex dates
# 1,1,0,10,2,1 is Chinese style with dashes (1945-04-05 A.D.) with explicit origin & complex dates
# 2,2,0,13,1,1 is the Swedish style (1/8 1945)
# Omit this entirely to default to dates as given in GEDCOM
#LongDisplayDate=1,1,0,9,1,1

# To use a combining format not already supported, such as the period format
# This overrides the dateformat (but not dayformat,monthformat...) above
#LongDisplayDatePic="%y.%m.%d"

# As above, except that omitting this defaults to combining mode 12 (year only)
#  (the traditional short form)
# Chinese style, BC if negative, no complex dates (100-04-03 BC)
#ShortDisplayDate=1,1,0,10,11,0

# To use a combining format not already supported, such as the period format
# This overrides the dateformat (but not dayformat,monthformat...) above
#ShortDisplayDatePic="%y.%m.%d"

# Trailing string to append when truncating events in short display
#  (eg, to see "b. 1995-5-3, Miss..." instead of "b. 1995-5-3, Missour")
#ShortOmitString=...
#  default is none

# Width to indent pedigree ancestor & descendent views, and gedcom view
#GedcomDisplayIndent=2
# default is 6

# Set the default data for new persons
#INDIREC=0 INDI\n1 NAME Fname/Surname/\n1 SEX MF\n1 BIRT\n  2 DATE\n  2 PLAC\n1 DEAT\n  2 DATE\n  2 PLAC\n1 SOUR
# This sample version is the same as the default if none is given.

# Set the default data for the body of a new family
#FAMRECBODY=1 MARR\n  2 DATE\n  2 PLAC\n  2 SOUR
# This sample version is the same as the default if none is given.
# Note that for family, the program inserts the fam, spouse,
# and children tags, so this is only data besides those tags.

# Set the default data for new sources
#SOURREC=0 SOUR\n1 REFN\n1 TITL Title\n1 AUTH Author
# This sample version is the same as the default if none is given.

# Set the default data for new events
#EVENREC=0 EVEN\n1 REFN\n1 DATE\n1 PLAC\n1 INDI\n  2 NAME\n  2 ROLE\n1 SOUR
# This sample version is the same as the default if none is given.

# Set the default data for new other records
#OTHR=0 XXXX\n1 REFN
# This sample version is the same as the default if none is given.

# Specify the SUBM line for the header (of GEDCOM exports)
#  This is meant to specify who submitted the record.
#HDR_SUBM=1 SUBM
# This sample version is the same as the default if none is given.

# Specify the GEDC line for the header (of GEDCOM exports)
#  This is meant to specify what version of GEDCOM was used.
#HDR_GEDC=1 GEDC\n2 VERS 5.5\n2 FORM LINEAGE-LINKED
# This sample version is the same as the default if none is given.

# Specify the GEDC line for the header (of GEDCOM exports)
#  This is meant to specify what character set was used in the data.
#HDR_CHAR=1 CHAR ASCII
# The default is the actual encoding used to output the GEDCOM
# so this should not normally be overridden

# Set the visit history size (# of entries remembered in visit history)
#HistorySize=20
# Valid values are 0 through 9999.
# This sample line is the same as the default if none is given.

# Enable persistent history (remember in database between uses).
#SaveHistory=1
# Valid values are 0 (don't save) and 1 (do save).
# Default is 0.

# Keep traversal back & forth between records off the history list.
#HistoryBounceSuppress=5
# This would prevent a record from being added to the history list if
# it is already present within the last 5 entries.
# Valid values are 0 through 99.
# Default is 1.

# Disallow persons without name records (legacy 3.0.10 & earlier behavior)
#RequireNames=1
# Default is 0 (nameless records allowed)

# Specify language for message catalog
#UiLocaleMessages=en
# Default is normal gettext behavior (deduces it from environment)
# This is injected into the LANG variable

# Specify locale for collation
#UiLocaleCollate=en
# Default is normal deduction from environment

# Specify locale for collation in reports
#RptLocaleCollate=en
# Default is normal deduction from environment

# Coded charset name for GUI use
# This is a libiconv charset name
# And this is passed to gettext (libintl)
# Default is none
#GuiCodeset=8859-1
# Default is none
# If not specified, default is used (Windows DOS codepage or Unix nl_langinfo)

# GUI codeset to use when converting from internal to GUI
# This is to allow opportunity to enable transliteration here
#GuiCodesetOut=CP437//TRANSLIT
# Default is none
# If not specified, GuiCodeset is used (and see its default)

# Coded charset name for editor use
#EditorCodeset=8859-1
# Default is none

# Coded charset name for report output
#ReportCodeset=8859-1
# Default is none

# Coded charset name for reading & writing GEDCOm files
#GedcomCodeset=8859-1
# Default is none

# For systems experiencing faulty screen erases (eg, RedHat Linux)
#ForceScreenErase=1

# Option to invoke in-program report language debugger on report errors
# This allows examination of the local symbols
#debugger=1
# Default is 0

# Expand record references to refn links if available
# Eg, change 1 SOUR @S20@ to 1 SOUR <1850.Census> during edit
#ExpandRefnsDuringEdit=1
# Default is 0

# Add comment after pointers (during edit) (default is 0)
# Eg, change 1 HUSB @I1@ to 1 HUSB @I1@ {{ John/SMITH }} 
#AnnotatePointers=1
# Default is 0

# Display surnames in all caps on screen
# Eg, display John/Smith as John/SMITH
# Disable this if UTF-8 capitalization is failing
#UppercaseSurnames=0
# Default is 1

# Display database key tags for individuals or families (i or f)
# So instead of (1999) for an individual's key, you'd get (i1999)
# This may help with on-screen positioning of keys when
# Arabic/Hebrew characters (in UTF-8) are used for names.
# Default is 0 (feature off)
#DisplayKeyTags=1

# Where to find an iconv dll (only for MS-Windows)
#iconv.path:=C:\Program Files\Common Files\gnu\iconv.dll
# Not needed if it is named iconv.dll & is on the path.

# Where to find a gettext dll (only for MS-Windows)
#gettext.path:=C:\Program Files\Common Files\gnu\libintl.dll
# Not needed if it is named gettext.dll & is on the path.

# What locale directory to use
ifdef(`WINDOWS',
LocaleDir:=%llroot%\locale
,
#LocaleDir:=/usr/share/locale
)dnl
# Default is to use the compiled-in default (LOCALEDIR)

# Global translation tables
# Syntax is TT.which.ics.n
# Where TT is always TT
# which is the codename (MEDIN=Editor to Internal)
# ics is the internal codeset (eg, UTF-8)
# and n starts at 1
#TT.MEDIN.UTF-8.1=UTF-8.Greek.Input.tt
#TT.MINED.UTF-8.1=UTF-8.Greek.Output.tt
# Default is none

# Display absolute path to database
#FullDbPath=1
# This is disabled by default
# Enable this to disambiguate databases in different paths
# Disable this if your home directory is deep (eg, on MS-Windows)

# Set default properties (user options) for new databases
#NewDbProps=codeset=UTF-8
# Default is none

ifdef(`WINDOWS',
# (Windows) Set codepage to use when reading from console
#ConsoleCodepage=1250

)dnl
