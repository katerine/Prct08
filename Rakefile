$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "tests con --format documentation"
	task :spec do
	sh "rspec spec/Matrices_spec.rb --format documentation"
end


desc "Ejecutar Fraccion.rb"
	task :bin do
	sh "ruby lib/Matrices.rb"
end

desc "Ejecutar test con formato html"
	task :thtml do
	sh "rspec spec/Matrices_spec.rb --format html"
end
