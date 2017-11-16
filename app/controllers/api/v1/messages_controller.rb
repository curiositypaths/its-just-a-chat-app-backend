class Api::V1::MessagesController < ApplicationController
  def create
    @message = Message.create(alias:params[:alias],message:params[:message])
    render json:@message
  end
end
