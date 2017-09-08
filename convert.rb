system "cls"
string = <<OEF


  #############################################
  ######## For DJI GRONES GEORGIA USERS #######
  ########  H.265 to H.264 Convertor    #######
  ########      By Gocha Okradze        #######
  ########    First Version V0.1 Test   #######
  #############################################


OEF

puts string

puts "List of files in 'input' directory: "
puts ""
puts "##########################################"
puts


Dir.foreach("input/") {|files| puts files}


puts
puts "###########################################"
puts

puts "Follow instruction for converting your media file: "

puts "Please type file name with extension:   example ('inputfile.mov') and press 'Enter'"

puts
print "Type input filename: "

input = gets.chomp

system "cls"
puts string
puts "Please type output file name with extension. example('outputFile.mov') and press 'Enter'"
puts
print "Type output filename: "
output = gets.chomp
puts
puts string
puts "If you do not want convert file please press hotkey 'CTRL + C'"

system "ffmpeg\\bin\\ffmpeg -i input\\#{input} -an -vcodec libx264 -crf 23 output\\#{output}"

system "cls"
puts string
puts
puts "Converting Done! Good luck :)"
