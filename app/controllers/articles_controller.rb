class ArticlesController < ApplicationController
    before_filter :authorize
  def index
  end

  def new
  end

  def create
    new_article = Article.create(article_params)
    current_user.articles << new_article
    redirect_to "/users/#{current_user.id}"
  end
  def show
    @article = Article.find(params[:id])
  end
  def result
    @article = Wikipedia::article(params[:search_term])
  end

  def search
    render 'result'
  end

  #def save
  #  new_article = Article.create(article_name: require(:article).permit(:article_name), article_text: require(:article).permit(:article_text) )
  #  @current_user.articles << new_article
  #  redirect_to 'users/#{@current_user.id}'
  # end

end

private

def article_params
  params.require(:article).permit(:article_name, :article_text)
end
