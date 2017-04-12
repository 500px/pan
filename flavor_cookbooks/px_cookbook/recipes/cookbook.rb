context = ChefDK::Generator.context
# Create the directory as 'chef-<cookbook_name>'
cookbook_dir = File.join(context.cookbook_root, 'chef-' + context.cookbook_name)
attribute_context = context.cookbook_name.gsub(/-/, '_')

# Create cookbook directories
cookbook_directories = %w(
  attributes
  recipes
  templates/default
  files/default
  test/integration/default/serverspec
  test/integration/helpers/serverspec
  test/integration/environments
  test/integration/data_bags/users
  spec/recipes
  spec/support
)
cookbook_directories.each do |dir|
  directory File.join(cookbook_dir, dir) do
    recursive true
  end
end

# Create basic files
files_basic = %w(
  .foodcritic
  .rubocop.yml
  .travis.yml
  Berksfile
  chefignore
  Gemfile
  Rakefile
  Thorfile
  spec/spec_helper.rb
  test/integration/data_bags/users/vagrant.json
  test/integration/environments/kitchen.json
  test/integration/default/serverspec/default_spec.rb
  test/integration/helpers/serverspec/spec_helper.rb
)
files_basic.each do |file|
  cookbook_file File.join(cookbook_dir, file) do
    source file
    action :create_if_missing
  end
end

# Create basic files from template
files_template = %w(
  .kitchen.yml
  .kitchen.cloud.yml
  .kitchen.docker.yml
  CHANGELOG.md
  metadata.rb
  README.md
  spec/recipes/default_spec.rb
  spec/support/matchers.rb
  recipes/default.rb
  attributes/default.rb
)
files_template.each do |file|
  template File.join(cookbook_dir, file) do
    helpers(ChefDK::Generator::TemplateHelper)
    source [
      file,
      file + '.erb',
      "default/#{file}",
      "default/#{file}.erb"
    ]
    action :create_if_missing
  end
end

# # Create more complex files from templates
# template "#{cookbook_dir}/attributes/default.rb" do
#   source 'default_attributes.rb.erb'
#   helpers(ChefDK::Generator::TemplateHelper)
#   action :create_if_missing
#   variables(attribute_context: attribute_context)
# end

# LICENSE
template "#{cookbook_dir}/LICENSE" do
  source "LICENSE.#{context.license}.erb"
  helpers(ChefDK::Generator::TemplateHelper)
  action :create_if_missing
end

# git
if context.have_git
  unless context.skip_git_init
    execute('initialize-git') do
      command('git init .')
      cwd cookbook_dir
    end
  end

  cookbook_file "#{cookbook_dir}/.gitignore" do
    source 'gitignore'
  end
end
