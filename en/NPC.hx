package en;

import ldtk.Layer_Entities;

class NPC extends Entity {
    var data : Level_NPC;
    var ca : dn.heaps.Controller.ControllerAccess;
    public function new() {
        super(e.cx,e.cy);
    
        // Some default rendering for our character
        var g = new h2d.Graphics(spr);
        g.beginFill(0xff0000);
        g.drawRect(-8,-8,16,16);
    }

    override function update() { // the Entity main loop
        super.update();
    }
}



