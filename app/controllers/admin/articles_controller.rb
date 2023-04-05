module Admin
  class ArticlesController < Admin::BaseController
    before_action :fetch_article, only: %i[show edit destroy]

    def index
        @pagy, @articles = pagy_array(Article.all)
    end

    def new
        @article = Article.new
    end

    def create
      @article = Article.new(article_params)
      
      if @article.save
          redirect_to admin_articles_path, notice: 'Article Created'
      else
          flash[:alert] = 'Article Creation Failed'

          render :new
      end
    end

    def show; end

    def edit; end

    def update
      if @article.update(article_params)
        redirect_to admin_articles_path, notice: 'Article Updated'
      else
        flash[:alert] = 'Article Update Failed'
        render :edit
      end
    end

    def destroy
      if @article.destroy
        redirect_to admin_articles_path, notice: 'Article Deleted'
      else
        redirect_to admin_articles_path, notice: 'Article is not deleted'
      end
    end

    private

    def fetch_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(
            :title,
            :image,
            :description,
            :content
        )
    end
  end
end
