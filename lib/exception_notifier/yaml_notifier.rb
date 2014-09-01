require 'yaml_notifier/exception_log'

module ExceptionNotifier
  class YamlNotifier

    def initialize(options)
      # initialize options here
      @extra_params = options[:extra_params] || []
    end

    def call(exception, options={})
      log = ::YamlNotifier::ExceptionLog.new({
        title: exception.inspect,
        message: exception.message,
        backtrace: exception.backtrace.join("\n")
      })

      env = options[:env]
      unless env.nil?
        log.user_agent     = env['HTTP_USER_AGENT']
        log.request_uri    = env['REQUEST_URI']
        log.request_method = env['REQUEST_METHOD']
        log.controller     = env['action_dispatch.request.path_parameters'][:controller]
        log.action         = env['action_dispatch.request.path_parameters'][:action]
        log.extra_params   = @extra_params.map{|p| env[p]} unless @extra_params.empty?
      end

      log.save
    end
  end
end
