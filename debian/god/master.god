# God configuration file
#
require "god"

@rails_env  = ENV['RAILS_ENV'] || "production"
@rails_root = "/var/www/graylog2-web"
@conf_dir   = File.dirname(__FILE__)
@pids_root  = "#{@rails_root}/tmp/pids"
@log_root   = "#{@rails_root}/log"

puts @rails_env
puts @rails_root
puts @conf_dir

God.terminate_timeout = 60
God.pid_file_directory = @pids_root
God.log_file = "#{@log_root}/god.log"

puts <<-GOD
  god configuration:
  rails_env  : #{@rails_env}
  rails_root : #{@rails_root}
  conf_dir   : #{@conf_dir}
  log_root   : #{@log_root}
  pids_root  : #{@pids_root}
GOD

God.load File.join(@conf_dir, "thin.god")
