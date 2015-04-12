class PollsController < ApplicationController
  
  def index
      
  end  

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(polls_params)

    if @poll.save
      flash[:success] = 'Poll Created'
      redirect_to root_path
    else
      flash[:error] = 'Failed to create Poll'
      render :new
    end
  end

  def show
    @poll = Poll.find(params[:id])
    #1. check if logged in
    if !logged_in?
      # store poll_id so sessions controller know where to redirect after login
      session[:poll_id] = @poll.id
      redirect_to auth_provider_path
    end


    if !voted?
      redirect_to new_poll_response_path(params[:id])
    end



    # find number of possible answers
    possibleAnswers = @poll.answer_hash.split(',')
    # get all responses
    responses = @poll.responses
    # build chartkick hash, needs to be an instance variable for view access
    @plot_data = []
    possibleAnswers.each do |answer|
      @plot_data << [answer,0]
    end

    responses.each do |response|
      @plot_data[response.ah_index][1] += 1
    end
  end

  def edit
    
  end

  def update
    
  end

  private

  def polls_params
    params.require(:poll).permit!
  end


end