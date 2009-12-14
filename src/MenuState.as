package
{
	import org.flixel.*;

	public class MenuState extends FlxState
	{
		private const _blur:Number = 0.35;
		private var _helper:FlxSprite;
		
		public function MenuState()
		{
			//Title text, nothing crazy here!
			var t:FlxText = new FlxText(0,FlxG.height/2-20,FlxG.width,"FlxBlur");
			t.size = 32;
			t.alignment = "center";
			add(t);
			
			//This is a big black sprite set to _blur% transparency.
			//We'll use this instead of the fill command to create the
			// motion blur effect in the pre-process hook below.
			_helper = new FlxSprite();
			_helper.createGraphic(FlxG.width,FlxG.height,0xff000000,true);
			_helper.alpha = _blur;
			
			//This is the particle emitter that spews things off the bottom of the screen.
			//I'm not going to go over it in too much detail here, but basically we
			// create the emitter, then we create 50 16x16 sprites and add them to it.
			//Note that both the sprites we create and the emitter ARE added to the game state.
			var e:FlxEmitter = new FlxEmitter();
			e.width = FlxG.width;
			e.y = FlxG.height+8;
			e.delay = 0.08;
			e.gravity = -40;
			e.setXVelocity();
			e.setYVelocity(-50,0);
			var particles:uint = 50;
			var a:Array = new Array();
			for(var i:uint = 0; i < particles; i++)
				a.push(add((new FlxSprite()).createGraphic(16,16)));
			add(e.loadSprites(a));
		}
		
		//This pre-processing hook allows us to manipulate the game screen
		// before it is cleared or rendered onto again.
		override public function preProcess():void
		{
			screen.draw(_helper);
		}
	}
}
