
# add requires for bench:


# set run repetitions
RUNS = 65536

# add variables for bench:

a = 0


start = Time.utc
RUNS.times {
    # 1st run

    a += 1
    # a += 2        # reverse test

    # bench functions
    func1
    # func2         # reverse test
}
ende = Time.utc
first = (ende.nanosecond - start.nanosecond)

# reset bench variables:

a = 0


# run garbage collector
GC.collect()      # slower 2nd run

start = Time.utc
RUNS.times {
    # 2nd run

    a += 2
    # a += 1        # reverse test

    # bench functions
    func2
    # func1         # reverse test
}
ende = Time.utc
second = (ende.nanosecond - start.nanosecond)

# print result nanoseconds
# print "1st run: "
# print first / RUNS.to_f
# puts " ns"
# print "2nd run: "
# print second / RUNS.to_f
# puts " ns"

# print result microseconds
print "1st run: "
print first / RUNS.to_f / 1000.0
puts " µs"
print "2nd run: "
print second / RUNS.to_f / 1000.0
puts " µs"

# print result milliseconds
# print "1st run: "
# print first / RUNS.to_f / 1.0e6
# puts " ms"
# print "2nd run: "
# print second / RUNS.to_f / 1.0e6
# puts " ms"

# print result seconds
# print "1st run: "
# print first / RUNS.to_f / 1.0e9
# puts " s"
# print "2nd run: "
# print second / RUNS.to_f / 1.0e9
# puts " s"


# add functions for bench:

fun func1       # demo function
end

fun func2       # demo function
end
