class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html {redirect_to portfolio_path(@portfolio), notice: "Your fortolio item is now live."}
      else
        format.html {render :new}
      end
    end
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
