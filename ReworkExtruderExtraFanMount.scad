//  Prusa i3 Rework Extruder Additional Fan Mounts Customizable
//
//  I printed the Prusa i3 Rework Extruder Upgrade.
//  http://www.thingiverse.com/thing:291291
//  It only had one fan mount which I used for the extruder
//  cold end fan shroud.  I wanted to add an additional
//  fan and shroud
//  http://www.thingiverse.com/thing:217253
//  to cool my PLA prints but had no way to mount both
//  fans.  So I created this little adapter that will 
//  allow two additonal fans to be added using the 
//  hot end mounting screws.  One will mount under the
//  big gear.  If you need another you can mount it on 
//  the other side.
//  
//  Problem solved.
//  
//  I printed in PLA .3 layer height
//
//  aBrainDump.com
//
//
//

// Pivot point length
pivotlength = 9.7; 

// Pivot point width
pivotwidth = 6;

/* [Hidden] */

// Distance between mounting holes
mountholedistance = 15;

$fn=20;
 
difference()
{
cube([27,2,7]);

rotate([90])
translate([6,3,-5])
cylinder(h=10,r=3.6/2);

rotate([90])
translate([21,3,-5])
cylinder(h=10,r=3.6/2);
}


difference()
{
translate([(27/2)-(pivotwidth/2),0,0])
cube([pivotwidth,pivotlength+3.3,7]);

translate([(27/2)-(pivotwidth/2),pivotlength+4.3,4])
rotate([45,0,0])
cube([6+pivotwidth,8,7]);

translate([(27/2)-(pivotwidth/2),pivotlength+4.3,-7])
rotate([45,0,0])
cube([6+pivotwidth,8,7]);

rotate([0,90])
translate([-3.5,pivotlength,9])
cylinder(h=10+pivotwidth,r=3.6/2);


}
