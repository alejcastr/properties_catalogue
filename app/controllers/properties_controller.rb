class PropertiesController < ApplicationController
    before_action :authenticate_user!
    def index
        @properties = Properties.all
    end

    def show
        @property = Property.find(params[:id])
    end

    def new 
end