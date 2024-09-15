docker_image 'vk35dev/docker-challenge' do
  tag 'latest'
  action :pull
end

docker_container 'docker-challenge' do
  repo 'vk35dev/docker-challenge'
  tag 'latest'
  port '80:80'
  networks ['custom-network']
  volumes [
    './files/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg', # HAProxy config
    './files/nginx01.conf:/etc/nginx/nginx01.conf',           # Nginx config 1
    './files/nginx02.conf:/etc/nginx/nginx02.conf',           # Nginx config 2
    './files/nginx03.conf:/etc/nginx/nginx03.conf'            # Nginx config 3
  ]
  action :run
end
