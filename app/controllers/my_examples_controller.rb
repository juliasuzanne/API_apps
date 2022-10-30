class MyExamplesController < ApplicationController
  def fortune_method
    message = ["Good luck", "Bad luck", "You don't want to know", "Refresh"]

    render json: { fortune: message.sample }
  end

  def winning_lotto
    array = []
    6.times do
      num = rand(60) + 1
      array << num
    end

    string = "#{array[0]} #{array[1]} #{array[2]} #{array[3]} #{array[4]} #{array[5]}"

    real_winner = [12, 13, 14, 15, 16, 17]

    render json: { winning_combo: string }
  end

  def refresh_page
  end
end
