// Remix of Smart compact temperature calibration tower by gaaZolee
// This OpenSCAD script uses the components in original design to generate a parametrizable tower (tmin, tmax, tstep)
//
// V4 2023-02-05
// Added the possibility of generating Prusa slicer custom code for automatic temperature stepping

// Pertti Tolonen 2018

// Configure the min&max temp + floor-to-floor temp step 
// NOTICE: If tfirst > tlast, tstep must be negative
tfirst=225;
tlast=190;
tstep=-5;

// Set true, if you want to have the Prusa slicer custom code echoed to the console output.
// Copy-paste the ECHO:-lines to printer settings - Custom G-code -Before Layer Change G-code AND remove 'ECHO: "'-prefixes and '"'-suffix.
gen_layer_change_Gcode=false;

// Define module for the "floor"
module TempFloor(temp){
difference(){
    // The floor body
    translate([-113,-100,0]) // move to origin
    import("SmartTemperatureTower_TempFloor.stl");

    // Parametrized temperature text
    rotate([90,0,0])
    translate([12,1,-0.5])
    linear_extrude(height=1,center=false)
    text(str(temp),size=3);
}
}

// The top-level code

floors=abs((tfirst-tlast)/tstep)+1; // Calculate # floors

union(){
// Instantiate the "base" and move it to origin
translate([-113,-100,0])
import("SmartTemperatureTower_Stand_fixed.stl");
for(i=[0:(floors-1)]){
    //if (gen_layer_change_Gcode)
    if (i > 0 && gen_layer_change_Gcode){
        echo(str("{if layer_z>=",(1.4+10*i),"}M104 S",(tfirst+i*tstep),"; change temp to ",(tfirst+i*tstep)," at height ",(1.4+10*i),"{endif}"));
    }
    translate([0,0,1.4+10*i])
    TempFloor(str(tfirst+i*tstep));
}
}