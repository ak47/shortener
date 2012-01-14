class ShortiesController < ApplicationController
  # GET /shorties
  # GET /shorties.json
  def index
    @shorties = Shorty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shorties }
    end
  end

  # GET /shorties/1
  # GET /shorties/1.json
  def show
    @shorty = Shorty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shorty }
    end
  end

  # GET /shorties/new
  # GET /shorties/new.json
  def new
    @shorty = Shorty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shorty }
    end
  end

  # GET /shorties/1/edit
  def edit
    @shorty = Shorty.find(params[:id])
  end

  # POST /shorties
  # POST /shorties.json
  def create
    @shorty = Shorty.new(params[:shorty])

    respond_to do |format|
      if @shorty.save
        format.html { redirect_to @shorty, notice: 'Shorty was successfully created.' }
        format.json { render json: @shorty, status: :created, location: @shorty }
      else
        format.html { render action: "new" }
        format.json { render json: @shorty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shorties/1
  # PUT /shorties/1.json
  def update
    @shorty = Shorty.find(params[:id])

    respond_to do |format|
      if @shorty.update_attributes(params[:shorty])
        format.html { redirect_to @shorty, notice: 'Shorty was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shorty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shorties/1
  # DELETE /shorties/1.json
  def destroy
    @shorty = Shorty.find(params[:id])
    @shorty.destroy

    respond_to do |format|
      format.html { redirect_to shorties_url }
      format.json { head :ok }
    end
  end
end
