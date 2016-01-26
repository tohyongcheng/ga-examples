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
  end
end