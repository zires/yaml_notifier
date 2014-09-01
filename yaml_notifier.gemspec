# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yaml_notifier/version"

Gem::Specification.new do |s|
  s.name        = "yaml_notifier"
  s.version     = YamlNotifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thierry Zires"]
  s.email       = ["zshuaibin@gmail.com"]
  s.homepage    = "https://github.com/zires/yaml_notifier"
  s.summary     = %q{save exceptions in yaml when exception_notification occur}
  s.description = %q{save exceptions in yaml when exception_notification occur}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'yaml_record4', '= 0.0.6'

end
