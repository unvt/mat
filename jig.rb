unless ARGV.size == 2
  raise "usage: ruby jig.rb white ffffff"
end

r = ARGV[1][-6..-5].to_i(16)
g = ARGV[1][-4..-3].to_i(16)
b = ARGV[1][-2..-1].to_i(16)

path = "docs/#{ARGV[0]}"
File.open(path, 'w') {|w|
  w.print <<-EOS
[
  rgb
  #{r}
  #{g}
  #{b}
]
  EOS
}
print "wrote #{path}"

