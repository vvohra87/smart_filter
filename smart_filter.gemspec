# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "smart_filter"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Varun Vohra"]
  s.date = "2012-01-31"
  s.description = "Extend Active Record to provide a smart filter function."
  s.email = "varun@genii.in"
  s.extra_rdoc_files = ["README.rdoc", "lib/smart_filter.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "init.rb", "lib/smart_filter.rb", "smart_filter.gemspec"]
  s.homepage = "http://github.com/vvohra87/smart_filter"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Smart_filter", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "smart_filter"
  s.rubygems_version = "1.8.13"
  s.summary = "Extend Active Record to provide a smart filter function."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
