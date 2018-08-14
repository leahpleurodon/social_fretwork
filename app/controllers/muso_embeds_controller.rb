class MusoEmbedsController < ApplicationController

  def new
    @muso_embeds = MusoEmbed.new
  end

  def edit
    @muso_embed = MusoEmbed.find(params[:id])
  end

  def create    
    @muso_embed = MusoEmbed.new
    @muso_embed.url = params[:muso_embeds][:url]
    if @muso_embed.save
      redirect_to muso_path(@muso_id)
    else
      render :new
    end
  end

  def update
    @muso_embed = MusoEmbed.find(params[:id])
    @muso_embed.url = params[:url]
    
    if @muso_embed.save
      redirect_to muso_path(@muso_id)
    else
      render :edit
    end
  end

end