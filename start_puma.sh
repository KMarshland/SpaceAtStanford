#!/usr/bin/env bash
source ~/.bashrc
source ~/.profile
cd /var/habmc && /root/.rbenv/shims/bundle exec puma -C config/puma.rb