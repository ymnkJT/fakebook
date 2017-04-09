class TopicsController < ApplicationController
  before_action :set_topic, only: [:edit, :update, :destroy]

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
    @topic.update(topics_params)
    redirect_to topics_path
  end

  def destroy
    @topic.destroy
    redirect_to topics_path
  end

  private
    def topics_params
      params.require(:topic).permit(:content)
    end

    def set_topic
      @topic = Topic.find(params[:id])
    end
end
