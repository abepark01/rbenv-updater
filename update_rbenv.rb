#!/usr/bin/env ruby
home = ENV['HOME']
rbenv_dir = "#{home}/.rbenv"
Dir.chdir(rbenv_dir) do
  puts "Updating rbenv..."
  puts `git pull`
end

rubybuild_dir = "#{rbenv_dir}/plugins/ruby-build"
Dir.chdir(rubybuild_dir) do
  puts "Updating ruby-build..."
  puts `git pull`
end

puts "Updating ruby gems..."
puts `gem update --system`
puts `gem update`

