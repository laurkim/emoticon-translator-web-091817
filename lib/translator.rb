# require modules here

def load_library(emojis)
  # code goes here
  require "yaml"
  emojis = YAML.load_file('./lib/emoticons.yml')
  hash = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emojis.each do |meaning, emoji|
    hash["get_meaning"][emoji[1]] = meaning
    hash["get_emoticon"][emoji[0]] = emoji[1]
  end
  hash
end

def get_japanese_emoticon(file, emoji)
  # code goes here
  hash = load_library(file)
  if hash["get_emoticon"].has_key?(emoji)
    hash["get_emoticon"][emoji]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file, emoji)
  # code goes here
  hash = load_library(file)
  if hash["get_meaning"].has_key?(emoji)
    hash["get_meaning"][emoji]
  else
    "Sorry, that emoticon was not found"
  end
end
