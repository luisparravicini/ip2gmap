# genera una lista de direcciones IP al azar, para testear el mapa
5000.times do
  puts 4.times.map { rand(255) }.join('.')
end
