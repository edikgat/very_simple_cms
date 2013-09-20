# VerySimpleCms

Very-Simple-Cms is a lightweight Content Management System, written in Ruby using
the Ruby on Rails web framework. Very-Simple-Cms has the simplicity of a static site
generator, but (being a fully fledged Rack application) allows you to
serve dynamic content on demand.

Content is stored on disk in plain text files (there is no database).
Edit your content in a text editor and keep it under version control
(most people use git, but any version control system will do fine).

## Installation

Add this line to your application's Gemfile:

     gem "very_simple_cms"

And then execute:

     $ bundle

Or install it yourself as:

    $ gem install very_simple_cms

After that run

    $ rails generate very_simple_cms:install

after that you could change default settings at config/initializers/very_simple_cms.rb

If you would like to use Very-Simple-Cms with mercury editor, you should add this line to your application's Gemfile:

    gem 'mercury-rails', git: 'git@github.com:jejacks0n/mercury.git', branch: 'master'

After that run 

    $ rails generate mercury:install
    $ rails generate very_simple_cms:init_mercury

## Usage
To create a link to your editor (like mercury) use this helper

     cms_edit_link('id_of_text_area')

To show text from cms use

     cms_block('id_of_text_area')

## Options
All changes are saved to VerySimpleCms.source_files_root, default is in "config/cms/" directory

If you would like to use several longauges in you app, set

    VerySimpleCms.translatable = true

To change file_saving name use following option

    VerySimpleCms.source_file_name = '/html_blocks'

## P.S.
This CMS was tested only with Mercury editor and Rails 4 framework