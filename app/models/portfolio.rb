class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  after_initialize :set_default

  def set_default
    self.main_image ||= "http://via.placeholder.com/350x150"
    self.thumb_image ||= "http://via.placeholder.com/350x100"
  end
end
