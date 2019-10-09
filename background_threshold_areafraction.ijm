/*
 * this macro subtracts the background, threshold, and measures the area fraction
 * 2019-10-09: create YL 
 */
// clean up work space 
run("Close All");

// laod data
run("Cell Colony (31K)");

// subtract background
run("Subtract Background...", "rolling=100 light sliding");

// Threshold 
setAutoThreshold("Otsu dark");
setOption("BlackBackground", true);
run("Convert to Mask");

// Masure
run("Set Measurements...", "area_fraction display redirect=None decimal=3");
run("Analyze Particles...", "clear summarize");
