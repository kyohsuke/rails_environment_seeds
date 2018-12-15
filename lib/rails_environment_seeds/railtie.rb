require 'rails/railtie'

class RailsEnvironmentSeeds::Railtie < ::Rails::Railtie
  rake_tasks do
    load File.join(File.dirname(__FILE__), 'tasks', 'environment_seeds.rake')
  end
end
