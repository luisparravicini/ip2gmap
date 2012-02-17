path = ARGV.shift

File.open('data.json', 'w') do |io_out|
  io_out.puts("// cada elemento es (lat, lng)\nvar data = [")
  File.open(path) do |io|
    io.each_line do |line|
      out = `geoiplookup '#{line.strip}'`
out.force_encoding('iso-8859-1')

      pos = out.scan(/(-?\d+\.\d+), (-?\d+\.\d+)/).uniq
      pos.each { |x| io_out.puts("  [%s, %s]," % x) }
    end
  end

  io_out.puts(']')
end
