class AnnouncesController < ApplicationController
	before_action :set_announce, only: [:show, :destroy, :update, :edit]
	before_action :authenticate_user!, only: [ :new ]

	def index
		@announces = Announce.all
	end

	def new
		@announce = Announce.new
	end

	def create
		@announce = Announce.new(announce_params)
			if @announce.save
				redirect_to announce_path(@announce)
			else
				render :new
			end
	end

	def show
	end

	private

	def set_announce
		@announce = Announce.find(params[:id])
	end

	def announce_params
  		params.require(:announce).permit(
  			:title, 
  			:bed, 
  			:bath, 
  			:surface, 
  			:description, 
  			:tax_month, 
  			:price,
  			:address,
  			:locality,
  			:class_energy,
  			:transports,
  			:view,
  			:exposition,
  			:floor,
  			:floor_max,
  			:elevator,
  			:user_id,
  			:latitude,
  			:longitude,
  			:shower,
  			:property_id,
  			:isgeoloc,
  			photos: [])
	end
end

