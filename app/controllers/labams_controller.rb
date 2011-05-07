class LabamsController < ApplicationController
  # GET /labams
  # GET /labams.xml
  def index
    @labams = Labam.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @labams }
    end
  end

  # GET /labams/1
  # GET /labams/1.xml
  def show
    @labam = Labam.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @labam }
    end
  end

  # GET /labams/new
  # GET /labams/new.xml
  def new
    @labam = Labam.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @labam }
    end
  end

  # GET /labams/1/edit
  def edit
    @labam = Labam.find(params[:id])
  end

  # POST /labams
  # POST /labams.xml
  def create
    @labam = Labam.new(params[:labam])

    respond_to do |format|
      if @labam.save
        flash[:notice] = 'Labam was successfully created.'
        format.html { redirect_to(@labam) }
        format.xml  { render :xml => @labam, :status => :created, :location => @labam }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @labam.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /labams/1
  # PUT /labams/1.xml
  def update
    @labam = Labam.find(params[:id])

    respond_to do |format|
      if @labam.update_attributes(params[:labam])
        flash[:notice] = 'Labam was successfully updated.'
        format.html { redirect_to(@labam) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @labam.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /labams/1
  # DELETE /labams/1.xml
  def destroy
    @labam = Labam.find(params[:id])
    @labam.destroy

    respond_to do |format|
      format.html { redirect_to(labams_url) }
      format.xml  { head :ok }
    end
  end
end
