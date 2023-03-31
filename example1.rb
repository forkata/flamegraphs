require 'stackprof'

def a
 b
end

def b
  c
  c
  c
end

def c
  sleep 0.001
  puts "Hello!"
end

StackProf.run(
  mode: :wall,
  raw: true,
  ignore_gc: true,
  interval: 1,
  out: 'tmp/stackprof-cpu-example1.dump') do
  a
end
