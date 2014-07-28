﻿package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.display.StageScaleMode;

	public class Main extends Sprite
	{
		public var screen:Screen;
		public var keyHandler:KeyHandler;
		public var currentLevel:Level;
		public var player:Player;
		public var textField:TextField = new TextField();

		public function Main()
		{
			stage.scaleMode = StageScaleMode.NO_SCALE;
			currentLevel = Level.testMap;
			
			screen = new Screen(this);
			keyHandler = new KeyHandler(stage);
			
			player = new Player(this,screen.playerLayer);
			player.setPlayerX(5);
			player.setPlayerY(5);
			player.renderPlayer();
			
			stage.addEventListener(Event.ENTER_FRAME,update);
			
			textField.textColor = 16777215;
			textField.scaleX = textField.scaleY = 3;
			addChild(textField);
		}

		public function setLevel(newLevel:Level)
		{
			this.currentLevel = newLevel;
		}

		public function update(e:Event):void
		{
			player.updatePosition();
			currentLevel.checkForExit(this, player.getPlayerX(), player.getPlayerY());
			this.textField.text = "X:" + player.getPlayerX()+" Y:"+player.getPlayerY();
		}
	}

}