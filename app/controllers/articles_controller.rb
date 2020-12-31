class ArticlesController < ApplicationController
  include ApplicationHelper

  before_action :set_article, only: %i[show edit update destroy]
  before_action :require_user, only: %i[new create update edit]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show; end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit; end

  # POST /articles
  # POST /articles.json
  def create
    @article = current_user.articles.build(article_params)
    if @article.valid? && @article.save
      if params[:category].nil?
        Tag.create(article_id: @article.id, category_id: 5)
      else
        params[:category].each do |cid|
          Tag.create(article_id: @article.id, category_id: cid)
        end
      end
      redirect_to new_article_path, notice: 'article Created Successfully'
    else
      render 'new'
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:author_id, :title, :text, :image, :vote_count)
  end
end
