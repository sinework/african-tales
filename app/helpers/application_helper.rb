module ApplicationHelper
  # rubocop:disable Layout/LineLength
  def signed_in_only!
    redirect_to new_user_session_path unless current_user
  end

  def navigation_buttons
    link = capture { link_to 'Home', articles_path, class: 'py-2 px-3 header-links text-decoration-none' }
    priority_categories(5).each do |category|
      link << capture { link_to category.name, category_path(category), class: 'py-2 px-3 header-links text-decoration-none' }
    end
    link << separetor if logged_in?
    if logged_in?
      link << capture { link_to 'Create new article', new_article_path, class: 'py-2 px-3 header-links text-decoration-none' }
    end
    link
  end

  def user_status
    links = []
    if logged_in?
      links[0] = link_to 'New Article', new_article_path, class: 'header-links border-right pr-1'
      links[1] = link_to 'Log out', logout_path, method: 'delete', class: 'header-links'

    else
      links[0] = link_to 'Login', login_path, class: 'header-links border-right pr-1'
      links[1] = link_to 'Sign Up', signup_path, class: 'header-links'
    end
    links
  end

  def separetor
    content_tag(:ins, '|', class: 'd-none d-md-block')
  end

  def sidebar_login
    return if logged_in?

    if params[:q] == 'sign up'
      render '/users/sign_up'
    else
      render '/sessions/login'
    end
  end

  def image_render(article)
    return image_tag('none.png', class: 'card-img card-img-top') unless defined? article.image

    if article.image?
      image_tag(article.image.url, class: 'card-img card-img-top')
    else
      image_tag('none.png', class: 'card-img card-img-top')
    end
  end

  def render_image(article); end

  def imager(article)
    article.image
  end

  def image_renderer(article)
    return 'none.png' unless defined? article.image

    if article.image?
      url_for(top_voted_article.image)
    else
      'none.png'
    end
  end

  def extract_title(article)
    if defined? article.title
      article.title
    else
      'No article titles found here'
    end
  end

  def extract_text(article)
    if defined? article.text
      article.text
    else
      'No article texts found here'
    end
  end

  def edit_access(article)
    link_to 'edit', edit_article_path(article), class: 'btn theme-bg-2 text-white mt-3' if current_user == article.user
  end

  def show_article_content(article)
    render partial: 'show', locals: { article: article }
  end
  # rubocop:enable Layout/LineLength
end
