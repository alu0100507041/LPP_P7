desc "Ejecutar practica"
task :default do
  sh "ruby -Ilib /lib/fraccion/fraccion.rb"
end

desc "Ejecucion de pruebas rspec"
task :test do
  sh "rspec --color --format documentation -Ilib -Ispec spec/fraccion/fraccion_spec.rb"
end

desc ""
task :thtml do
  sh "rspec --format html -Ilib -Ispec spec/fraccion/fraccion_spec.rb"
end
