existing_images =  Dir.entries("./downloaded_images/extend").reject{|file| file == "." || file == ".."}

existing_images.each do |filename|
  `convert downloaded_images/extend/#{filename} -resize 800x600 -background White -gravity center -extent 800x600 downloaded_images/extend/w_#{filename}`
end

