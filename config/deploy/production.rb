set :stage, :production
server '46.101.120.93', user: 'deploy', roles: %w{web app db}