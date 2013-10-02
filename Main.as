package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Joy Oboy
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			/* palme vs fredrik reinfeldt*/
			var heroDamage:int = 20;
			var heroHp:int = 100;
			var heroName:String = "Palme"; 
			var heroDmg:int;
			var enemyDamage:int = 15;
			var enemyHp:int = 100;
			var enemyName:String = "Fredrik Reinfeldt";
			var enemyDmg:int;
			var round:int = 1;
			
			
			var t:TextField = new TextField ;
			t.border = true;
			t.width = 500;
			t.height = 500;
			t.wordWrap = true;
			
			for (var i:int = 1; i < 7; i++) 
			{
				heroDmg = enemyDamage + Math.random() * 1.5
				enemyDmg = heroDamage + Math.random() * 2
				
				heroHp -= enemyDamage;
				enemyHp -= heroDamage;
				
				t.appendText("Round: " + i + ":"+ "\n")
				t.appendText(heroName + " " + "deals " + heroDmg + " " + "damage so " + enemyName + "." + " " + enemyName + " " + "has " + heroHp + " " + "hp left." + "\n");
				t.appendText(enemyName + " " + "deals " + enemyDmg + " " + "damage so " + heroName + "." + " " + heroName + " " + "has " + heroHp + " " + "hp left." + "\n" + "\n"); 
				
			}
			addChild(t);
		} 
		
		
	}
	
}