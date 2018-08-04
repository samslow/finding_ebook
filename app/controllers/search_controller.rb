class SearchController < ApplicationController
  helper_method :titleOverlap?

  def index
    
    @url = RestClient.get("http://ebook.starlove.net/Home/Index?libcode=99&KeyField=name&Keyword=%ED%8D%BC%ED%8E%99%ED%8A%B8&page=1")
    @result = Nokogiri::HTML.parse(@url)
    # nokogiri를 이용하여 원하는 부분을 골라냄
    @books = @result.css('div>table.ebookList')
    @i = 1
    @bookArr = []
  end

  def titleOverlap?(book_title)
    unless @bookArr.find(book_title)
      @bookArr.append(book_title)
      return true
    end
    return false
  end

end
