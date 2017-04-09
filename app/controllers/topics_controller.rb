class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @topic = Topic.new
  end

  def create
    Topic.create(topics_params)
    redirect_to topics_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def topics_params
      params.require(:topic).permit(:content)
    end
end
