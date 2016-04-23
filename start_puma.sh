#!/usr/bin/env bash
source ~/.bashrc
source ~/.profile
cd /var/habmc && /root/.rbenv/shims/bundle exec puma -C config/puma.rb -e production -b unix:///var/run/spaceatstanford.sock