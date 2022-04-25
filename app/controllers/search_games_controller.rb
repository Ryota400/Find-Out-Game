class SearchGamesController < ApplicationController
  def ps
    if params[:ps4]
      @results = RakutenWebService::Books::Game.search({
        title: params[:ps4],
        hardware: 'PS4',
        booksGenreId: '006513',
      })
    end

    if params[:ps5]
      @results = RakutenWebService::Books::Game.search({
        title: params[:ps5],
        hardware: 'PS5',
        booksGenreId: '006515'
      })
    end
  end

  def switch
    if params[:switch]
      @results = RakutenWebService::Books::Game.search({
        title: params[:switch],
        hardware: 'Nintendo Switch',
        booksGenreId: '006514'
      })
    end
  end

end
