class SecretNumberController < ApplicationController
  def guess
    # just render HTML
  end

  def result
    # params[:guess] is a string
    @result = params[:guess].to_i == generate_secret_number
  end

  private
  def generate_secret_number
    4 # it can be random here if you want
  end
end