require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('smart_filter', '0.1.1') do |p|
  p.description     = "Extend Active Record to provide a smart filter function."
  p.url             = "http://github.com/vvohra87/smart_filter"
  p.author          = "Varun Vohra"
  p.email           = "varun@genii.in"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }