class FoliosController < ApplicationController
  def index
    @folio_items = Folio.all
  end

  def new
    @folio_item = Folio.new
  end

  def create
    @folio_item = Folio.new(params.require(:folio).permit(:title, :body))


    respond_to do |format|
      if @folio_item.save
        format.html { redirect_to @folios_path, notice: 'Blog was successfully created.' }
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
        format.html { redirect_to @folios_path, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end
