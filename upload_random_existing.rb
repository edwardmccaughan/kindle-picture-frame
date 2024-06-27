require_relative 'download_upload_helper.rb'



def upload_random
  existing_images =  Dir.entries("./downloaded_images").reject{|file| file == "." || file == ".."}

  random_image = existing_images.sample
  # random_image = "bread.jpeg"

  puts random_image

  `cp 'downloaded_images/#{random_image}' kindle-picture-frame-image-unscaled.jpg`

  DownloadUploadHelper.convert_and_upload
end

while true
  upload_random
  sleep 600

end