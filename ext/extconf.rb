require 'fileutils'

dest_folder = "./"

Dir["./ext/Makefile"].each do |filename|
  puts "Copying #{filename} to #{dest_folder}"
  FileUtils.cp(filename, dest_folder)
end
