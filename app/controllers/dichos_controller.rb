class DichosController < ApplicationController
  # GET /dichos
  # GET /dichos.json
  def index
    @dichos = Dicho.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dichos }
    end
  end

  # GET /dichos/1
  # GET /dichos/1.json
  def show
    @dicho = Dicho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @dicho }
    end
  end

  # GET /dichos/new
  # GET /dichos/new.json
  def new
    @dicho = Dicho.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @dicho }
    end
  end

  # GET /dichos/1/edit
  def edit
    @dicho = Dicho.find(params[:id])
  end

  # POST /dichos
  # POST /dichos.json
  def create
    @dicho = Dicho.new(params[:dicho])

    respond_to do |format|
      if @dicho.save
        format.html { redirect_to @dicho, :notice => 'Dicho was successfully created.' }
        format.json { render :json => @dicho, :status => :created, :location => @dicho }
      else
        format.html { render :action => "new" }
        format.json { render :json => @dicho.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dichos/1
  # PUT /dichos/1.json
  def update
    @dicho = Dicho.find(params[:id])

    respond_to do |format|
      if @dicho.update_attributes(params[:dicho])
        format.html { redirect_to @dicho, :notice => 'Dicho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @dicho.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dichos/1
  # DELETE /dichos/1.json
  def destroy
    @dicho = Dicho.find(params[:id])
    @dicho.destroy

    respond_to do |format|
      format.html { redirect_to dichos_url }
      format.json { head :no_content }
    end
  end
end
