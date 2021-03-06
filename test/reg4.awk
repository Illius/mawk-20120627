# $MawkId: reg4.awk,v 1.7 2009/09/17 23:29:01 tom Exp $
# Test-script for MAWK
###############################################################################
# copyright 2009, Thomas E. Dickey
#
# This is a source file for mawk, an implementation of
# the AWK programming language.
#
# Mawk is distributed without warranty under the terms of
# the GNU General Public License, version 2, 1991.
###############################################################################
{
	if ($0 ~/^[-+()0-9.,$%/'"]*$/)
	{
		print ("reg4.1<<:",$0,">>")
	}
	if ($0 ~/^[]+()0-9.,$%/'"-]*$/)
	{
		print ("reg4.2<<:",$0,">>")
	}
	if ($0 ~/^[^]+()0-9.,$%/'"-]*$/)
	{
		print ("reg4.3<<:",$0,">>")
	}
	if ($0 ~/^[[+(){}0-9.,$%/'"-]*$/)
	{
		print ("reg4.4<<:",$0,">>")
	}
	if ($0 ~/^[^[+(){}0-9.,$%/'"-]*$/)
	{
		print ("reg4.5<<:",$0,">>")
	}
}
