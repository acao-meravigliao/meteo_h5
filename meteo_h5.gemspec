#
# Copyright (C) 2015-2015, Daniele Orlandi
#
# Author:: Daniele Orlandi <daniele@orlandi.com>
#
# License:: You can redistribute it and/or modify it under the terms of the LICENSE file.
#

$:.push File.expand_path('../lib', __FILE__)
require 'meteo_h5/version'

Gem::Specification.new do |s|
  s.name        = 'meteo_h5'
  s.version     = MeteoH5::VERSION
  s.authors     = ['Daniele Orlandi']
  s.email       = ['daniele@orlandi.com']
  s.homepage    = 'https://acao.it/'
  s.summary     = %q{Receives meteo data and publishes it to an AMQP exchange}
  s.description = %q{Receives NMEA0183 and ModBus meteo data and publishes them to an AMQP exchange}

  s.rubyforge_project = 'meteo_h5'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  # s.add_development_dependency 'rspec'

  s.add_runtime_dependency 'ygg_agent', '~> 2.5.0'
  s.add_runtime_dependency 'serialport', '~> 1.3.1'
  s.add_runtime_dependency 'activesupport'
end
