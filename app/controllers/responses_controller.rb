class ResponsesController < ApplicationController 
def index
      
  end  

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(responses_params)

    if @poll.save
      flash[:success] = 'Response Created'
      redirect_to root_path
    else
      flash[:error] = 'Failed to create Response'
      render :new
    end
  end

  def show
    @response = Response.find(params[:id])
    if !logged_in?
      redirect_to auth_provider_path
    end
  end

  def edit
    
  end

  def update
    
  end

  private

  def responses_params
    params.require(:response).permit!
  end


end
end