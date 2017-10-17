
# Cookbook Name:: maven
# Resource:: default
#Authored by Andrew thompson
#Originally forked from Bryan W. Berry <bryan.berry@gmail.com>


actions :install, :put

attribute :artifact_id,  :kind_of => String
attribute :group_id,     :kind_of => String, :required => true
attribute :dest,         :kind_of => String
attribute :version,      :kind_of => String, :required => true
attribute :packaging,    :kind_of => String, :default => 'jar'
attribute :classifier,   :kind_of => String
attribute :owner,        :kind_of => String, :default => 'root'
attribute :mode,         :kind_of => [Integer, String], :default => '0644'
attribute :repositories, :kind_of => Array
attribute :transitive,   :kind_of => [TrueClass, FalseClass], :default => false

alias_method :artifactId, :artifact_id # rubocop:disable SymbolName
alias_method :groupId, :group_id # rubocop:disable SymbolName

def initialize(*args)
  super
  # we can't use the node properties when initially specifying the resource
  @artifact_id ||= @name
  @repositories ||= node['store-maven']['repositories']
  @action = :install
end
