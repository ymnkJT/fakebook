class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @topic = Topic.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
