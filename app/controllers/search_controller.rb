require_relative '../helpers/search_helper'
class SearchController < ApplicationController
  include SearchHelper
 
  def index
   
  end
  def show
    elasticsearch = ElasticSearchRestApi.new
    results = elasticsearch.posts(params[:criteria][:text])#filters
    @posts = results
    render 'index'
  end
end
