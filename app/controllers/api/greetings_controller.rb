class Api::GreetingsController < ApplicationController
  def random_greeting
    greeting = Message.order('RANDOM()').first

    if greeting
      render json: { greeting: greeting.greeting }
    else
      render json: { error: 'No greetings found' }, status: :not_found
    end
  end
end
