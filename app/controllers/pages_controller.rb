class PagesController < ApplicationController
  before_action :set_page, only: [:edit, :update, :destroy]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1/edit
  def edit
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to pages_path, notice: 'Pagina is bijgewerkt.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # Custom pages for home contact and such
  # Home page /pages/home or /
  def home
    @page = Page.find_by_title('Home')
  end

  # Contact page /contact
  def contact
    @page = Page.find_by_title('Contact')
  end

  # Contact page /faq
  def faq
    @page = Page.find_by_title('FAQ')
  end

  # Contact page /Voorwaarden
  def voorwaarden
    @page = Page.find_by_title('Voorwaarden')
  end

  # Gemeenten page /gemeenten
  def gemeenten
  end

  # proffesionals page /proffesionals
  def proffesionals
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_page
    @page = Page.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def page_params
    params.require(:page).permit(:content)
  end
end
