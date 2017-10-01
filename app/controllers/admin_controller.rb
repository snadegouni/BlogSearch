require_relative '../helpers/admin_helper'
class AdminController < ApplicationController
      include AdminHelper
      def index
         #Placeholder only. No views yet.
      end

      def show
           #Placeholder only. No views yet.
      end
      def new
           #Placeholder only. No views yet.
      end
      def edit
          #Placeholder only. No views yet.
      end
      def create
          puts params[:post][:title]
          puts params[:post][:text]
          puts params[:post][:link]

            elasticsearch = ElasticSearchRestApi.new
            elasticsearch.createposts(
                        params[:post][:title],
                        params[:post][:text],
                        params[:post][:link]
            )

          render 'index'
      end
      def update
           #Placeholder only. No views yet.
      end
      def destroy
         #Placeholder only. No views yet.
      end
end
