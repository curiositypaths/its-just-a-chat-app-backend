class Api::V1::MessagesController < ApplicationController
  def create
    message = Message.create(alias:params[:alias],message:params[:message])
    render json:message
  end

  def update
    message = Message.find(params[:id])
    message.update(alias:params[:alias],message:params[:message])
    message.save
    render json:message
  end

  def index
    message = Message.order(created_at:'desc')
    render json:message
  end
end
