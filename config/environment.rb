#First Load Bundler
require 'bundler'
#Require the Gems from the Gemfile using Bundler
Bundler.require  #=> This require's all gems in Gemfile

#Load libraries
require_relative '../lib/top_ranked_ski_resorts.rb'
require_relative '../lib/top_ranked_ski_resorts/version'
require_relative '../lib/top_ranked_ski_resorts/scraper'
require_relative '../lib/top_ranked_ski_resorts/resort'
require_relative '../lib/top_ranked_ski_resorts/cli'

#Load other random stuff
puts "Loaded environment?"