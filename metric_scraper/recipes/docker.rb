docker_service 'default' do
  action [:create, :start]
end

docker_network 'custom-network' do
  action :create
end
