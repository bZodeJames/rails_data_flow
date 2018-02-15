class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]


    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def show
    end

    def create
        @article = Article.new(article_params)

        respond_to do |format|
            if @article.save
                format.html { redirect_to @article, notice: "Your article has been published" }
            else
                format.html { render :new }
            end
        end
    end

    def edit
    end

    def update
        respond_to do |format|
            if @article.update(article_params)
                format.html { redirect_to @article, notice: "Your article has been updated" }
            else
                format.html { render :edit }
            end
        end
    end

    def destroy
        @article.destroy
        respond_to do |format|
            format.html { redirect_to articles_url, notice: "Your article was deleted"}
        end
    end

    private

    def article_params
        params.require(:article).permit(:title,
                                        :author,
                                        :body,
                                        :rating
                                        )
    end

    def set_article
        @article = Article.find(params[:id])
    end
end
