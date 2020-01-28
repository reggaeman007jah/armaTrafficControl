_randomDelay = selectRandom [1,2,3,4,5];
sleep _randomDelay;

// VIC2 = createVehicle ["B_Truck_01_cargo_F", vic2Start, [], 0, "NONE"];
// createVehicleCrew VIC2;

VIC2 move vic2Dest;

// B_Truck_01_transport_F

// VIC1 inArea thisTrigger;VIC1 setpos spawn1;