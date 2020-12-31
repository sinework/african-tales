class ApplicationController < ActionController::Base
  
    helper_method :current_user, :logged_in?, :weather_info, :top_voted_article, :priority_categories, :top_of_category
  
    private
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def require_user
      redirect_to '/login' unless current_user
    end
  
    def logged_in?
      !current_user.nil?
    end
    
  
    def top_voted_article
      Article.top_voted
    end
  
    def top_of_category(category)
      Category.most_recent(category)
    end
  
    def priority_categories(limit = nil)
      Category.top_priority(limit)
    end
  end
  