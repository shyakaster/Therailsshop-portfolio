module DefaultPageContent
  extend ActiveSupport::Concern
  included do
    before_filter :set_page_defaults
  end

  def set_page_defaults
      @page_title = " Portfolio | #{current_user.full_name}"
      @seo_keywords = "alex shyaka porfolio"
  end
end
