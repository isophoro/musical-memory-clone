package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxColor;

var greenButton:FlxSprite;
var blueButton:FlxSprite;
var yellowButton:FlxSprite;
var redButton:FlxSprite;
var tv:FlxSprite;
var phase:Float = 0; // i dont fucking know what im doing
var redhitbox:FlxSprite;
var bluehitbox:FlxSprite;
var yellowhitbox:FlxSprite;
var greenhitbox:FlxSprite; // fuck i suck at coding

class PlayState extends FlxState
{
	override public function create()
	{
		FlxG.mouse.visible = true;

		tv = new FlxSprite(0, 0);
		tv.frames = FlxAtlasFrames.fromSparrow('assets/images/tv.png', 'assets/images/tv.xml');
		tv.animation.addByPrefix('off', 'TV off', 24);
		tv.animation.addByPrefix('green', 'greenTV', 24);
		tv.animation.addByPrefix('blue', 'blueTV', 24);
		tv.animation.addByPrefix('yellow', 'yellowTV', 24);
		tv.animation.addByPrefix('red', 'redTV', 24);
		tv.scrollFactor.set(0.9, 0.9);
		tv.screenCenter();
		tv.updateHitbox();
		tv.antialiasing = true;
		tv.animation.play('off');
		add(tv);

		greenButton = new FlxSprite(40, 308.8);
		greenButton.frames = FlxAtlasFrames.fromSparrow('assets/images/buttons.png', 'assets/images/buttons.xml');
		greenButton.animation.addByPrefix('idle', 'green0', 24);
		greenButton.animation.addByPrefix('clicked', 'green select', 24);
		greenButton.scrollFactor.set(0.9, 0.9);
		greenButton.updateHitbox();
		greenButton.antialiasing = true;
		greenButton.animation.play('idle');
		add(greenButton);

		blueButton = new FlxSprite(190, 308.8);
		blueButton.frames = FlxAtlasFrames.fromSparrow('assets/images/buttons.png', 'assets/images/buttons.xml');
		blueButton.animation.addByPrefix('idle', 'blue0', 24);
		blueButton.animation.addByPrefix('clicked', 'blue select', 24);
		blueButton.scrollFactor.set(0.9, 0.9);
		blueButton.updateHitbox();
		blueButton.antialiasing = true;
		blueButton.animation.play('idle');
		add(blueButton);

		yellowButton = new FlxSprite(340, 308.8);
		yellowButton.frames = FlxAtlasFrames.fromSparrow('assets/images/buttons.png', 'assets/images/buttons.xml');
		yellowButton.animation.addByPrefix('idle', 'yellow0', 24);
		yellowButton.animation.addByPrefix('clicked', 'yellow select', 24);
		yellowButton.scrollFactor.set(0.9, 0.9);
		yellowButton.updateHitbox();
		yellowButton.antialiasing = true;
		yellowButton.animation.play('idle');
		add(yellowButton);

		redButton = new FlxSprite(490, 308.8);
		redButton.frames = FlxAtlasFrames.fromSparrow('assets/images/buttons.png', 'assets/images/buttons.xml');
		redButton.animation.addByPrefix('idle', 'red0', 24);
		redButton.animation.addByPrefix('clicked', 'red select', 24);
		redButton.scrollFactor.set(0.9, 0.9);
		redButton.updateHitbox();
		redButton.antialiasing = true;
		redButton.animation.play('idle');
		add(redButton);

		// hhitboxes
		greenhitbox = new FlxSprite(49.6, 326.7).makeGraphic(84, 73, FlxColor.TRANSPARENT);
		add(greenhitbox);
		bluehitbox = new FlxSprite(200, 326.7).makeGraphic(84, 73, FlxColor.TRANSPARENT);
		add(bluehitbox);
		yellowhitbox = new FlxSprite(353, 326.7).makeGraphic(84, 73, FlxColor.TRANSPARENT);
		add(yellowhitbox);
		redhitbox = new FlxSprite(504, 326.7).makeGraphic(84, 73, FlxColor.TRANSPARENT);
		add(redhitbox);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.mouse.overlaps(greenhitbox) && FlxG.mouse.justPressed)
		{
			trace('hii i clicked');
		}

		super.update(elapsed);
	}
}
