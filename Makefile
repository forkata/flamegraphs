example1: clean
	ruby example1.rb
	stackprof --stackcollapse tmp/stackprof-cpu-example1.dump > tmp/flamegraph-example1
	stackprof-flamegraph.pl tmp/flamegraph-example1 > tmp/flamegraph-example1.html

clean:
	rm -rf tmp/*
