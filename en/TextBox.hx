package en;

import hxd.Window;
import h2d.Object;
import dn.Color;
import h2d.Text;

class TextBox extends Entity {
    var visible : Bool;
    var text : Array<String>;
    var wrapper : h2d.Object;
    var bg : h2d.Graphics;
    var tf : h2d.Text;
    var parent : h2d.Object;
    var textIndex = 0;
    var flow : h2d.Flow;
    var window : ui.Window;

    public function new(str:Array<String>, cx:Int, cy:Int)
    {
        super(cx,cy);
        this.visible = true;
        this.text = str;
        this.parent = new h2d.Graphics(spr);

        tf = new h2d.Text(Assets.fontPixel, parent);
        tf.text = text[textIndex];
        tf.alpha = 0;
        tf.textAlign = Center;
        
        

    }
    
    public function next()
        {
            tf.alpha = 1;
            if (textIndex + 1 <= text.length) 
            {
                
                tf.text = text[textIndex];
                textIndex++;
                return false;
            }
            else 
            {
                textIndex = 0;
                tf.alpha = 0;
                return true;
            }
        }

}