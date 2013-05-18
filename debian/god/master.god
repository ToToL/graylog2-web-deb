# -*- encoding : utf-8 -*-
#
@rails_env  = ENV['RAILS_ENV'] || "production"
@app_root   = "/var/www/graylog2-web"
@app_user   = "graylog2"
@config_dir = "/var/www/graylog2-web/god"
@pids_root  = "#{@app_root}/tmp/pids"
@log_root   = "#{@app_root}/log"

God.terminate_timeout = 60
God.pid_file_directory = @pids_root
God.log_file = "#{@log_root}/god.log"

God.load File.join(@config_dir, "unicorn.god")
