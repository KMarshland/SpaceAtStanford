#!/usr/bin/env bash
source ~/.bashrc
source ~/.profile
cd /var/spaceatstanford && /root/.rbenv/shims/bundle exec puma -C config/puma.rb