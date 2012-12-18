# Define readTextFile function to read contents of text file
# Function will extract information and set variables for it

readTextFile = (name) ->
  # Print "Reading textfile.txt" to the BrainVoyager log pane so that the user knows the script is going.
  BrainVoyagerQX.PrintToLog "Reading: " + name
  
  # Setup file to read
  filenamesfile = new QFile(name)
  
  # Open the file
  filenamesfile.open new QIODevice.OpenMode(QIODevice.ReadOnly)
  
  # Set a variable to the text of the file
  textstr = new QTextStream(filenamesfile)
  
  # Set a variable to the total number of lines in the document (i.e. whatever the first line says)
  # This is to keep track of where we are in the file and to be able to iterate line by line
  nroffiles  = parseInt(textstr.readLine())
  
  # Set number of slices to next line, rows to next line, etc.
  no_slices  = parseInt(textstr.readLine())
  rows       = parseInt(textstr.readLine())
  resolution = parseInt(textstr.readLine())
  
  i = 0
  
  # While loop: do stuff until the counter is equal to the total number of lines in the document
  # This loop goes through each line of the document and searches it using regular expressions to figure out which variables to set and store
  while i < nroffiles
    # Set variables for source file, number of volumes, etc.
    source_file   = textstr.readLine()
    no_volumes    = textstr.readLine()
    name          = textstr.readLine()
    save_path     = textstr.readLine()
    save_fileName = textstr.readLine()

    # Make the FMR file
    docFMR = BrainVoyagerQX.CreateProjectMosaicFMR("DICOM", source_file, no_volumes, 0, false, no_slices, name, false, rows, rows, 2, save_path, 1, resolution, resolution)

    # Save document
    docFMR.SaveAs save_fileName
    
    # Close FMR file
    docFMR.Close()
    i++
  
  # Close the text file
  filenamesfile.close()

# Set the path of the text file that needs to be read
filename = String("")

# Run the function (i.e. start making the FMR files)
projfls = @readTextFile(filename)