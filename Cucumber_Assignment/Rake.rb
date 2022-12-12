require 'rake'
require 'parallel'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:first) do |task|
  ENV['CONFIG_NAME'] ||= "first"
  task.cucumber_opts = ['--format=json', '--require features/support', '--require features/step_definitions', '--out report.json']
end

