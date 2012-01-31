class BlurbsController < ApplicationController
  # GET /blurbs
  # GET /blurbs.json
  def index
    @blurbs = Blurb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blurbs }
    end
  end

  # GET /blurbs/1
  # GET /blurbs/1.json
  def show
    @blurb = Blurb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blurb }
    end
  end

  # GET /blurbs/new
  # GET /blurbs/new.json
  def new
    @blurb = Blurb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blurb }
    end
  end

  # GET /blurbs/1/edit
  def edit
    @blurb = Blurb.find(params[:id])
  end

  # POST /blurbs
  # POST /blurbs.json
  def create
    @blurb = Blurb.new(params[:blurb])

    respond_to do |format|
      if @blurb.save
        format.html { redirect_to @blurb, notice: 'Blurb was successfully created.' }
        format.json { render json: @blurb, status: :created, location: @blurb }
      else
        format.html { render action: "new" }
        format.json { render json: @blurb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blurbs/1
  # PUT /blurbs/1.json
  def update
    @blurb = Blurb.find(params[:id])

    respond_to do |format|
      if @blurb.update_attributes(params[:blurb])
        format.html { redirect_to @blurb, notice: 'Blurb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blurb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blurbs/1
  # DELETE /blurbs/1.json
  def destroy
    @blurb = Blurb.find(params[:id])
    @blurb.destroy

    respond_to do |format|
      format.html { redirect_to blurbs_url }
      format.json { head :no_content }
    end
  end
end
