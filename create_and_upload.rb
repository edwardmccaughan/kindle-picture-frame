require 'net/http'
require_relative 'prompt_generator.rb'
require_relative 'download_upload_helper.rb'
require_relative 'dalle_helper.rb'

prompt = PromptGenerator.new.generate_funny_concept
puts "prompt: #{prompt}"

url = DalleHelper.new.image_url(prompt)

DownloadUploadHelper.download_image(url)
DownloadUploadHelper.convert_and_upload