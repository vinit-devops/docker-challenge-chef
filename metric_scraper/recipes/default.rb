#
# Cookbook:: metric_scraper
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.
include_recipe 'metric_scraper::docker'
include_recipe 'metric_scraper::docker-challenge'
include_recipe 'metric_scraper::scraper'
