# -*- encoding : utf-8 -*-
# 
listen "/var/tmp/unicorn.sock"
worker_processes 5
app_root = File.expand_path('../../', __FILE__)
pid "#{app_root}/tmp/pids/unicorn.pid"
stderr_path "#{app_root}/log/unicorn.log"
stdout_path "#{app_root}/log/unicorn.log"
