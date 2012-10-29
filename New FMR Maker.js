var filename = String(""); 
var projfls = this.readTextFile(filename);

function readTextFile(name) {
	var filecounter;
	BrainVoyagerQX.PrintToLog("Reading: " + name);
	var filenamesfile = new QFile(name);
	filenamesfile.open(new QIODevice.OpenMode(QIODevice.ReadOnly));
	var textstr = new QTextStream(filenamesfile);
	var nroffiles = parseInt(textstr.readLine());
	var no_slices = parseInt(textstr.readLine());
	var rows = parseInt(textstr.readLine());
	var resolution = parseInt(textstr.readLine());
	var i;
	for (i=0; i<nroffiles; i++) {	 
		var source_file = textstr.readLine();
		var no_volumes = textstr.readLine();
		var name = textstr.readLine();
		var save_path = textstr.readLine();
		var save_fileName = textstr.readLine();
		var docFMR = BrainVoyagerQX.CreateProjectMosaicFMR("DICOM", source_file , no_volumes, 0, false, no_slices, name, false, rows, rows, 2, save_path, 1, resolution, resolution);
		docFMR.SaveAs(save_fileName);
		docFMR.Close();
	}
filenamesfile.close();  
}
