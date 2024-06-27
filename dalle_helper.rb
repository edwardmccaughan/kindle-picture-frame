require 'openai'
require 'dotenv/load'

class DalleHelper
  def new

  end

  def image_url(prompt)
    client ||= OpenAI::Client.new(access_token: ENV.fetch('DALLE_KEY'))
    
    image_params = {
      prompt: prompt,
      model: "dall-e-3",
      size: "1024x1024",
      quality: "standard"
    }

    response = client.images.generate(parameters: image_params)
    response.dig("data", 0, "url")
  end
end