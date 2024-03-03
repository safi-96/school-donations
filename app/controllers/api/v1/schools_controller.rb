module Api
  module V1
    class SchoolsController < ApplicationController
      def index
        @schools = School.select(:id, :name)
      end
    end
  end
end
