class PagesController < ApplicationController
  def home
    @portfolio = Portfolio.all
  end

  def about
  end

  def contact
  end
end
