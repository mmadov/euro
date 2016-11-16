class SiteController < ApplicationController
  def index
  	@about = About.first
  	@services = Service.all
  end
end
