class MagicBallController < ApplicationController
  def result
    @magic_answer = generate_random_response
    some_variable = "some variable"
    # puts @magic_answer
    # if params[:question] == "some string"
    #   @cheebaaabom = "some random value"
    # end
  end

  private
  def generate_random_response
    all_responses = [
      "Thou shall not pass",
      "I guess so...",
      "Maybe. Just maybe.",
      "Probably... Or not.",
      "I am a magic ball, and you are not.",
      "Whatever you want"
    ]
    all_responses.sample # select a random element 
  end
end