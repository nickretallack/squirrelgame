package
{
	import org.flixel.*;

	public class PlayState extends FlxState
	{
                [Embed(source="../data/tile.png")]
                protected var TilesImage:Class;
                
                protected var levelBlocks:FlxGroup = new FlxGroup();
                protected var player:Player = new Player(10,10);

		override public function create():void
		{
                        FlxState.bgColor = 0xffacbcd7;


                        var thing:FlxTileblock = new FlxTileblock(0,100-24,300,20);
                        thing.loadGraphic(TilesImage);
                        add(player);
                        FlxG.follow(player);
                        FlxG.followAdjust(1.5,1.5);
                        //FlxG.followBounds(0,0,100,100);


                        levelBlocks.add(this.add(thing));
			add(new FlxText(0,0,100,"INSERT GAME HERE"));
		}
                override public function update():void {
                        FlxU.collide(levelBlocks, player);
                        super.update();
                }
	}
}
