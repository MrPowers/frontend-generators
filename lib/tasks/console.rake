desc "launches pry with frontend-generators environment loaded"
task :console do
  sh "pry -r ./lib/frontend_generators.rb"
end

