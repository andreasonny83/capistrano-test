# the server folder where we want to deploy the project
set :deploy_to, "/home/sonny883/capistrano/#{fetch(:application)}/stage"

# set :linked_dirs, %w{/home/sonny883/capistrano/test-project/stage/current /home/sonny883/public_html/test}

role :web, %w{sonnywebdesign.com}

server 'sonnywebdesign.com',
  user: 'sonny883',
  roles: %w{web}

set :branch, 'master'
