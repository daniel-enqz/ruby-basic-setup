def spec
  guard :rake, task: 'spec', run_on_all: true do
    watch(%r{^spec/.*\.rb$})
    watch(%r{^lib/.*\.rb$})
  end
end

def rubocop
  guard :rake, task: 'rubocop', run_on_all: true do
    watch(%r{^lib/.*\.rb$})
  end
end

def default
  spec
  rubocop
end

if ENV['RUN_SPEC']
  spec
elsif ENV['RUN_RUBOCOP']
  rubocop
else
  default
end
