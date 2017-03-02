# Pan Cookbook Generator
## Release 4.0.15 2017/03/02

* Consoildated to a single px cookbook for the moment to reduce maintenance and complexity.
* Added better defaults and configuration surrounding testing both unit and integration.
* Added an updated Rakefile that includes support for concurrent testing.

## Release 4.0.13 2017/02/09

* Heavy duty updates to our README and a few other elements.
* Synced up the env and non-env template directories.  They only differ in handling Berksfile.lock now.

## Release 4.0.12 2017/02/09

* Updates to cleanup typos and fix templates

## Release 4.0.11 2017/02/09

* Added a missing % on the closing tag of an ERB tag

## Release 4.0.10 2017/02/09

* Fixed cloud kitchen yml files to escape ENV vars that point to keys and AWS keypair IDs
* Updated README files with some default info about testing on EC2 configuration for environment vars

## Release 4.0.9 2017/02/09

* Fixed a typo that broke the copy helpers module

## Release 4.0.8 2017/02/09

* Updated the rakes with integration command that correctly runs integration tests in the default environment

## Release 4.0.7 2017/02/09

* Updated the kithcen yamls for cloud and vagrant to include our data_bag path for testing with real data.

## Release 4.0.6 2017/02/??

* Unknown

## Release 4.0.5 2017/02/??

* Unknown

## Release 4.0.4 2017/01/30

* small improvement to Rakefile syntax

## Release 4.0.4 2017/01/30

* Updated with latest default versions for our template cookbooks

## Release 4.0.3 2017/01/17

* Added initial generator templates for 500px wrapper, library, and application cookbooks.  Initially only differing from environment cookbooks by ignoring Berksfile.lock for git purposes.
* Cleaned out the default pan_* cookbook templates to avoid confusion.

## Release 4.0.2 2017/01/17

* Added new template folder tree with heavy modifications to default structure/files for 500px Environment Cookbooks

## Release 4.0.1 2017/01/16

* Modified to bring into alignment with 500px, Inc. needs

## Release 4.0.0 2015/10/29

* Added a dsc_script example flavor.
* Removed chef-gen-flavor-base as a dependency. I believe the features in chef-gen-flavor-base are unnecessary. This also removes a potential breaking change in pan for ChefDK 0.9.0.
* Added a simple helper module for less code duplication in flavors.
* Some small renames should make it easier for newer Chef developers to consume flavors or construct their own flavors by following this example.

## Release 3.0.1 2015/09/22

* Small update to take a dependency on chef-gen-flavors

## Release 3.0.0 2015/09/22

* Large refactor for chef-gen-flavors 0.9.1+. Note that this release of pan will now only work on chef-gen-flavors 0.9.1+.
* Support for ChefDK 0.7.0.

## Release 2.0.0 2015/06/03

* Massive overhaul. Now uses [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors) and provides several different flavors of cookbook generators for you to consume.

## Release 1.1.1 2015/04/30

* Fix readme.

## Release 1.1.0 2015/04/28

* Support for ChefDK 0.5.0.
* Updates to example kitchen.yml to mirror idiomatic Windows configuration.
* Added default rubocop.yml.

## Release 1.0.1

* Small updates to support ChefDK 0.3.6. Will no longer work on ChefDK 0.3.5 and below.

## Release 1.0.0

* Provide cookbook example generator
