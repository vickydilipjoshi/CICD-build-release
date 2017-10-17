require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: base-deploy.rb [options]"

  opts.on("-v", "--[no-]verbose", "Detailed output -debug") do |v|
    options[:verbose] = v
end

  opts.on("-a", "--all", "install all dependencies and required settings based on state of system and state of file definition") do |a|
    options[:all] = a 
  end
end.parse!

p options
p ARGV