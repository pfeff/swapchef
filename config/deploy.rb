set :application, "swapchef.com"
set :user, "dachef"
set :repository,  "git@github.com:pfeff/swapchef.git"

set :use_sudo, false
set :deploy_via, :copy

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"
set :deploy_to, "/home/dachef/public_html/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion
set :scm, :git
set :branch, "master"

#set :location, "swapchef.com"
role :app, application
role :web, application
role :db,  application, :primary => true
