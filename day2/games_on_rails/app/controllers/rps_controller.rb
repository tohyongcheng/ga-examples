class RpsController < ApplicationController
  def play
  end

  def result
    @user_weapon = params[:weapon]
    @server_weapon = generate_server_weapon
    @result = generate_results(@user_weapon, @server_weapon)
  end

  private
  def generate_server_weapon
    ["rock", "paper", "scissors"].sample
  end

  def generate_results(user_weapon, server_weapon)
    # Your logic for determining results
    if user_weapon == server_weapon
      return "Draw"
    end

    winner_of = {
      "rock" => "paper",
      "paper" => "scissors",
      "scissors" => "rock"
    }

    if winner_of[server_weapon] == user_weapon
      return "Win"
    else
      return "Lose"
    end

  end
end