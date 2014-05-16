class PoemsController < ApplicationController
  def show
    @poem = Article.poems(params[:id])
  end
end
