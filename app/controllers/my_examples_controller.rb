class MyExamplesController < ApplicationController
  def fortune_method
    number = rand(4)
    if number == 0
      message = "Good luck"
    elsif number == 1
      message = "Bad luck"
    elsif number == 2
      message = "You don't want to know"
    else
      message = "Refresh"
    end

    render json: { fortune: message }
  end

  def winning_lotto
    array = [rand(60) + 1, rand(60) + 1, rand(60) + 1, rand(60) + 1, rand(60) + 1, rand(60) + 1]

    string = "#{array[0]} #{array[1]} #{array[2]} #{array[3]} #{array[4]} #{array[5]}"

    real_winner = [12, 13, 14, 15, 16, 17]

    render json: { winning_combo: string }
  end

  def refresh_page
  end
end
