﻿package  {
	
	public class LevelCommonHouse extends Level{

		public function LevelCommonHouse() {
			super("common_house", new CommonHouse());
			this.setObject(4, 7, Overlay.wooden_door);
		}

	}
	
}
