docker_image 'vk35dev/docker-challenge' do
  tag 'latest'
  action :pull
end

docker_container 'docker-challenge' do
  repo 'vk35dev/docker-challenge'
  tag 'latest'
  port '80:80'
  networks ['custom-network']
  action :run
end
