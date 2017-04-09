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
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    @topic.update(topics_params)
    redirect_to topics_path
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

  private
    def topics_params
      params.require(:topic).permit(:content)
    end
end
