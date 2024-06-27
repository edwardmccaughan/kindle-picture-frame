class PromptGenerator
  def initialize

  end

  def generate_funny_concept
    "#{random_prompt_prefix}, #{funny_words.sample},#{funny_words.sample},#{funny_words.sample}"
  end

  def funny_words
    [
      "cult", "squirrel", "fire", "kitchen utensils", "dumpster fire", "rave",
      "burning man", "apocalypse", "waffles", "fruit", "vegetables", "queer",
      "zoo","mountains","forest","space","moon","punk","trumpet",
      "wizards","cookie monster","muppets","cuddle party","jam",
      "robot","steampunk","cyberpunk","coins","tarot symbol","butterfly",
      "molecules","superhero","angels","devil","wobbly","waves","disco",
      "organic","enlightenment","candles","dancing","fireworks","quantumn",
      "anthropomorphic","volcano","sloth","solarpunk","fighting","daft punk",
      "cat","flowers", "bear", "made of flowers", "made of circuits", "made of stars",
      "clockwork", "heart","happy", "theatre", "bread", "octopus", "witch",
      "art deco", "happy", "cute", "cubist", "dogs", "cats", "surrealist", "orchestra",
      "train", "dinosaurs", "angel", "cathedral", "love", "circles",
      "heart", "fire", "crystals", "tarot", "afrofuturism", "retrofuturism",
      "squirrel"    ]
  end

  # TODO: automate this by pulling from reddit.com/r/upplifting_news
  def generate_uplifting_news
    "minimalist monochrome vector, Tiny US fire department using 1980s gear surprised by $500,000 donation"
    "minimalist monochrome vector, Liechtenstein legalizes same-sex marriage in near-unanimous vote"
    "minimalist monochrome vector, Developers Offered a Texas Family Millions for Their Land. They Chose to Make It a Park Instead"
    "minimalist monochrome vector, Vaccine breakthrough means no more chasing strains"
  end

  def prompt_prefixes
    [
      "charcoal drawing",
      "collotype print",
      "Lithography print",
      "Melainotype print",
      "scratchboard style drawing",
      "a technical drawing",
      "4 bit greyscale line art, white background",
      "minimalist monochrome vector",
      "minimalist tattoo design, white background", # sometimes shows pens and paper doing the drawing
      "a tattoo design with a white background",
      "a white abstract design with a black background"
    ]
  end

  def random_prompt_prefix
    prompt_prefixes.sample
  end
end


