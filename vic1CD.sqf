
colDetect = true;
waitSafe = false;

while {true} do {
	
	// _azimuth = getDir VIC1;
	// // systemChat str _azimuth;
	// _ahead15 = 

	if (colDetect) then {
		_relpos = VIC1 getRelPos [20, 0];
		// systemChat str _relpos;
		deleteMarker "_V1CD";
		_V1CD = createMarker ["_V1CD", _relpos];
		"_V1CD" setMarkerSize [10, 10];
		"_V1CD" setMarkerColor "ColorRed";
		"_V1CD" setMarkerShape "ELLIPSE";

		_potImpact = allUnits inAreaArray "_V1CD";
		_potImpactCnt = count _potImpact;
		
		if (_potImpactCnt >1) then {
			systemChat "IMPACT AHOY";
			doStop VIC1;
			colDetect = false;
			// waitSafe = true;
		};
	};

	if (waitSafe) then {
		_potImpact = allUnits inAreaArray "_V1CD";
		_potImpactCnt = count _potImpact;

			if (_potImpactCnt <1) then {
			systemChat "NO IMPACT DETECTED MOVE ON";
			VIC1 doMove vic1Dest;;
			waitSafe = false;
			colDetect = true;
		};
	};

	sleep 0.2;
};
