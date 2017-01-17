require 'chef_gen/helpers/copy_helpers'

module ChefGen
  module Flavor
    class PxApplicationCookbook
      include ChefGen::CopyHelpers

      NAME = 'px_application_cookbook'
      DESC = 'Generate a new wrapper cookbook with 500px defaults.'
      VERSION = '1.0.0'

      def initialize(temp_path:)
        @temp_path = temp_path
      end

      def add_content
        copy_content(NAME)
      end
    end
  end
end
