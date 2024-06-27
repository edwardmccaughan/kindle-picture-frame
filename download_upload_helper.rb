class DownloadUploadHelper
  def self.download_image(image_url)
    puts "downloading: #{image_url}"
    file_data = Net::HTTP.get(URI.parse(image_url))

    File.write("downloaded_images/#{Time.now.strftime('%Y-%m-%d-%k-%M')}.jpg", file_data)
    File.write("kindle-picture-frame-image-unscaled.jpg", file_data)
  end

  def self.convert_and_upload
    puts "converting"
    
    convert_command = "convert kindle-picture-frame-image-unscaled.jpg -rotate 270 -resize 600x800 -background White " +
              "-gravity Center -extent 600x800 -depth 8 -colorspace gray -define png:color-type=0 " +
              "-define png:bit-dept=4 kindle-picture-frame-image.png"
    system(convert_command)

    puts "uploading"

    upload_command = "scp kindle-picture-frame-image.png #{ENV.fetch('IMAGE_DOMAIN')}:#{ENV.fetch('IMAGE_DOMAIN_FILEPATH')}"
    system(upload_command)
  end
end
