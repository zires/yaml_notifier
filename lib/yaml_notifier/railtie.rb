module YamlNotifier
  class Railtie < ::Rails::Railtie
    initializer "yaml_record.root_path" do
      YamlRecord.root_path = File.join(Rails.root, 'db')
    end
  end
end
