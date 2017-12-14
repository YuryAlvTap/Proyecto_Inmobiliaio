class PagesController < ApplicationController
	def index
	    @recintos = Recinto.all
	end
end
