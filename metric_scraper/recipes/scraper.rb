docker_image 'prom/node-exporter' do
  tag 'latest'
  action :pull
end

docker_container 'node_exporter' do
  repo 'prom/node-exporter'
  tag 'latest'
  port '9100:9100'
  networks ['custom-network']
  action :run
end

