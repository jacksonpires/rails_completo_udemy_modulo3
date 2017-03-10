# config valid only for current version of Capistrano
lock "3.7.2"

set :application, "EscamboApp"
set :repo_url, "https://github.com/jacksonpires/rails_completo_udemy_modulo3.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/var/www/escamboapp"

set :branch, "master"

# Default value for :format is :airbrussh.
set :format, :airbrussh

set :log_level, :debug

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    invoke 'unicorn:stop'
    invoke 'unicorn:start'
  end
end
