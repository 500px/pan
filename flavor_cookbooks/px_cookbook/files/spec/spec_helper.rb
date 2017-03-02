require 'chefspec'
require 'chefspec/berkshelf'
require 'chefspec/cacher'
require 'chef-vault/test_fixtures'

# Inlcude custom matchers if they exist
Dir[File.expand_path(File.join(File.dirname(__FILE__), 'support', '**', '*.rb'))].each { |f| require f }

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation # Use the specified formatter
  config.log_level = :error         # Avoid deprecation notice SPAM
  # config.raise_errors_for_deprecations!
end

at_exit { ChefSpec::Coverage.report! }
