class ResponsesController < ApplicationController   

  def new
    @poll=Poll.find(params[:poll_id])
    @response = Response.new
  end

  def create
    @poll = Poll.find(params[:poll_id])
    @response = @poll.responses.build(params.require(:response).permit!)
    @response.user = current_user

    if @response.save
      flash[:success] = 'Response Created'
      redirect_to poll_path(params[:poll_id])
    else
      flash[:error] = 'Failed to create Response'
      render :new
    end
  end

  private

  def responses_params
    params.require(:response).permit!
  end


end