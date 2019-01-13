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
        format.html { redirect_to @folio_path, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

end
