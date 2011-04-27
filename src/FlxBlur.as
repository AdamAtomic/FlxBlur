package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class FlxBlur extends FlxGame
	{
		public function FlxBlur()
		{
			super(640,480,PlayState,1,50,50);
			forceDebugger = true;
		}
	}
}
