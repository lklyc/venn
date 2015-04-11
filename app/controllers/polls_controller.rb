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