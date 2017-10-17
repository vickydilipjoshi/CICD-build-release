require 'spec_helper'

#describe 'neo-store-base-build::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
#  it 'Download jdk file' do
 #   skip 'Replace this with meaningful tests'
 # end
#end


require 'chefspec'

describe 'neo-store-base-build::fetch_pkgs' do
  let(:chef_run) { ChefSpec::Runner.new(log_level: :fatal).converge(described_recipe) }

  it 'Download and install base' do
    expect(chef_run).to start_service('neo-deploy')
  end

  #it 'does other actions' do
   # expect(chef_run).to mount ('/Lib_source')
  # end
end
