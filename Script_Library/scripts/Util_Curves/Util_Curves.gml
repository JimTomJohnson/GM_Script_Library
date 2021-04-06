function curveValueAt(_curve, _pos) {

	var _curveStruct = animcurve_get(_curve);
	var _channel = animcurve_get_channel(_curveStruct, 0);
	return animcurve_channel_evaluate(_channel, _pos);
}

function curveChannelValueAt(_curve, _channel_name, _pos) {

	var _curveStruct = animcurve_get(_curve);
	var _channel = animcurve_get_channel(_curveStruct, _channel_name);
	return animcurve_channel_evaluate(_channel, _pos);
}