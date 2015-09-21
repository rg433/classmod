effect effects/steam/fogascend_128
{
	size	213

	emitter "steam1"
	{
		duration	30,30
		count		2,2

		sprite
		{
			duration	3,4
			material	"gfx/effects/smoke/steam_alpha"
			gravity		-0.003,-0.003

			start
			{
				position { cylinder 0,-60,-60,0,60,60 }
				size { line 80,80,120,120 }
				fade { point 0 }
				rotate { box 0,1 }
			}

			motion
			{
				fade { envelope cosine }
				rotate { envelope linear }
			}

			end
			{
				fade { point 0.2 }
				rotate { box -0.222222,0.222222 relative }
			}
		}
	}
}


