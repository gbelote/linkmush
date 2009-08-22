class LinksController < ApplicationController
  def detail
    @link = Link.find(:first, :conditions => { :url_name => params[:url_name] })

    respond_to do |format|
      format.html { render :layout => 'standard' }# detail.html.erb
      format.xml  { render :xml => @link }
      format.json { render :json => @link }
    end
  end

  def list
    @links = Link.find(:all, :conditions => "url_name not null")

    respond_to do |format|
      format.html { render :layout => 'standard' }
      format.xml  { render :xml => @link }
      format.json { render :json => @link }
    end
  end
end
