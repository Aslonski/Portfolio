class FoliosController < ApplicationController
  def index
    @folio_items = Folio.all
  end

  def angular
    @angular_folio_items = Folio.angular
  end

  def new
    @folio_item = Folio.new
    3.times { @folio_item.technologies.build }
  end

  def create
    @folio_item = Folio.new(params.require(:folio).permit(:title, :body, technologies_attributes: [:name]))


    respond_to do |format|
      if @folio_item.save
        format.html { redirect_to folios_path, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def edit
    @folio_item = Folio.find(params[:id])
  end

  def update
        @folio_item = Folio.find(params[:id])

    respond_to do |format|
      if @folio_item.update(params.require(:folio).permit(:title, :body))
        format.html { redirect_to folios_path, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @folio_item = Folio.find(params[:id])
  end

  def destroy
    @folio_item = Folio.find(params[:id])
    @folio_item.destroy

    respond_to do |format|
      format.html { redirect_to folios_path, notice: 'Blog was successfully destroyed.' }
    end
  end

end
