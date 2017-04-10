# pan

Pan is a Chef cookbook generator using [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors). You can use it out of the box as an opinionated way of creating new cookbooks, or modify it to meet your organization needs.

<sub><sup>パン</sup></sub>

## Features

- Automatically create boilerplate files for cookbooks.
- Drive organizational policy by setting standards and good defaults for what a cookbook should look like.
- Automatically generate examples for developers brand new to Chef.

## Install

- Make sure you have ChefDK installed: https://downloads.chef.io/chef-dk/

- Make sure you have the 500px private gems server configured in your .gemrc

- Then run this command:

`chef gem install chef-flavor-pan`

- Now add this to your knife.rb:

```
# only load ChefGen::Flavors if we're being called from the ChefDK CLI
if defined?(ChefDK::CLI)
  require 'chef_gen/flavors'
  chefdk.generator_cookbook = ChefGen::Flavors.path
end
```

- You're done! Let's get cooking.

## Usage

`chef generate cookbook cookbook-name -m platform@500px.com -I all_rights -C "500px, Inc."`

```
[ChefGen Flavor Selector]: Flavors on the menu
1. px_application_cookbook: Generate a new wrapper cookbook with 500px defaults. v1.0.0
2. px_environment_cookbook: Generate a new environment cookbook with 500px defaults. v1.0.0
3. px_library_cookbook: Generate a new wrapper cookbook with 500px defaults. v1.0.0
4. px_wrapper_cookbook: Generate a new wrapper cookbook with 500px defaults. v1.0.0
```

`[ChefGen Flavor Selector]: Enter selection: 4`

```
using ChefGen flavor 'px_wrapper_cookbook'
Recipe: px_wrapper_cookbook::cookbook
  * directory[/Users/shouser/500px/500px-jenkins/attributes] action create
    - create new directory /Users/shouser/500px/500px-jenkins/attributes
  * directory[/Users/shouser/500px/500px-jenkins/recipes] action create
    - create new directory /Users/shouser/500px/500px-jenkins/recipes
  * directory[/Users/shouser/500px/500px-jenkins/templates/default] action create
    - create new directory /Users/shouser/500px/500px-jenkins/templates/default
  * directory[/Users/shouser/500px/500px-jenkins/files/default] action create
    - create new directory /Users/shouser/500px/500px-jenkins/files/default
  * directory[/Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/localhost] action create
    - create new directory /Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/localhost
  * directory[/Users/shouser/500px/500px-jenkins/spec] action create
    - create new directory /Users/shouser/500px/500px-jenkins/spec
  * cookbook_file[/Users/shouser/500px/500px-jenkins/.rubocop.yml] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/.rubocop.yml
    - update content in file /Users/shouser/500px/500px-jenkins/.rubocop.yml from none to 82bdf3
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/.travis.yml] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/.travis.yml
    - update content in file /Users/shouser/500px/500px-jenkins/.travis.yml from none to 556260
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/Berksfile] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/Berksfile
    - update content in file /Users/shouser/500px/500px-jenkins/Berksfile from none to 941d08
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/chefignore] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/chefignore
    - update content in file /Users/shouser/500px/500px-jenkins/chefignore from none to 9727b1
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/Gemfile] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/Gemfile
    - update content in file /Users/shouser/500px/500px-jenkins/Gemfile from none to 21b3ff
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/Rakefile] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/Rakefile
    - update content in file /Users/shouser/500px/500px-jenkins/Rakefile from none to 47d6dc
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/Thorfile] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/Thorfile
    - update content in file /Users/shouser/500px/500px-jenkins/Thorfile from none to bab8d2
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/spec/default_spec.rb] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/spec/default_spec.rb
    - update content in file /Users/shouser/500px/500px-jenkins/spec/default_spec.rb from none to b74ea5
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/spec/spec_helper.rb] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/spec/spec_helper.rb
    - update content in file /Users/shouser/500px/500px-jenkins/spec/spec_helper.rb from none to 80471f
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/localhost/package_spec.rb] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/localhost/package_spec.rb
    - update content in file /Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/localhost/package_spec.rb from none to 649dcb
    (diff output suppressed by config)
  * cookbook_file[/Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/spec_helper.rb] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/spec_helper.rb
    - update content in file /Users/shouser/500px/500px-jenkins/test/integration/default/serverspec/spec_helper.rb from none to bc335a
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/.kitchen.yml] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/.kitchen.yml
    - update content in file /Users/shouser/500px/500px-jenkins/.kitchen.yml from none to 6e83ad
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/CHANGELOG.md] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/CHANGELOG.md
    - update content in file /Users/shouser/500px/500px-jenkins/CHANGELOG.md from none to 6e7b27
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/metadata.rb] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/metadata.rb
    - update content in file /Users/shouser/500px/500px-jenkins/metadata.rb from none to ea721e
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/README.md] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/README.md
    - update content in file /Users/shouser/500px/500px-jenkins/README.md from none to 05e8ca
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/Vagrantfile] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/Vagrantfile
    - update content in file /Users/shouser/500px/500px-jenkins/Vagrantfile from none to e6c44b
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/attributes/default.rb] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/attributes/default.rb
    - update content in file /Users/shouser/500px/500px-jenkins/attributes/default.rb from none to fbc3b4
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/LICENSE] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/LICENSE
    - update content in file /Users/shouser/500px/500px-jenkins/LICENSE from none to 529c9c
    (diff output suppressed by config)
  * template[/Users/shouser/500px/500px-jenkins/recipes/default.rb] action create_if_missing
    - create new file /Users/shouser/500px/500px-jenkins/recipes/default.rb
    - update content in file /Users/shouser/500px/500px-jenkins/recipes/default.rb from none to 6460e2
    (diff output suppressed by config)
  * execute[initialize-git] action run
    - execute git init .
  * cookbook_file[/Users/shouser/500px/500px-jenkins/.gitignore] action create
    - create new file /Users/shouser/500px/500px-jenkins/.gitignore
    - update content in file /Users/shouser/500px/500px-jenkins/.gitignore from none to 9abf24
    (diff output suppressed by config)

Your cookbook is ready. Type `cd 500px-jenkins` to enter it.
```

## Examples

* Create a cookbook named my_cookbook_name in the same subdirectory where pan resides.

(Mac & Windows): `chef generate cookbook my_cookbook_name`

## Supported Platforms

### Tested And Validated On
* Mac OSX 10.10 with ChefDK 0.9.0 and chef-gen-flavors 0.9.1

ChefDK 0.3.6 and higher all likely work, but previous versions were not tested and validated.

## Stuff This Custom Generator Does

Take a look at the flavors and generate a few cookbooks to see what they do. But I'll mention some best practices here:

### In default_attributes.rb

1. default['<%= @attribute_context %>']['file_cache_path']

  * I like to do this so that I can create a "workspace" for the cookbook to drop any files in so I avoid cookbook download collisions. If your cookbook doesn't download anything, than you can trash this.
  * It also provides a good example of how to do an attribute.

### In .kitchen.yml

1. chef_zero provisioner

  * It's probably stronger to provision with chef_zero than chef_solo since it behaves more like the server does. (That is to say, if you use chef server, then test with chef zero. If you're using solo, then test with solo.)
