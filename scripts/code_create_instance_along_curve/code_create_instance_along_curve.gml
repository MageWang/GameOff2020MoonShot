
function code_create_instance_along_curve(obj, x1, y1, x2, y2, x3, y3,start_angle, step){
	/// @desc Draws a bezier curve with 3 control points.
	/// @param x1 {Real} The X coordinate of the first control point.
	/// @param y1 {Real} The Y coordinate of the first control point.
	/// @param x2 {Real} The X coordinate of the second control point.
	/// @param y2 {Real} The Y coordinate of the second control point.
	/// @param x3 {Real} The X coordinate of the third control point.
	/// @param y3 {Real} The Y coordinate of the third control point.
	/// @author Kat @katsaii
	
	for (var i = 0; i <= 1; i += step) {
	    // get intermediate coordinates
	    var ix = lerp(x1, x2, i);
	    var iy = lerp(y1, y2, i);
	    var jx = lerp(x2, x3, i);
	    var jy = lerp(y2, y3, i);
	    // get final curve point
	    var bx = lerp(ix, jx, i);
	    var by = lerp(iy, jy, i);
	    instance_create_layer(bx,by,"Instances",obj)
	}
	
    
}