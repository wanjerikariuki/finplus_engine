require_dependency "blogger/application_controller"
module Blogger
  class ArticlesController < ApplicationController
    #before_action :set_article, only: %i[ show edit update destroy ]

    # GET /articles
    def index
      @articles = Article.all
    end

    # GET /articles/1
    def show
      @article = Article.find(params[:id])
    end

    # GET /articles/new
    def new
      @article = Article.new()
    end


    def edit
      @article = Article.find(params[:id])
    end


    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to @article, notice: "Article was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end


    def update
      @article = Article.find(params[:id])

      if @article.update(article_params)
        redirect_to @article
      else
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /articles/1
    def destroy
      @article = Article.find(params[:id])
      @article.destroy
      redirect_to articles_url, notice: "Article was successfully destroyed."
    end

    private
    #   def set_article
    #     @article = Article.find(params[:id])
    #   end


      def article_params
        params.require(:article).permit(:title, :text, :author_name)
      end
  end
end
