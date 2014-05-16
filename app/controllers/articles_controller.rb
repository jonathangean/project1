class ArticlesController < ApplicationController
  def create
    new_article = Article.create(article_params)
    user_of_article = User.find(params[:user_id])
    user_of_article.articles << new_article
    redirect_to "/users/#{new_article.user_id}"
  end
  def show
    @poems = Article.find(params[:id]).poems
  end
  def result

  end
  def search
    @result = params[:search_term]
  end
end

private

def article_params
  params.require(:article).permit(:article_name)
end
