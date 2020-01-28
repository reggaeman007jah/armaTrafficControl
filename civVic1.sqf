// civVic1Start = vic1Start;
// checkSpawn = true;
// checkDelete = false;

// while {true} do {

// 	if (checkSpawn) then {
// 		_V1Pos = getPos VIC1;
// 		_distStart = _V1Pos distance vic1Start;
// 		_distEnd = _V1Pos distance vic1Dest;

// 		if (_distStart > 3 && _distEnd < 20) then {
// 			CIVIC1 = createVehicle ["B_G_Offroad_01_armed_F", vic1Start, [], 0, "NONE"];
// 			createVehicleCrew CIVIC1;
// 			CIVIC1 move vic1Dest;
// 		};
// 		checkSpawn = false;
// 		checkDelete = true;
// 	};

// 	// if (checkDelete) then {
// 	// 	_civ1 = getPos CIVIC1;
// 	// 	_checkEnd = _civ1 distance vic1Dest;
// 	// 	if (_checkEnd < 10) then {
// 	// 		deleteVehicle CIVIC1;
// 	// 		checkSpawn = true;
// 	// 	};
// 	// };

// 	sleep 5;

// };

