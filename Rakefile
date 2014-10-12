task :default => :test

desc "Pruebas unitarias de la clase Point"
task :test do
  sh "ruby -I. test/tc_point.rb"
end

desc "Lint the sources"
task :lint, :file  do |t, args|
  args.with_defaults(:file => "lib/point.rb")
  sh "rubocop #{args[:file]}"
end
