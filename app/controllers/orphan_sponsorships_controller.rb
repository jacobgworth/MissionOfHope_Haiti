class OrphanSponsorshipsController < ApplicationController
  before_action :set_orphan_sponsorship, only: [:show, :edit, :update, :destroy]
  before_filter :ensure_admin!, except: [:index, :show]

  # GET /orphan_sponsorships
  # GET /orphan_sponsorships.json
  def index
    @orphan_sponsorships = OrphanSponsorship.all
  end

  # GET /orphan_sponsorships/1
  # GET /orphan_sponsorships/1.json
  def show
  end

  # GET /orphan_sponsorships/new
  def new
    @orphan_sponsorship = OrphanSponsorship.new
  end

  # GET /orphan_sponsorships/1/edit
  def edit
  end

  # POST /orphan_sponsorships
  # POST /orphan_sponsorships.json
  def create
    @orphan_sponsorship = OrphanSponsorship.new(orphan_sponsorship_params)

    respond_to do |format|
      if @orphan_sponsorship.save
        format.html { redirect_to @orphan_sponsorship, notice: 'Orphan sponsorship was successfully created.' }
        format.json { render :show, status: :created, location: @orphan_sponsorship }
      else
        format.html { render :new }
        format.json { render json: @orphan_sponsorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orphan_sponsorships/1
  # PATCH/PUT /orphan_sponsorships/1.json
  def update
    respond_to do |format|
      if @orphan_sponsorship.update(orphan_sponsorship_params)
        format.html { redirect_to @orphan_sponsorship, notice: 'Orphan sponsorship was successfully updated.' }
        format.json { render :show, status: :ok, location: @orphan_sponsorship }
      else
        format.html { render :edit }
        format.json { render json: @orphan_sponsorship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orphan_sponsorships/1
  # DELETE /orphan_sponsorships/1.json
  def destroy
    @orphan_sponsorship.destroy
    respond_to do |format|
      format.html { redirect_to orphan_sponsorships_url, notice: 'Orphan sponsorship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orphan_sponsorship
      @orphan_sponsorship = OrphanSponsorship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orphan_sponsorship_params
      params.require(:orphan_sponsorship).permit(:first_name, :age, :sponsorship_number, :bio, :image, :slug)
    end
    def ensure_admin!
    unless current_user && current_user.admin?

      redirect_to "/"

      return false
    end
  end
end
