class EducationController < ApplicationController
  # GET /Edus.json
  def index
    @edus = Edu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @edus }
    end
  end

  # GET /Edus/1
  # GET /Edus/1.json
  def show
    @edu = Edu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @edu }
    end
  end

  # GET /Edus/new
  # GET /Edus/new.json
  def new
    @edu = Edu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @edu }
    end
  end

  # GET /Edus/1/edit
  def edit
    @edu = Edu.find(params[:id])
  end

  # POST /Edus
  # POST /Edus.json
  def create
    @edu = Edu.new(params[:Edu])

    respond_to do |format|
      if @edu.save
        format.html { redirect_to @edu, notice: 'Edu was successfully created.' }
        format.json { render json: @edu, status: :created, location: @edu }
      else
        format.html { render action: "new" }
        format.json { render json: @edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Edus/1
  # PUT /Edus/1.json
  def update
    @edu = Edu.find(params[:id])

    respond_to do |format|
      if @edu.update_attributes(params[:Edu])
        format.html { redirect_to @edu, notice: 'Edu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @edu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Edus/1
  # DELETE /Edus/1.json
  def destroy
    @edu = Edu.find(params[:id])
    @edu.destroy

    respond_to do |format|
      format.html { redirect_to Edus_url }
      format.json { head :no_content }
    end
  end
end
end
