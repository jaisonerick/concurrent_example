# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'concurrent'
set :user, 'deploy'
# set :repo_url, 'git@github.com:organization/repository.git'

set :rbenv_ruby, File.read('.ruby-version').strip
set :rbenv_type, :user
set :rbenv_bin_path, '/home/deploy/.rbenv/shims'
set :rbenv_prefix, -> { "#{fetch(:rbenv_path)}/bin/rbenv exec dotenv" }

set :nginx_domains, 'concurrent.com.br'
set :nginx_template, "#{stage_config_path}/nginx.conf.erb"
set :app_server_port, 3000

set :rollbar_token, ENV['ROLLBAR_TOKEN']
set :rollbar_env, proc { fetch :stage }
set :rollbar_role, proc { :db }

# Always deploy the current branch.
set :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :deploy_to, '/home/deploy/concurrent'
set :log_level, :info

set :linked_dirs, fetch(:linked_dirs, []).push('log',
                                               'tmp/pids',
                                               'tmp/cache')

set :linked_files, %w(.env)

set :default_env, path: '/home/deploy/.rbenv/shims:$PATH'

after 'deploy:updated', 'newrelic:notice_deployment'
