class SittersController < ProtectedController
  before_action :set_sitter, only: [:show, :update, :destroy]

  # GET /sitters
  def index
    @sitters = Sitter.all

    render json: @sitters
  end

  # GET /sitters/1
  def show
    render json: @sitter
  end

  # POST /sitters
  def create
    @sitter = Sitter.new(sitter_params)
    @sitter.user_id = current_user.id

    if @sitter.save
      render json: @sitter, serializer: SitterSerializer
    else
      render json: @sitter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sitters/1
  def update
    if @sitter.update(sitter_params)
      render json: @sitter
    else
      render json: @sitter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sitters/1
  def destroy
    @sitter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sitter
      @sitter = Sitter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sitter_params
      params.require(:sitter).permit(:about, :price, :service_range, :user_id, :animal_types, :services_provided)
    end
end
