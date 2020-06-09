class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: {generated: Time.now, data: birds, bird_count: birds.length}
  end
end
