!!ARBfp1.0

# Author: Aurelio Reis
# Description: DoF effect for Quake 4.
# Depth of Field effect determines whether a pixel is
# in focus or not by using a CoC lookup to create an
# lerp value between the scene as normal and a low and
# high blurred version.


####		Input			####
ATTRIB	iColor	= fragment.color.primary;

####		Output			####
OUTPUT	oColor	= result.color;

####		Constants		####
TEMP	t0;

####		Main			####
# Output the interpolated depth as color.
MOV			oColor.rgba, fragment.texcoord[0].xxxx;

END