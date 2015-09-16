effect effects/weapons/nailgun/fly_mp_low
{
	size	49

	spawner "line_outter"
	{
		detail		0.5
		count		1,1
		locked
		constant

		line
		{
			duration	0.5,0.5
			material	"gfx/effects/weapons/flash_half"

			start
			{
				position { point 12,0,0 }
				size { point 3 }
				tint { point 0.501961,0.501961,0.501961 }
				length { point -35,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "pop_flicker_fade" }
			}

			end
			{
				size { point 8 }
			}
		}
	}
	spawner "line_inner"
	{
		detail		0.5
		count		1,1
		locked
		constant

		line
		{
			duration	0.5,0.5
			material	"gfx/effects/weapons/flash_half"

			start
			{
				position { point 12,0,0 }
				size { point 0.5 }
				length { point -35,0,0 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 3 }
			}
		}
	}
	spawner "sprite"
	{
		count		1,1
		locked
		constant

		sprite
		{
			duration	0.5,0.5
			blend	add
			material	"gfx/effects/weapons/flash"

			start
			{
				position { point -1,0,0 }
				size { point 5,5 }
			}

			motion
			{
				size { envelope "linear" }
			}

			end
			{
				size { point 10,10 }
			}
		}
	}
}
