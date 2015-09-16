effect effects/weapons/railgun/trail_mp_low
{
	size	64

	spawner "beam core"
	{
		count		1,1

		line
		{
			duration	0.4,0.4
			material	"gfx/effects/weapons/rail_trail_mp"

			start
			{
				size { point 6 }
				length { line 0,0,0,0,0,0 useEndOrigin }
			}

			motion
			{
				size { envelope "exp_x2" }
				tint { envelope "linear_flicker" }
			}

			end
			{
				size { point 2 }
			}
		}
	}
	spawner "leftover"
	{
		detail		0.5
		start		0.25,0.25
		density		2,2
		particleCap		50

		sprite
		{
			duration	1,1
			blend	add
			persist
			material	"gfx/effects/energy_sparks/energy_mp"
			gravity		-0.03,0

			start
			{
				position { line 50,0,0,50,0,0 useEndOrigin linearSpacing }
				velocity { box 0,-5,-5,0,5,5 }
				angle { box 0,0,0,1,1,1 }
				size { line 10,10,15,15 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "fastinslowout" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 15,15,20,20 }
				fade { point 0.2 }
				angle { box -1,-1,-1,1,1,1 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
}
