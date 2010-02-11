package
{
	import org.flixel.*;
	[SWF(width="640", height="480", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class FlxBlur extends FlxGame
	{
		public function FlxBlur()
		{
			super(320,240,MenuState,2);
			//showLogo = false;
		}
	}
}
