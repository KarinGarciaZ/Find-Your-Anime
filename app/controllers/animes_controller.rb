class AnimesController < ApplicationController

  def uno
    puts(buscarAnime_param)
    @animes = Anime.where("name like ?", buscarAnime_param)
  end

  def uno
    @animes = Anime.where("name like ?", buscarAnime_param)
  end

  def index
    @animes = Anime.all
  end

  def new
    @anime = Anime.new
  end

  def show
    @anime = Anime.find(params[:id])
  end

  def create
    @anime = Anime.new(anime_params)
    if (@anime.valid?)
      @anime.save
      redirect_to @anime
    else
      render 'new'
    end
  end

  def edit
    @anime = Anime.find(params[:id])
  end

  def update
    @anime = Anime.find(params[:id])
    if (@anime.update(anime_params))
      redirect_to @anime
    else
      render 'new'
    end
  end

  def destroy
    @anime = Anime.find(params[:id])
    @anime.destroy
    redirect_to animes_path
  end 

  private 

  def buscarAnime_param
    params.require(:buscarAnime).permit(:name)
  end 
  
  def anime_params
    params.require(:anime).permit(:name, :chapters, :idPage)
  end   

end
