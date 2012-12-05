class KotisController < ApplicationController
  # GET /kotis
  # GET /kotis.json
  def index
    @kotis = Koti.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kotis }
    end
  end

  # GET /kotis/1
  # GET /kotis/1.json
  def show
    @koti = Koti.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @koti }
    end
  end

  # GET /kotis/new
  # GET /kotis/new.json
  def new
    @koti = Koti.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @koti }
    end
  end

  # GET /kotis/1/edit
  def edit
    @koti = Koti.find(params[:id])
  end

  # POST /kotis
  # POST /kotis.json
  def create
    @koti = Koti.new(params[:koti])

    respond_to do |format|
      if @koti.save
        format.html { redirect_to @koti, notice: 'Koti was successfully created.' }
        format.json { render json: @koti, status: :created, location: @koti }
      else
        format.html { render action: "new" }
        format.json { render json: @koti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kotis/1
  # PUT /kotis/1.json
  def update
    @koti = Koti.find(params[:id])

    respond_to do |format|
      if @koti.update_attributes(params[:koti])
        format.html { redirect_to @koti, notice: 'Koti was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @koti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kotis/1
  # DELETE /kotis/1.json
  def destroy
    @koti = Koti.find(params[:id])
    @koti.destroy

    respond_to do |format|
      format.html { redirect_to kotis_url }
      format.json { head :no_content }
    end
  end
end
