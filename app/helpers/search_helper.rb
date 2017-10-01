module SearchHelper
    require 'rubygems'
    require 'httparty'
    require 'json'
    require 'ostruct'

    class SearchResult

        attr_accessor :title, :text , :link
        def initialize(title,text,link)
            @title = title
            @text = text
            @link = link
            end
    end

    class ElasticSearchRestApi
        include HTTParty
        base_uri "http://localhost:9200/blog"

        def getposts(query)
            response = self.class.get('/elasticsearch/_search?q='+query)
            results = JSON.parse(response.body, object_class: OpenStruct)
            searchresults = results.hits.hits.map {|q| SearchResult.new(q._source.title,q._source.text,q._source.link)}
        end
        def createposts(title,description,weblink)
            response = self.class.post('/elasticsearch/',
            :body => 
                    {
                    :title =>  title,
                    :text => description,
                    :link => weblink
                    }.to_json,
            :headers => { 'Content-Type' => 'application/json' } )
        end
    end
end
