Gem::Specification.new do |s|
  s.name = 'htmlserve'
  s.version = "1.0.1"
  s.platform = Gem::Platform::RUBY
  s.summary = "A simple sinatra based server for rendering HTML sites"
  
  s.files = ['bin/htmlserve', 'bin/htmlserve.rb']
  s.has_rdoc = false

  s.bindir = "bin"
  s.executables << "htmlserve"

  s.author = "Adam Cooke"
  s.email = "adam@atechmedia.com"
  s.homepage = "http://www.atechmedia.com"
end
