require 'config/boot'
require 'config/environment'

every(3.minutes, 'marketpoint.fetch') { Delayed::Job.enqueue MarketPointJob.new }
