package en;

import h2d.Text;

class TextBox extends Entity {
    var visible : Bool;
    var text : String;
    public function new(str:String)
    {
        super(10, 10);
        this.visible = false;
        this.cx = Std.int(0);
        this.cy = Std.int(0);
        var g = new h2d.Graphics(spr);
		g.beginFill(0xff0000);
        g.drawRect(16*level.wid/10, 16*level.hei/10, 16*4*level.wid/5, 16*4*level.hei/5);
        var tf = new h2d.Text(Assets.fontPixel, g);
        tf.text = str;

    }

    public function reveal()
        {
            this.visible = true;
        }
}