class BirdsController < ApplicationController
  def index
    ## can be an instance @birds but doesn't have to since we're not working with ERB
    birds = Bird.all
    render json: birds
    
    ## render PLAIN TEXT: 
    # render plain: "Hello #{@birds[3].name}"
    
    ## render JSON - string
    # render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    
    ## render JSON - hash
    # render json: { message: 'Hashes of data will get converted to JSON' }
    
    ## render JSON - array
    # render json: ['As','well','as','arrays']
    
    ## render JSON - object with two keys each pointing to an array
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
    ## can also explicitly add .to_json at the end but don't have to cuase Rails implicitly does it
    # render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json   
  end
end
