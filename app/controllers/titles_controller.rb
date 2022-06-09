class TitlesController < ApplicationController
  before_action :set_title, only: [:show, :edit, :update, :destroy]

  def index
    @titles = Title.all.order(:name => :asc)
    title_params.each do |key, value|
      @titles = @titles.public_send("filter_by_#{key}", value) if value.present?
    end
  end

  def show
  end

  def new
    @title = Title.new
  end

  def edit
  end

  def create
    @title = Title.new(title_params)
    if @title.save
      flash[:notice] = "Title was created successfully"
      redirect_to title_path(@title)
    else
      render "new"
    end
  end

  def update
    if @title.update(title_params)
      flash[:notice] = "Title was updated successfully"
      redirect_to @title
    else
      render "edit"
    end
  end

  def destroy
    @title.destroy
    redirect_to titles_path
  end

  private

  def set_title
    @title = Title.find_by(id: params[:id])
  end

  def title_params
    params.permit(:name, :description, :director, :cast, :country, :release_year, :rating, :duration, :media_type)
  end
end
