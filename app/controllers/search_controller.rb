class SearchController < ApplicationController
  helper_method :titleOverlap?

  def index
    @title=params[:title]
    require 'uri'
    @url = RestClient.get("http://ebook.starlove.net/Home/Index?libcode=99&KeyField=name&Keyword=#{URI::encode(@title)}&page=1")
    @result = Nokogiri::HTML.parse(@url)
    # nokogiri를 이용하여 원하는 부분을 골라냄
    @books = @result.css('div>table.ebookList')
    @i = 1
    @bookArr = []
  end
  def search 
  end
end
