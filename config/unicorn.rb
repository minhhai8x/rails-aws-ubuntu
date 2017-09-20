# set app path
app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"
working_directory app_dir


# unicorn options
worker_processes 2
preload_app true
timeout 30

# socket config
listen "#{shared_dir}/sockets/unicorn.sock", :backlog => 64
#listen "/tmp/unicorn.sock"

# log file
stderr_path "#{shared_dir}/log/unicorn.stderr.log"
stdout_path "#{shared_dir}/log/unicorn.stdout.log"

# master PID config
pid "#{shared_dir}/pids/unicorn.pid"
