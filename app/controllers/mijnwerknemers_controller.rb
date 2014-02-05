class MijnwerknemersController < ApplicationController
  before_action :set_mijnwerknemer, only: [:show, :edit, :update, :destroy]

  # GET /mijnwerknemers
  # GET /mijnwerknemers.json
  def index
    @mijnwerknemers = Mijnwerknemer.all
  end

  # GET /mijnwerknemers/1
  # GET /mijnwerknemers/1.json
  def show
  end

  # GET /mijnwerknemers/new
  def new
    @mijnwerknemer = Mijnwerknemer.new
  end

  # GET /mijnwerknemers/1/edit
  def edit
  end

  # POST /mijnwerknemers
  # POST /mijnwerknemers.json
  def create
    @mijnwerknemer = Mijnwerknemer.new(mijnwerknemer_params)

    respond_to do |format|
      if @mijnwerknemer.save
        format.html { redirect_to @mijnwerknemer, notice: 'Mijnwerknemer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mijnwerknemer }
      else
        format.html { render action: 'new' }
        format.json { render json: @mijnwerknemer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mijnwerknemers/1
  # PATCH/PUT /mijnwerknemers/1.json
  def update
    respond_to do |format|
      if @mijnwerknemer.update(mijnwerknemer_params)
        format.html { redirect_to @mijnwerknemer, notice: 'Mijnwerknemer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mijnwerknemer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mijnwerknemers/1
  # DELETE /mijnwerknemers/1.json
  def destroy
    @mijnwerknemer.destroy
    respond_to do |format|
      format.html { redirect_to mijnwerknemers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mijnwerknemer
      @mijnwerknemer = Mijnwerknemer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mijnwerknemer_params
      params.require(:mijnwerknemer).permit(:aandoening, :advies)
    end
end
