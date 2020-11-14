package en;

import h2d.Flow;
import ui.Window;
import h2d.Text;
import dn.Color;
import h3d.mat.Data.MipMap;
import ldtk.Layer_Entities;

class NPC extends Entity {
    public static var ALL : Array<NPC> = [];
    var data : World.Entity_NPC;
    var wrapper : h2d.Object;
	var bg : h2d.ScaleGrid;
	var tf : h2d.Text;
    var ca : dn.heaps.Controller.ControllerAccess;
    public var textBox : TextBox;
    public var textVisible = true;
    public var g : h2d.Graphics;
    
    public function new(e:World.Entity_NPC) {
        super(e.cx,e.cy);
        ca = Main.ME.controller.createAccess("npcs");
        ALL.push(this);
        data = e;
        
    
        // Some default rendering for our character
        g = new h2d.Graphics(spr);
        g.beginFill(0xff0000);
        g.drawRect(-8,-8,16,16);

        this.attachText(data.f_TextArray);
    }

    public function attachText(s:Array<String>)
        {
            this.textBox = new TextBox(s, cx, cy);
        }

    override function update() { // the Entity main loop
        super.update();
        }



}
