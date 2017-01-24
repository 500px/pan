require 'chef_gen/helpers/copy_helpers'

module ChefGen
  module Flavor
    class PxNonEnvironmentEc2Cookbook
      include ChefGen::CopyHelpers

      NAME = 'px_non_environment_ec2_cookbook'.freeze
      DESC = 'Generate a new environment cookbook with 500px defaults.'.freeze
      VERSION = '1.0.0'.freeze

      def initialize(temp_path:)
        @temp_path = temp_path
      end

      def add_content
        copy_content(NAME)
      end
    end
  end
end
