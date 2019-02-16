class SavingItemsController < ApplicationController
  before_action :set_saving_item, only: [:show, :edit, :update, :destroy]

  # GET /saving_items
  # GET /saving_items.json
  def index
    @saving_items = SavingItem.all
  end

  # GET /saving_items/1
  # GET /saving_items/1.json
  def show
  end

  # GET /saving_items/new
  def new
    @saving_item = SavingItem.new
    @category = Category.all
  end

  # GET /saving_items/1/edit
  def edit
  end

  # POST /saving_items
  # POST /saving_items.json
  def create
    # debugger
    # @saving_item = SavingItem.new(saving_item_params)
    @saving_item = current_user.saving_items.build(saving_item_params)

    respond_to do |format|
      if @saving_item.save
        format.html { redirect_to @saving_item, notice: '投稿が完了しました。' }
        format.json { render :show, status: :created, location: @saving_item }
      else
        format.html { render :new }
        format.json { render json: @saving_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saving_items/1
  # PATCH/PUT /saving_items/1.json
  def update
    respond_to do |format|
      if @saving_item.update(saving_item_params)
        format.html { redirect_to @saving_item, notice: 'Saving item was successfully updated.' }
        format.json { render :show, status: :ok, location: @saving_item }
      else
        format.html { render :edit }
        format.json { render json: @saving_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saving_items/1
  # DELETE /saving_items/1.json
  def destroy
    @saving_item.destroy
    respond_to do |format|
      format.html { redirect_to saving_items_url, notice: 'Saving item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saving_item
      @saving_item = SavingItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saving_item_params
      params.require(:saving_item).permit(:item_name, :category_id, :user_id, :date, :amount, :content)
    end
end
