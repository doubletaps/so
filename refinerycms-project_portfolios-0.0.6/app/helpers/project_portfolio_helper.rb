module ProjectPortfolioHelper
  def render_title(portfolio)
    "<h3>#{portfolio.title}</h3>".html_safe if !portfolio.title.blank?
  end
  
  def render_thumbnail(portfolio)
    portfolio_thumbnail_size = RefinerySetting.find_or_set(:portfolio_thumbnail_size, '126x80#c', :destroyable => false)
    image_fu portfolio.thumbnail, portfolio_thumbnail_size
  end

  def render_image(portfolio)
    popup_image_size = RefinerySetting.find_or_set(:portfolio_popup_image_size, '300x300>', :destroyable => false)
    image_fu portfolio.image, popup_image_size
  end

end