BlitMonkey

2011-01-19
Finally getting the hang of stupid git. Seems to be a three-step process:
#1. Add
#2. Commit
#3. Push

By strictly following this order (from TortoiseGit) commits are relatively pain free. I don't see the practicality of stupid git in a production environment however, with the realtive fragility of the tools so far, the multi-step check-in procedure, and the requirement to type a password on each commit. SVN may have it's problems, but so far it beats stupid git hands down on intuitive usability.

Ahem, on the game side, the engine is re-taking shape. Animations and maps based on tilsets have been implemented and don't cost the user too many brain cells to use, although the current approach may stray a bit to close towards being "hackish":

// get a bitmap instance 
var bitmapData:BitmapData = BitmapUtil.getBitmapData(new GameLib.TILE_PAVE());

// create the tile set to describe how the bitmap is divided up
var tileset:ITileset = new TilesetBuilder().buildTileset(bitmapData, new Point(40, 40));

// to create an animation using the tileset (the Collection.fromArray() part seems a bit neanderthal)
var walkNorthAnimation:IAnimation = new TilesetAnimationBuilder(tileset).buildAnimation(Collection.fromArray([4, 5]), 8);

// to create a map based on the same tileset (again the fromArray() nonsense feels dirty like a ho)
var mapGrid:IGrid = Grid.fromArray([
		[10, 11, 11, 11, 12],
		[20, 21, 21, 21, 22],
		[30, 31, 31, 31, 32]
	]);  			
			
var map:IMap = new TilesetMapBuilder(tileset).buildMap(mapGrid, new Point(70, 70), new Point(40, 40));



The game loop is simply a series of composite commands calling simpler commands to update animations, scan for input, and paste stuff on the display:

var keyboard:IKeyboard = new KeyboardBuilder().buildKeyboard(this._container.stage);
			
			
var timelines:ICompositeTimeline = new CompositeTimelineBuilder().buildTimeline();

timelines.addTimeline(someAnimation);


var graphics:ICompositeGraphic = new CompositeGraphicBuilder().buildGraphic();

graphics.addGraphic(map);

graphics.addTimeline(someAnimation); // animation needs to be added to timeline and to graphics (2 lists seems useful but may be too unwieldy)



var inputs:ICompositeCommand = new CompositeCommand(new Vector.<ICommand>());

inputs.addCommand(new KeyCommand(keyboard, Keyboard.UP, new CallbackCommand(map.offsetBy, new Point(0, -1))));

inputs.addCommand(new KeyCommand(keyboard, Keyboard.DOWN, new CallbackCommand(map.offsetBy, new Point(0, 1))));

inputs.addCommand(new KeyCommand(keyboard, Keyboard.RIGHT, new CallbackCommand(map.offsetBy, new Point(1, 0))));

inputs.addCommand(new KeyCommand(keyboard, Keyboard.LEFT, new CallbackCommand(map.offsetBy, new Point(-1, 0))));
			
	
var updates:ICompositeCommand = new CompositeCommand(new Vector.<ICommand>());

updates.addCommand(new CallbackCommand(canvas.clear));

updates.addCommand(new UpdateTimelineCommand(timelines));

updates.addCommand(inputs);

updates.addCommand(collisions);

updates.addCommand(new DrawGraphicCommand(graphics, renderContext, new Transform()));


var loop:ICommand = new EventCommand(this._container, Event.ENTER_FRAME, updates);

loop.execute();


Callback commands can be useful but they can also be abused and so should probably be eliminated.




2011-01-12
Sprite state is a command list (parallel by default), also extends general state (and composite state).

Animation is a serial command list (to extend a generic timed command list). 

Frames are command lists (parallel by default). 

Groups exist to pre-append their id to their children id's, they do not influence created structure in any way.

Offset in animation cascades to child frames, but can be over-ridden by child frames.

Frame default duration is 1, but can be overridden.

Frame default loops is 0, which implies infinite looping, otherwise loop indicates the number of times the animation plays.

All objects act as groups for the purpose of accessing children.

Children wihtout id's can be accessed using square brackets with a numeric index of the child eg: [].

The "graphic" tag in the "animation" node, and the "animation" and "sound" nodes in the sprite "state" nodes are equivalent commands (eg: setGraphic(), playAnimation(), playSound()).





2011-01-11
Added another animation.

Bulk sprite handling seems to be the next challenge. Up until now each sprite is using a sprite tile-sheet (many frames in a single image). Defining each sprite can quickly becoming quite laborious and some labor saving techniques need to be used. 

There are two problems with this approach:
1. Defining areas
2. Defining offsets

The most obvious approach would be to use Flash to create MovieClips, but then there would be no need for this library. Relying on a proprietary format (even an "open" one such as SWF) essentially commits the development process to one company and one platform, limiting development freedom and hindering portability.

One solution would be to create a sprite tool to load bitmaps, allow the user to define each sprite region and offset, and export the XML to a file. Perhaps it is not unreasonable to expect more work to go into in the tools supporting an engine, than in the engine itself. The tool would have a preview window which would show the current frame, and allow the user to position by editing the offset (ideally using arrows to nudge, and mouse to move). The preview window should support showing the previous and following frames (onion skinning?) to help with alignment. Ideally the tool would also support animations and allow the user to edit the time for each frame, and preview the animation.

Another problem is re-using sprite assets. It is simpler for the artist (and has less imact on memory) to create artwork for a chracter facing in one direction only, with the intention of flipping the artwork at runtime to display the character facing in the opposite direction. 

In the interest of speed and convenience, the engine could support caching transformed copies of sprites as they are loaded. This would consume more memory than transforming at render time, but it would be faster as a direct blit could be used. 

A general purpose transformation cache (including rotation/scaling) would be most useful. An abstraction layer could provide the closest cached copy to a specific transformation, or alternatively, use a slower runtime transformation when an exact cache match is  not available, but blit the cached copy when one is available.

On an unrelated note, it would be nice to be able to apply motion-blur (and other) effects (alpha inter-frames) in a general fashion. 

Perhaps the above two features could be implemented as a wrapper around a BitmapData. For this to be useful, BitmapData would first need to be wrapped in an IBitmap interface, or perhaps extended and the native method over-ridden if possible. It is important to not have too many layers of abstraction on the BitmapData as it is part of the critical path for performance.

Planned updates for the next commit include:
- Using a range of seperate image files for the sprite frames (hopefully the memory overhead will be insignificant). The idea is to be able to define a name range to load assets (ie: ABU_RUN_#, where # is a wild-card implying a range of assets) .
- Using seperate files will remove the need to specify a sprite region. Of course this just implies that some tool is being used to export frames as seperate images (slices in Photoshop anyone?), but at least the sprite area no longer needs to be a required parameter (although it might be useful to allow it as an override).




2011-01-09
Config has been refactored to parse into a generic config collection. Objects are created by name, properties are fetched by name at creation time.
Eg:
	Where the XML config node might look like this:
		<m:animation id="abuIdleAnimation" type="cell" cells="abuCells">
			...
		</m:animation>
	
	The object can be created like this:
		var animation:IAnimation = objects.getObject("abuIdleAnimation", IAnimation) as IAnimation;
		
The two biggest flaws being:
	1. Class type is required by getObject() and the result needs to be type-cast (which seems redundant)
	2. There is no enforcement of class type to node name which means extra (unnecessary) care is needed to make sure the named node is of the type this factory expects.
	
This can be improved by using a schema. The trick is to use something functional without overkill.
Eg:
	<element:animation type="IAnimation">
		<attribute:id type="string" />
		<attribute:type type="string" />
		<element:frame type="IAnimationFrame">
			<attribute:duration type="string" />
		</element>
	</element>
	
This becomes tricky when defining different rules for the same node name which might have different "types", although simple matching rules could be used:
Eg:
	<element:animation where:type="cell" type="ICellAnimation">
		<attribute:cells type="string" />
		<element:frame type="ICellAnimationFrame">
			<attribute:cell type="int" />
		</element:frame>
	</element:animation>

Although this does seem like re-inventing the wheel in that the structure is defined in the source code and in a schema, which hints at the possibility of code generation from the schema. XSD is built for this exact purpose but seems very top-heavy. A better solution is needed.

	

2011-01-08
Refactored config to be independet of source format with the intention of allowing different file formats (like CSV, INF) or a database to be used without having to re-write the config models.

Supporting a new config type is quite lengthy:
1. Add QName enum to XmlConfigEnum
2. Create an interface and factory to create the config
3. Create a model to store the config
4. Create an interface, factory and provider to create instances
5. Create the necessary models/views/controllers/facades/proxys/etc to implement the type

The intermediate config models in step 2 and 3 could be removed resulting in a simpler implementation, but with the side effect of parsing the (potentially massive and slow) config xml to create objects. Still think the resulting simplicity may pay off though.




2011-01-07
Just starting out, trying to figure out GIT for one thing