package en;

class Hero extends Entity {

    var ca : dn.heaps.Controller.ControllerAccess;
    public var g : h2d.Graphics;
    public var blocked = false;

	public function new(x,y) {
		super(x,y);

		// Some default rendering for our character
		g = new h2d.Graphics(spr);
		g.beginFill(0xff0000);
        g.drawRect(-8,-8,16,16);
        ca = Main.ME.controller.createAccess("hero"); // creates an instance of controller
        this.level.setHero(this);
    }
    
    override function dispose() { // call on garbage collection
		super.dispose();
		ca.dispose(); // release on destruction
	}

	override function update() { // the Entity main loop
		super.update();

        if (!blocked) {
            if( ca.leftDown() || ca.isKeyboardDown(hxd.Key.LEFT) ) {
                dx -= 0.07*tmod;
            }
    
            if( ca.rightDown() || ca.isKeyboardDown(hxd.Key.RIGHT) ) {
                dx += 0.07*tmod;
            }
    
            if( ca.downDown() || ca.isKeyboardDown(hxd.Key.DOWN) ) {
                dy += 0.07*tmod;
            }
    
            if( ca.upDown() || ca.isKeyboardDown(hxd.Key.UP) ) {
                dy -= 0.07*tmod;
            }
    
            if (ca.aDown() || ca.isKeyboardDown(hxd.Key.SPACE)) {
                for (np in NPC.ALL ) 
                    {
                        if (this.overlaps(np)) {
                            np.textBox.reveal();
                            blocked = true;
                        }
                    }
            }
        }
        
	}
}