!!ARBfp1.0

# Author: Aurelio Reis
# Description: DoF effect for Quake 4.
# Sample the CoC lookup texture using the depth and
# focus values as texture coordinates then output the
# result as the DoF blurriness amount.


####		Input			####
ATTRIB	iColor	= fragment.color.primary;

####		Output			####
OUTPUT	oColor	= result.color;

####		Constants		####
TEMP	t0, t1;

####		Main			####
TEX			t0, fragment.texcoord[0].xyzw, texture[0], 2D;
TEX			t1, fragment.texcoord[1].xyzw, texture[1], 2D;

#MOV		t0.a, t1.a;

# Output the Blurriness amount as color.
MOV		oColor, t0;

END