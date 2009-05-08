#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

set :port, ARGV[0] || 4567

get '*' do
  file = File.join('.', params[:splat].first)
  if File.directory?(file)
    file = File.join(file, 'index.html')
  end
  
  if File.file?(file)
    properties = `file -b -i #{file}`.chomp
    file_contents = File.read(file)
    
    headers(
      'Content-Type' => properties, 
      'Server' => "HTMLServe", 
      'Date' => Time.now.httpdate,
      'Content-Length' => file_contents.length,
      'Connection' => 'close'
      )

    file_contents
  else
    not_found("<p><span style='color:red'><b>Page Not Found</b> at #{file}</span></p>")
  end
end
