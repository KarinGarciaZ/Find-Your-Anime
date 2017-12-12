class AnimesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]
  before_action :set_article, except: [:index, :new, :create]

  def index
    @animes = Anime.all
  end

  def new
    @anime = Anime.new
    @pages = Page.all
  end

  def show
  end

  def create
    # @id = anime_page
    # puts(@id)
    # @page = Page.where("id = ?",@id.idPage)
    
    @anime = current_user.animes.new(anime_params)
    if (@anime.valid?)
      @anime.save
      redirect_to @anime
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if (@anime.update(anime_params))
      redirect_to @anime
    else
      render 'new'
    end
  end

  def destroy
    @anime.destroy
    redirect_to animes_path
  end 

  private 

  # def validate_user
  #   redirect_to new_user_session_path, notice: "Debes iniciar sesion"
  # end

  def set_article
    @anime = Anime.find(params[:id])
  end

  def buscarAnime_param
    params.require(:buscarAnime).permit(:name)
  end 
  
  def anime_params
    params.require(:anime).permit(:name, :chapters, :idPage, :page_id)
  end   

  def anime_page
    params.require(:anime).permit(:idPage)
  end 

end
