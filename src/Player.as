package {
    import org.flixel.*;

    public class Player extends FlxSprite {
        [Embed(source="../data/squirrel.png")]
        protected var PlayerImage:Class;

        public function Player(X:int, Y:int){
            super(X,Y);
            loadGraphic(PlayerImage,true,true,7,5);
            
            maxVelocity.x = 100;
            acceleration.y = 400;
	    drag.x = maxVelocity.x*4;
        }

        override public function update():void {
            acceleration.x = 0;
            if (FlxG.keys.LEFT) {
                acceleration.x -= drag.x;
                facing = LEFT;
            }
            if (FlxG.keys.RIGHT) {
                acceleration.x += drag.x;
                facing = RIGHT;
            }

            super.update();
        }
    }
}
