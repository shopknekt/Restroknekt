class Admin::DashboardController < ApplicationController

	def index
		@themes = Theme.all
		@shop_admin = ShopAdmin.find_by(email: current_shop_admin.email)
	end

	def new
		@theme = Theme.all
		@shop_admin = ShopAdmin.find_by(email: current_shop_admin.email)
		#byebug
	end

	def show
	end

	def edit
	end

	def update
		# byebug
		@shop_admin = ShopAdmin.find_by(email: current_shop_admin.email)
		respond_to do |format|
			if @shop_admin.update_attributes(theme_id: params[:shop_admin].values[0].to_i)
				format.html { redirect_to admin_dashboard_index_path, notice: 'Theme was successfully selected.' }
			end
		end
	end

end