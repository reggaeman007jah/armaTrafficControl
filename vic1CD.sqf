
colDetect = true;
waitSafe = false;

while {true} do {
	
	if (colDetect) then {
		_relpos = VIC1 getRelPos [20, 0];
		_azimuth = getDir VIC1;
		deleteMarker "_V1CD";
		_V1CD = createMarker ["_V1CD", _relpos];
		"_V1CD" setMarkerSize [4, 4];
		"_V1CD" setMarkerColor "ColorRed";
		"_V1CD" setMarkerShape "RECTANGLE";
		"_V1CD" setMarkerDir _azimuth;

		_potImpact = allUnits inAreaArray "_V1CD";
		_potImpactCnt = count _potImpact;
		
		if (_potImpactCnt >=1) then {
			// systemChat "IMPACT AHOY";
			doStop VIC1;
			(driver VIC1) forceWeaponFire [currentWeapon VIC1, currentWeapon VIC1];
			colDetect = false;
			waitSafe = true;
		};
	};

	if (waitSafe) then {
		_potImpact = allUnits inAreaArray "_V1CD";
		_potImpactCnt = count _potImpact;

			if (_potImpactCnt <1) then {
			// systemChat "NO IMPACT DETECTED MOVE ON";
			VIC1 doMove vic1Dest;;
			waitSafe = false;
			colDetect = true;
		};
	};

	sleep 0.2;
};
