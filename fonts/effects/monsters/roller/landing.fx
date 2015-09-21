effect effects/monsters/roller/landing
{
	size	708

	spawner "dust_back"
	{
		count		20,20
		locked
		attenuateEmitter

		sprite
		{
			duration	2,3
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			generatedNormal

			start
			{
				position { cylinder 0,-10,-10,0,10,10 surface }
				velocity { box 20,-50,-50,20,50,50 }
				size { point 75,75 }
				tint { line 0.584314,0.415686,0.415686,0.34902,0.309804,0.294118 }
				fade { point 0 }
				rotate { box -0.5,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "pop_hold_fadefast" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 100,100,120,120 }
				fade { point 0.5 }
				rotate { box -1,-0.5 relative }
			}
		}
	}
	spawner "chunks"
	{
		count		10,10
		locked
		attenuateEmitter

		sprite
		{
			duration	1,1
			persist
			material	"gfx/effects/particles_shapes/concrete_chunks"
			gravity		1,1
			generatedOriginNormal

			start
			{
				position { cylinder 1,-1,-1,1,1,1 surface }
				velocity { box 500,0,0,1000,0,0 }
				angle { box 0,0,0,1,1,1 }
				size { line 10,10,20,20 }
				tint { line 0.447059,0.466667,0.333333,0.372549,0.352941,0.239216 }
				fade { point 0 }
				offset { box 0,-20,-20,0,20,20 }
				rotate { box 0,0.5 }
			}

			motion
			{
				fade { envelope "pop_hold_fadefast" }
				angle { envelope "linear" }
				rotate { envelope "linear" }
			}

			end
			{
				fade { point 0.4 }
				angle { box -0.333333,-0.333333,-0.333333,0.333333,0.333333,0.333333 relative }
				rotate { box 0.5,1 relative }
			}
		}
	}
	spawner "unnamed3"
	{
		count		50,50
		locked
		attenuateEmitter

		line
		{
			duration	0.25,0.25
			persist
			material	"gfx/effects/smoke/smoke_alpha"
			generatedOriginNormal

			start
			{
				position { cylinder 19,-20,-20,19,20,20 surface }
				velocity { box 150,0,0,200,0,0 }
				size { box 1,2 }
				tint { line 0.913726,0.882353,0.839216,0.803922,0.721569,0.619608 }
				offset { point -40,0,0 }
				length { box 30,0,0,40,0,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
				length { envelope "linear" }
			}

			end
			{
				size { point 4 }
				length { box 100,0,0,200,0,0 }
			}
		}
	}
	spawner "ground shock"
	{
		count		1,1

		oriented
		{
			duration	0.25,0.25
			blend	add
			material	"gfx/effects/energy_sparks/launch_flash4"

			start
			{
				position { point 1,0,0 }
				size { point 10,10 }
				fade { point 0.75 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 500,500 }
			}
		}
	}
	spawner "dust_back2"
	{
		count		20,20
		locked
		attenuateEmitter

		sprite
		{
			duration	1,1
			persist
			material	"gfx/effects/smoke/cloud_alpha2"
			gravity		-0.0125,-0.0125
			generatedNormal

			start
			{
				position { cylinder 0,-10,-10,0,10,10 surface }
				velocity { box 100,-80,-80,100,80,80 }
				size { point 100,100 }
				tint { line 0.290196,0.207843,0.207843,0.352941,0.309804,0.294118 }
				fade { point 0 }
				rotate { box -0.5,0 }
			}

			motion
			{
				size { envelope "linear" }
				fade { envelope "pop_hold_fadefast" }
				rotate { envelope "linear" }
			}

			end
			{
				size { line 150,150,200,200 }
				fade { line 0.1,0.5 }
				rotate { box -1,-0.5 relative }
			}
		}
	}
	spawner "flash2"
	{
		count		1,1
		locked

		sprite
		{
			duration	0.06,0.06
			material	"gfx/effects/weapons/flash"

			start
			{
				size { point 400,400 }
				tint { point 0.752941,0.752941,0.752941 }
				rotate { box 0,1 }
			}

			motion
			{
				size { envelope "linear" }
				tint { envelope "linear" }
				fade { envelope "linear" }
			}

			end
			{
				size { point 2.5,2.5 }
			}
		}
	}
	sound "unnamed6"
	{
		soundShader	"turret_convoy_land"
	}
}


