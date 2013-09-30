# Very Simple Cms

Very Simple Cms is a lightweight Content Management System, that support Ruby on Rails 4. Very-Simple-Cms has the simplicity of a static site
generator, but allows you to
serve dynamic content on demand.

Content is stored on disk in plain text files (there is no database).
Edit your content in a text editor and keep it under version control
(most people use git, but any version control system will do fine).

This CMS is fully support [Mercury Editor](https://github.com/jejacks0n/mercury), and we recomend to use this CMS with this editor to change CMS content


## Installation

Add this line to your application's Gemfile:

    gem "very_simple_cms"

And then execute:

    $ bundle

After that run

    $ rails generate very_simple_cms:install
this code will create file config/initializers/very_simple_cms.rb.
After that you could change default settings at config/initializers/very_simple_cms.rb

If you would like to use Very Simple Cms with mercury editor, you should add this line to your application's Gemfile:

    gem 'mercury-rails', git: 'git@github.com:jejacks0n/mercury.git', branch: 'master'

After that run

    $ rails generate mercury:install

this command will install mercury editor, we recomend you to install it with layout

    $ rails generate very_simple_cms:init_mercury
this command will added 2 needed methods to app/assets/javascripts/mercury.js that are needed to integrate mercury editor with VerySimpleCms 

## Usage
To create a link to your editor (like mercury) use this helper

    cms_edit_link('custom_user_class')

To show text from cms use

    cms_block('title_of_text_area')
this code will display content that located by default in config/cms/{your_locale}/html_blocks.yml and have following title, also you can change file name and it's path by editing config/initializers/very_simple_cms.rb

##Options
- **editor path**  
 `VerySimpleCms.editor_path` 
it is path to wysiwyg editor that you use in your app 
- **translate** CMS support I18n. If you want to use multiple languages in your app simply set  
`VerySimpleCms.translatable = true`  
this will say cms to use folders that have name of locale to save cms content like  
`config/cms/{your_locale}/html_blocks.yml`  
if you set  
`VerySimpleCms.translatable = false`  
cms will save changes in path like  
`config/cms/{your_locale}/html_blocks.yml`  
- **name of yml file** You can change filename to save changes like  
`VerySimpleCms.source_file_name = '/html_blocks'
- **source files root** You can change path to save changes like  
  `VerySimpleCms.source_files_root = "config/cms/"`

##Caching
This Cms use yml files to save user data, but reading from disk is very slow, so to improve your application pervomance you should use caching.  
Very-Simple-Cms fully support caching, so to cash all cms fragments simple set

    config.action_controller.perform_caching = true

to learn more about caching that rails provides visit [Ruby on Rails Guides](http://guides.rubyonrails.org/caching_with_rails.html)


##Example
VerySimpleCms have build in simple test and example application that located in 'test/dummy' path

To run this app you should firstly clone VerySimpleCms project
    
    git clone git@github.com:edikgat/very_simple_cms.git
    
than

    cd very_simple_cms/test/dummy

and run rails server

    rails s

## P.S.
This CMS was tested only with Mercury editor and Rails 4 framework