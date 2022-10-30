require "http"
require "tty-prompt"

def terminal
  prompt = TTY::Prompt.new
  page = prompt.select("What page would you like to visit?", %w(lotto fortune_path))
  response = HTTP.get("http://localhost:3000/#{page}")
  numbers = response.parse(:json)
  pp numbers
  yes_or_no = prompt.select("Would you like to continue?", %w(yes no))
  if yes_or_no == "yes"
    terminal
  else
  end
end

terminal
