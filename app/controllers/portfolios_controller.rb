class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only:[:edit, :update,:destroy,:show]
	layout 'portfolio'
	access all: [:show, :index, :angular_portfolio_items], user: {except: [:destroy,:new,:create,:update, :edit]}, site_admin: :all
	def index
		@portfolio_items = Portfolio.by_position
		# Not a good idea to put database queries into the controller
		# @portfolio_items = Portfolio.where(subtitle: "AngularJS")
		@page_title = " My Portfolios"
	end
	def sort
	params[:order].each do |key, value|
		Portfolio.find(value[:id]).update(position: value[:position])
	end

	render nothing: true
end
	def angular_portfolio_items
		@angular_portfolio_items = Portfolio.the_angular_items
	end

	def rails_portfolio_items
		@rails_portfolio_items = Portfolio.rails
	end
	def new
		@portfolio_item = Portfolio.new
		3.times {@portfolio_item.technologies.build}
	end
	def create
		@portfolio_item = Portfolio.new(portfolio_params)

		respond_to do |format|
			if @portfolio_item.save
				format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
				# format.json { render :show, status: :created, location: @blog }
			else
				format.html { render :new }
				# format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
			end
		end
	end

	def edit
	end
	def update
		respond_to do |format|
	      if @portfolio_item.update(portfolio_params)
	        format.html { redirect_to portfolios_path, notice: 'Record successfully updated.' }
	        format.json { render :show, status: :ok, location: @portfolio_item }
	      else
	        format.html { render :edit }
	        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      	  end
    	end
	end

	def show
	end

	def destroy
		@portfolio_item.destroy
		respond_to do |format|
	    format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.' }
    	end
	end
	private
	def portfolio_params
		params.require(:portfolio).permit(:title,
		                                  :subtitle,
																			:body,
		                                  technologies_attributes: [:name])
	end

	def set_portfolio_item
		@portfolio_item = Portfolio.find(params[:id])
	end

end
