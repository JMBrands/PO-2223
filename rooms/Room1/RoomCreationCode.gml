global.tx1 = ds_grid_create(16,16);
for (var i=0;i<16;i++){
	for (var j=0;j<16;j++){
		ds_grid_set(global.tx1,i,j,[0,255,128])
	}
}
for (var i = 0; i < 16; i += 4) { 
	for (var j = 0; j < 16; j++) {
		ds_grid_set(global.tx1,j,i,[43,6,128]);
	}
}
var a = 7;
var b = 1;
for (var i = 0;i<3;i++) {
	ds_grid_set(global.tx1,a,b+i,[43,6,128]);
}
a = 2;
b = 5;
for (var i = 0;i<3;i++) {
	ds_grid_set(global.tx1,a,b+i,[43,6,128]);
}
a = 10;
b = 5;
for (var i = 0;i<3;i++) {
	ds_grid_set(global.tx1,a,b+i,[43,6,128]);
}
a = 5;
b = 9;
for (var i = 0;i<3;i++) {
	ds_grid_set(global.tx1,a,b+i,[43,6,128]);
}
a = 12;
b = 9;
for (var i = 0;i<3;i++) {
	ds_grid_set(global.tx1,a,b+i,[43,6,128]);
}
a = 3;
b = 13;
for (var i = 0;i<3;i++) {
	ds_grid_set(global.tx1,a,b+i,[43,6,128]);
}
a = 14;
b = 13;
for (var i = 0;i<3;i++) {
	ds_grid_set(global.tx1,a,b+i,[43,6,128]);
}