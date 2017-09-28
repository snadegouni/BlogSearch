require_relative '../helpers/search_helper'
class SearchController < ApplicationController
  include SearchHelper
  # def initialize
  #   @posts = nil
  # end
  def index
    elasticsearch = ElasticSearchRestApi.new
    results = elasticsearch.posts('How to')#filters
    @posts = results
  end
end
