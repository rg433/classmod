effect effects/weapons/napalmgun/flyburn_mp_low
{
	size	59

	sound "sound"
	{
		soundShader	"lt_tank_flame_loop"
	}
	sound "unnamed6"
	{
		soundShader	"effects_fire_small"
	}
	spawner "flash2"
	{
		count		1,1
		locked

		sprite
		{
			duration	2,2
			material	"gfx/effects/weapons/flash"
			generatedNormal

			start
			{
				position { line -2,-2,-2,2,2,2 }
				size { point 40,40 }
				rotate { box 0,1 }
			}

			motion
			{
				tint { envelope "linear" }
				fade { envelope "linear" }
			}
		}
	}
}



