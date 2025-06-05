require 'serverspec'
require 'net/ssh'

set :backend, :ssh

host = ENV['AWS_EC2_PUBLIC']
raise "AWS_EC2_PUBLIC is not set!" unless host

options = Net::SSH::Config.for(host)
options[:user] ||= "ec2-user"
set :host,        options[:host_name] || host
set :ssh_options, options
set :disable_sudo, false
