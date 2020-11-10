package en;

import dn.Color;
import h2d.Text;

class TextBox extends Entity {
    var visible : Bool;
    var text : String;
    var wrapper : h2d.Object;
    var bg : h2d.Graphics;
    var tf : h2d.Text;
    var parent : Entity;
    public function new(str:String, parent:NPC)
    {
        super(parent.cx, parent.cy);
        this.visible = true;
        this.text = str;
        this.parent = parent;
        tf = new h2d.Text(Assets.fontPixel, new h2d.Graphics(parent.g));
        tf.alpha = 0;
        tf.text = str;
        tf.textAlign = Center;
        

    }

    public function reveal()
        {
            level.game.camera.trackTarget(parent, false);
            tf.alpha = 1;

        }

    override function update()
        {
            
        }

}