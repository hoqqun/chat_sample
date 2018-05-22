class RoomsController < ApplicationController
  def show
    @messages = Message.all.order("created_at DESC").limit(50)
  end
end