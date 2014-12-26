class BlurbsController < ApplicationController
  before_filter   :is_admin?
  before_filter   { |c| c.page_title 'Blurb management' }
  
  # GET /blurbs
  # GET /blurbs.json
  def index
    @blurbs = Blurb.all.sort_by{|b| b.name}

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
      if @blurb.update_attributes(blurb_params)
        format.html { redirect_to @blurb, notice: 'Blurb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blurb.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def blurb_params
    params.require(:blurb).permit(:content)
  end
  
end
