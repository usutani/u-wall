class WebClipsController < ApplicationController
  # GET /web_clips
  # GET /web_clips.xml
  def index
    @web_clips = WebClip.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @web_clips }
    end
  end

  # GET /web_clips/1
  # GET /web_clips/1.xml
  def show
    @web_clip = WebClip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @web_clip }
    end
  end

  # GET /web_clips/new
  # GET /web_clips/new.xml
  def new
    @web_clip = WebClip.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @web_clip }
    end
  end

  # GET /web_clips/1/edit
  def edit
    @web_clip = WebClip.find(params[:id])
  end

  # POST /web_clips
  # POST /web_clips.xml
  def create
    @web_clip = WebClip.new(params[:web_clip])

    respond_to do |format|
      if @web_clip.save
        format.html { redirect_to(@web_clip, :notice => 'Web clip was successfully created.') }
        format.xml  { render :xml => @web_clip, :status => :created, :location => @web_clip }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @web_clip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /web_clips/1
  # PUT /web_clips/1.xml
  def update
    @web_clip = WebClip.find(params[:id])

    respond_to do |format|
      if @web_clip.update_attributes(params[:web_clip])
        format.html { redirect_to(@web_clip, :notice => 'Web clip was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @web_clip.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /web_clips/1
  # DELETE /web_clips/1.xml
  def destroy
    @web_clip = WebClip.find(params[:id])
    @web_clip.destroy

    respond_to do |format|
      format.html { redirect_to(web_clips_url) }
      format.xml  { head :ok }
    end
  end
end
