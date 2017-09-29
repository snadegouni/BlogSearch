require_relative '../helpers/search_helper'
class SearchController < ApplicationController
  include SearchHelper
 
  def index
   
  end
  def show
    elasticsearch = ElasticSearchRestApi.new
    results = elasticsearch.posts('How to')#filters
    @posts = results
    puts 'I am in show'
    render 'index'
  end
end
