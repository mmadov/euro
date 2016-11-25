class PagenamesController < ApplicationController
  before_action :set_pagename, only: [:show, :edit, :update, :destroy]

  # GET /pagenames
  # GET /pagenames.json
  def index
    @pagenames = Pagename.all
  end

  # GET /pagenames/1
  # GET /pagenames/1.json
  def show
  end

  # GET /pagenames/new
  def new
    @pagename = Pagename.new
  end

  # GET /pagenames/1/edit
  def edit
  end

  # POST /pagenames
  # POST /pagenames.json
  def create
    @pagename = Pagename.new(pagename_params)

    respond_to do |format|
      if @pagename.save
        format.html { redirect_to @pagename, notice: 'Pagename was successfully created.' }
        format.json { render :show, status: :created, location: @pagename }
      else
        format.html { render :new }
        format.json { render json: @pagename.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagenames/1
  # PATCH/PUT /pagenames/1.json
  def update
    respond_to do |format|
      if @pagename.update(pagename_params)
        format.html { redirect_to @pagename, notice: 'Pagename was successfully updated.' }
        format.json { render :show, status: :ok, location: @pagename }
      else
        format.html { render :edit }
        format.json { render json: @pagename.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagenames/1
  # DELETE /pagenames/1.json
  def destroy
    @pagename.destroy
    respond_to do |format|
      format.html { redirect_to pagenames_url, notice: 'Pagename was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagename
      @pagename = Pagename.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagename_params
      params.require(:pagename).permit(:name)
    end
end
