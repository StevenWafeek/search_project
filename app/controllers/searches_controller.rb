class SearchesController < ApplicationController
    def index
      @searches = UserSearch.all
    end
  
    def create
      query = params[:query]
      puts "Query received: #{query}"
      
      if query.present?
        search = UserSearch.create(query: query)
        puts "Search created: #{search.inspect}"
      else
        puts "No valid query received."
      end
      
      redirect_to search_path
    end
  end
  