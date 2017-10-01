module AdminHelper
    require 'rubygems'
    require 'httparty'
    require 'json'
    require 'ostruct'
    class ElasticSearchRestApi
        include HTTParty
        base_uri "http://localhost:9200/blog"

       
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
