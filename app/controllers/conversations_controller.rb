class ConversationsController < ApplicationController
  def new
    @prospect = Prospect.find(params[:prospect_id])
    @conversation = Conversation.new
  end

  def create
    @conversation = Conversation.new(conversation_params)
    @prospect = Prospect.find(params[:prospect_id])
    @conversation.prospect = @prospect
    if @conversation.save
      redirect_to prospect_path(@prospect)
    else
      render :new
    end
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
    redirect_to prospect_path(@conversation.prospect)
  end

  def update
    if @conversation.update(conversation_params)
      redirect_to ...
    else
      render :edit
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:content)
  end
end
