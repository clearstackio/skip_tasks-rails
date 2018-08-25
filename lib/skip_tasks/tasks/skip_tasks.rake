namespace :skip_tasks do
  desc 'Raises exception if used in production'
  task raise: [:environment] do
    raise "You cannot run this in #{Rails.env}" unless Rails.env.development? || Rails.env.test?
  end
end

%w(
db:create
db:drop
db:fixtures:load
db:schema:load
db:seed
db:sessions:create
db:setup
db:structure:load
test:all:db
test:db
).select {|t| Rake::Task.task_defined?(t)}.each do |t|
  Rake::Task[t].enhance ['skip_tasks:raise']
end
