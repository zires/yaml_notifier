module YamlNotifier
end

require 'exception_notifier/yaml_notifier'
ExceptionNotifier.add_notifier :yaml, {} if defined?(ExceptionNotifier)

require 'yaml_notifier/railtie' if defined?(Rails)
