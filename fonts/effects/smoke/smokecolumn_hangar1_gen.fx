effect effects/smoke/smokecolumn_hangar1_gen
{
	size	340

	emitter "smoke"
	{
		duration	1,1
		count		4,4

		sprite
		{
			duration	3,4
			material	"gfx/effects/smoke/cloud_alpha"
			gravity		-0.06,-0.06

			start
			{
				velocity { box 20,-10,0,20,10,0 }
				angle { box 0,0,0,1,1,1 }
				size { box 30,30,50,50 }
				tint { line 0,0,0,0.203922,0.184314,0.156863 }
				fade { point 0 }
				offset { box 10,-10,-10,10,10,10 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope fastinslowout }
				angle { envelope linear }
				rotate { envelope linear }
			}

			end
			{
				size { box 150,150,200,200 }
				fade { point 1 }
				angle { box -1,-1,-1,1,1,1 relative }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
	emitter "underlit"
	{
		duration	1,1
		count		1.5,1.5

		sprite
		{
			duration	2,3
			material	"gfx/effects/smoke/underlit_alpha"
			gravity		-0.06,-0.06

			start
			{
				velocity { box 20,-10,0,20,10,0 }
				size { line 30,30,50,50 }
				tint { line 1,0.501961,0,1,1,0.501961 }
				fade { point 0 }
				offset { point 10,0,0 }
				rotate { box 0.277778,0.444444 }
			}

			motion
			{
				size { envelope linear }
				fade { envelope fastinslowout }
			}

			end
			{
				size { line 100,100,120,120 }
				fade { point 0.2 }
			}
		}
	}
}
