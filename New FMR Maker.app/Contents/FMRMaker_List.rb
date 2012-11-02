PATH = ARGV[0]
textfile_name = ARGV[1]
slice_number = ARGV[2]
row_number = ARGV[3]
resolution = ARGV[4]

textfile_name = textfile_name + ".txt"

# This gets all the files inside of the parent file and excludes dotfiles and extra stuff
def all_children_except(parent_folder, extra_regex = '')
  regex = '^\.'
  regex += '|' + extra_regex unless extra_regex.empty?

  Dir.entries(parent_folder).reject { |file| file =~ Regexp.new(regex) }.map { |file| File.expand_path(file, parent_folder) }
end

subjects = []

# is this a single subject?
if all_children_except(PATH).any? { |child_dir| child_dir =~ /EPI/ }
  subject_directories = [PATH]
else
  subject_directories = all_children_except(PATH)
end

subject_directories.each do |dir|
  subjects << { :base_path => dir }
end

subjects.each do |subject|
  subject[:fmr_source_files] = []
  subject[:volumes] = []
  subject[:names] = []
  subject[:run_folders] = []
  
  id = File.basename(subject[:base_path])
  bv_folder = "_BV-#{id}"
  # Make _BV directory
  Dir.mkdir(File.join(subject[:base_path], bv_folder)) unless File.exists?(File.join(subject[:base_path], bv_folder))
  
  run_folders = all_children_except(subject[:base_path], '1_localizer|2_Trufi')
  
  run_folders.each do |run_folder|
    if run_folder =~ /EPI/
      subject[:names] << run_folder.match(/EPI_(.*)/)[1]
      subject[:fmr_source_files] << all_children_except(run_folder).first
      subject[:volumes] << all_children_except(run_folder).grep(/\.dcm/).size
      subject[:run_folders] << run_folder
    end
  end
end

all_source_files = subjects.map { |subject| subject[:fmr_source_files] }.flatten

output = []
subjects.each do |subject|
  subject[:names].each_with_index do |name, i|
    bv_path = File.join(subject[:base_path], '_BV-')
    id = File.basename(subject[:base_path])
    bv_folder = "#{bv_path}#{id}"
    save_path = "#{bv_folder}/#{id}_#{name}.fmr"
    fmr_filename = "#{id}_#{name}.fmr"
    # output << [subject[:fmr_source_files][i], name, bv_folder, fmr_filename, subject[:run_folders][i]]
    output << [subject[:fmr_source_files][i], subject[:volumes][i], name, bv_folder, fmr_filename]
  end
end

text_file = File.new(textfile_name, "w")
  text_file.puts(all_source_files.size)
  text_file.puts(slice_number)
  text_file.puts(row_number)
  text_file.puts(resolution)
  # text_file.puts(all_fmr_files)
  # text_file.puts("TARGETFMRs")
  text_file.puts(output)
text_file.close

send_path = []
send_path << textfile_name

print send_path