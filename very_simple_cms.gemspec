$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "very_simple_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "very_simple_cms"
  s.version     = VerySimpleCms::VERSION
  s.homepage    = "https://github.com/edikgat/very_simple_cms"
  s.authors     = ["Eduard Gataullin, Ruslan Hamidullin"]
  s.email       = ["edikgat@gmail.com"]
  s.licenses    = ["MIT"]
  s.description = <<-EOF
    Very-Simple-Cms is a lightweight Content Management System, written in Ruby using
    the Ruby on Rails web framework. Very-Simple-Cms has the simplicity of a static site
    generator, but allows you to serve dynamic content on demand.

    Content is stored on disk in plain text files (there is no database).
    Edit your content in a text editor and keep it under version control
    (most people use git, but any version control system will do fine).
  EOF
  s.summary       =  %q{Ruby CMS, written in Ruby on Rails and use YML files to store content}

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "yaml_record_rails_4"
  
end
