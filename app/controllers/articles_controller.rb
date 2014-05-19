class ArticlesController < ApplicationController
    before_action:current_user

  def create
    new_article = Article.create(article_params)
    user_of_article = User.find(params[:user_id])
    user_of_article.articles << new_article
    redirect_to "/users/#{new_article.user_id}"
  end
  def show
    @result = params[:search_term]

  end
  def result

  end
  def search
  end

  #def save
  #  new_article = Article.create(article_name: require(:article).permit(:article_name), article_text: require(:article).permit(:article_text) )
  #  @current_user.articles << new_article
  #  redirect_to 'users/#{@current_user.id}'
  #end

end

private

def article_params
  params.require(:article).permit(:article_name, :article_text)
end
