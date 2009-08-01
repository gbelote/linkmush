class EmbedsController < ApplicationController
  # GET /embeds
  # GET /embeds.xml
  def index
    @embeds = Embed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @embeds }
    end
  end

  # GET /embeds/1
  # GET /embeds/1.xml
  def show
    @embed = Embed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @embed }
    end
  end

  # GET /embeds/new
  # GET /embeds/new.xml
  def new
    @embed = Embed.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @embed }
    end
  end

  # GET /embeds/1/edit
  def edit
    @embed = Embed.find(params[:id])
  end

  # POST /embeds
  # POST /embeds.xml
  def create
    @embed = Embed.new(params[:embed])

    respond_to do |format|
      if @embed.save
        flash[:notice] = 'Embed was successfully created.'
        format.html { redirect_to(@embed) }
        format.xml  { render :xml => @embed, :status => :created, :location => @embed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @embed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /embeds/1
  # PUT /embeds/1.xml
  def update
    @embed = Embed.find(params[:id])

    respond_to do |format|
      if @embed.update_attributes(params[:embed])
        flash[:notice] = 'Embed was successfully updated.'
        format.html { redirect_to(@embed) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @embed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /embeds/1
  # DELETE /embeds/1.xml
  def destroy
    @embed = Embed.find(params[:id])
    @embed.destroy

    respond_to do |format|
      format.html { redirect_to(embeds_url) }
      format.xml  { head :ok }
    end
  end
end
