class LibraryCardsController < ApplicationController
  # GET /library_cards
  # GET /library_cards.json
  def index
    @library_cards = LibraryCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @library_cards }
    end
  end

  # GET /library_cards/1
  # GET /library_cards/1.json
  def show
    @library_card = LibraryCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @library_card }
    end
  end

  # GET /library_cards/new
  # GET /library_cards/new.json
  def new
    @library_card = LibraryCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @library_card }
    end
  end

  # GET /library_cards/1/edit
  def edit
    @library_card = LibraryCard.find(params[:id])
  end

  # POST /library_cards
  # POST /library_cards.json
  def create
    @library_card = LibraryCard.new(params[:library_card])

    respond_to do |format|
      if @library_card.save
        format.html { redirect_to @library_card, notice: 'Library card was successfully created.' }
        format.json { render json: @library_card, status: :created, location: @library_card }
      else
        format.html { render action: "new" }
        format.json { render json: @library_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /library_cards/1
  # PUT /library_cards/1.json
  def update
    @library_card = LibraryCard.find(params[:id])

    respond_to do |format|
      if @library_card.update_attributes(params[:library_card])
        format.html { redirect_to @library_card, notice: 'Library card was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @library_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_cards/1
  # DELETE /library_cards/1.json
  def destroy
    @library_card = LibraryCard.find(params[:id])
    @library_card.destroy

    respond_to do |format|
      format.html { redirect_to library_cards_url }
      format.json { head :ok }
    end
  end
end
