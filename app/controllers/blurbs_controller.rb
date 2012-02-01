class BlurbsController < ApplicationController
  before_filter   :is_admin?
  before_filter   { |c| c.page_title 'Blurb management' }
  cache_sweeper   :blurb_sweeper, :only => [:update]
  
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

  # GET /blurbs/1/edit
  def edit
    @blurb = Blurb.find(params[:id])
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
  
end
