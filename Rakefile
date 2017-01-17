$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "pan/version"

task :build do
  system "gem build pan.gemspec"
end

task :release => :build do
  system "gem inabox chef-flavor-pan-#{Pan::VERSION}.gem --overwrite"
end
