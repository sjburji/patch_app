class DataPatchesController < ApplicationController
  # GET /data_patches
  # GET /data_patches.xml
  def index
    @data_patches = DataPatch.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data_patches }
    end
  end

  # GET /data_patches/1
  # GET /data_patches/1.xml
  def show
    @data_patch = DataPatch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @data_patch }
    end
  end

  # GET /data_patches/new
  # GET /data_patches/new.xml
  def new
    @data_patch = DataPatch.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @data_patch }
    end
  end

  # GET /data_patches/1/edit
  def edit
    @data_patch = DataPatch.find(params[:id])
  end

  # POST /data_patches
  # POST /data_patches.xml
  def create
    @data_patch = DataPatch.new(params[:data_patch])

    respond_to do |format|
      if @data_patch.save
        format.html { redirect_to(@data_patch, :notice => 'Data patch was successfully created.') }
        format.xml  { render :xml => @data_patch, :status => :created, :location => @data_patch }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @data_patch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data_patches/1
  # PUT /data_patches/1.xml
  def update
    @data_patch = DataPatch.find(params[:id])

    respond_to do |format|
      if @data_patch.update_attributes(params[:data_patch])
        format.html { redirect_to(@data_patch, :notice => 'Data patch was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @data_patch.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data_patches/1
  # DELETE /data_patches/1.xml
  def destroy
    @data_patch = DataPatch.find(params[:id])
    @data_patch.destroy

    respond_to do |format|
      format.html { redirect_to(data_patches_url) }
      format.xml  { head :ok }
    end
  end
end
