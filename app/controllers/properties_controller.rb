class PropertiesController < ApplicationController
    before_action :authenticate_user!
    def index
        @properties = Property.all
    end

    def show
       @property = Property.find(params[:id])
    end

    def new
        @property = Property.new()
    end

    def create
        @property = current_user.properties.new(property_params)
        
        if @property.save
            redirect_to @property, notice: 'Property was successfully saved'
        else
            render :new
        end
    end

    def destroy
        @property = Property.find(params[:id])
        @property.destroy
        redirect_to properties_url, notice: 'Property was successfully destroyed'
    end

    def edit
        @property = Property.find(params[:id])
    end

    def update
        property = Property.find(params["id"])
        property.update(property_params)
        redirect_to property    
    end

    private
    def property_params
            params.require(:property).permit(:name, :bedrooms, :bathrooms, :parking_spaces, :information, :user_id, :image)
    end
end