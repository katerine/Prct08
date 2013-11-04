

task :default => :spec

desc "tests con --format documentation"
	task :spec do
	sh "rspec spec/rspec_Matrices.rb --format documentation"
end


desc "Ejecutar Fraccion.rb"
	task :bin do
	sh "ruby lib/Matrices.rb"
end

desc "Ejecutar test con formato html"
	task :thtml do
	sh "rspec spec/rspec_Matrices.rb --format html"
end
