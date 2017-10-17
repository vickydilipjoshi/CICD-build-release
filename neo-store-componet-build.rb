tag('base-build')


# base-build
machine 'base-build' do
  recipe 'fetch_pkgs'
  recipe 'fetch_war'
  tag 'mydb_master'
end

num_base_build = 1

tag('base-deploy')
# deploy-base
1.upto(num_base_build) do |i|
  machine "deploy#{i}" do
    recipe 'fetch_war'
    recipe 'deploy war'
  end
end
