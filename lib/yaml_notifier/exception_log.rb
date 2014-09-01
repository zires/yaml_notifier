require 'yaml_record'

module YamlNotifier
  class ExceptionLog < YamlRecord::Base
    properties :title, :message, :backtrace, :user_agent, :request_uri, :request_method, :extra_params, :controller, :action
  end
end
