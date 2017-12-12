class HomesController < ApplicationController

    def index
      @animes = Anime.all
    end
end
