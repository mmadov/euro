class SiteController < ApplicationController
  def index
  	
  	@works = Work.where(locale:I18n.locale).all
  	@services = Service.where(locale:I18n.locale,main:"1.0").all
  	@partners = Partner.all
  end
end
