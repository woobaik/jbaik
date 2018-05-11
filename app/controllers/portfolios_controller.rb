class PortfoliosController < ApplicationController
  layout 'portfolios'
  access all: [:show, :index, :rubyonrails, :angular],
         user: {except: [:destroy, :new, :create, :edit, :update]},
         company_admin: :all

  def index
    @portfolios = Portfolio.all
    @page_title = "Jbaik's Portfolio"
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html {redirect_to portfolio_path(@portfolio), notice: "Your portfolio item is now live."}
      else
        format.html {render :new}
      end
    end
  end

  def show
    @portfolio = Portfolio.find(params[:id])
    @page_title = Portfolio.find(params[:id]).title
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html {redirect_to portfolio_path(@portfolio), notice: "Your portfolio item is now updated."}
      else
        format.html {render :edit}
      end
    end
  end

  def angular
    @portfolio_angular = Portfolio.angular
  end

  def rubyonrails
    @portfolio_ruby_on_rails = Portfolio.ruby_on_rails
  end

  def destroy
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
