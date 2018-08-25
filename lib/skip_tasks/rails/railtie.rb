require 'rails/railtie'

module SkipTasks
  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load 'skip_tasks/tasks/skip_tasks.rake'
      end
    end
  end
end
