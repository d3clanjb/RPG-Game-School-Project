﻿package  {	import flash.display.Bitmap;	import flash.display.BitmapData;	import flash.geom.Rectangle;	import flash.geom.Point;		public class Overlay {				public var solid:Boolean = false;		private var tileSprite:Bitmap;				public static var wooden_door:Overlay = new Overlay(GameSprite.wooden_door.getSprite(), false);				public static var flower_1:Overlay = new Overlay(GameSprite.flower_1.getSprite(), false);		public static var flower_2:Overlay = new Overlay(GameSprite.flower_2.getSprite(), false);		public static var flower_3:Overlay = new Overlay(GameSprite.flower_3.getSprite(), false);		public static var flower_4:Overlay = new Overlay(GameSprite.flower_4.getSprite(), false);		public static var flower_5:Overlay = new Overlay(GameSprite.flower_5.getSprite(), false);		public static var flower_6:Overlay = new Overlay(GameSprite.flower_6.getSprite(), false);		public static var bush_1:Overlay = new Overlay(GameSprite.bush_1.getSprite(), true);		public static var tree:Overlay = new Overlay(GameSprite.tree.getSprite(), false);				public function Overlay(sprite:Bitmap, solid:Boolean) {			this.tileSprite = sprite;			this.solid = solid;		}				public function setSprite(sprite:Bitmap):void		{			this.tileSprite = sprite;		}		public function setSolid(flag:Boolean):void		{			this.solid = flag;		}		public function onUse(player:Player)		{		}		public function isSolid():Boolean		{			return solid;		}		public function renderObject(level:Level, x:int, y:int, layer:BitmapData)		{			trace("rending object");			layer.copyPixels(tileSprite.bitmapData, new Rectangle(0, 0, tileSprite.width, tileSprite.height), new Point( x * 16, y * 16 ), null, null, true);		}	}}