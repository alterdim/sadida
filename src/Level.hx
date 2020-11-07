class Level extends dn.Process {
	public var game(get,never) : Game; inline function get_game() return Game.ME;
	public var fx(get,never) : Fx; inline function get_fx() return Game.ME.fx;

	public var level : World_Level;

	public var wid(get,never) : Int; inline function get_wid() return level.l_IntGrid.cWid;
	public var hei(get,never) : Int; inline function get_hei() return level.l_IntGrid.cHei;

	

	var invalidated = true;

	public function new(l:World_Level) {
		super(Game.ME);
		createRootInLayers(Game.ME.scroller, Const.DP_BG);
		level = l;
	}

	public inline function isValid(cx,cy) return cx>=0 && cx<wid && cy>=0 && cy<hei;
	public inline function coordId(cx,cy) return cx + cy*wid;


	public function render() {
		// Debug level render
		root.removeChildren();
		for(cx in 0...wid)
		for(cy in 0...hei) {
			var g = new h2d.Graphics(root);
			if (level.l_IntGrid.getInt(cx, cy) == 0) {
				g.beginFill(Color.makeColor(1, 0, 0));
			}
			else {
				g.beginFill(Color.makeColor(0, 1, 0));
			}
			g.drawRect(cx*Const.GRID, cy*Const.GRID, Const.GRID, Const.GRID);
		}
	}

	override function postUpdate() {
		super.postUpdate();

		if( invalidated ) {
			invalidated = false;
			render();
		}
	}
}