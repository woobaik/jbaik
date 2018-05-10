module PageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_default_title
    # '@page_title' in "application.html.erb"
    def set_default_title
      @page_title = "Welcome to My Page"
    end
  end
end
