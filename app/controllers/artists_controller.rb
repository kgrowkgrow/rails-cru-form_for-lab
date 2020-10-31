class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show, :edit, :update]
    
    def index
        @artists = Artist.all
    end

    def show
        #@artist = artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artists_path
    end

    def edit 
        #@artist = artist.find(params[:id])
    end

    def update
        #@artist = artist.find(params[:id])
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
        
    end


    private

    def find_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end


end