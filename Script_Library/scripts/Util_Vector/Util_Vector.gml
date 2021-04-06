function Vec2(_x, _y) constructor {

	x = _x;
	y = _y;
	
	static copy = function() {
	
		return new Vec2(x, y);
	}
	
	static add = function(_v) {
	
		x += _v.x;
		y += _v.y;
		return self;
	}
	
	static sub = function(_v) {
	
		x -= _v.x;
		y -= _v.y;
		return self;
	}
	
	static scale = function(_s) {
	
		x *= _s;
		y *= _s;
		return self;
	}
	
	static len = function() {
	
		return point_distance(0, 0, x, y);
	}
	
	static dir = function() {
	
		return point_direction(0, 0, x, y);
	}
	
	static normalize = function() {
	
		var _len = len();
		x /= _len;
		y /= _len;
		return self;
	}
	
	static setLen = function(_len) {
	
		return normalize().scale(_len);
	}
	
	static setDir = function(_dir) {
	
		var _len = len();
		x = _len * dcos(_dir);
		y = -_len * dsin(_dir);
		return self;
	}
	
	static rotate = function(_deg) {
	
		return setDir(dir() + _deg);
	}
}