README
======

El script convierte una lista de direcciones IP a una lista de posiciones (latitud, longitud) que luego es usada para mostrarlos con google maps. Usa Marker Clusterer para poder mostrar miles de puntos en el mapa.

Es necesario tener instalado ruby 1.9, geoip, y la base de ciudades de geoip (en Debian los paquetes son geoip-bin geoip-database-contrib).

Teniendo en un archivo la lista de ips, correr:

    ruby ip2pos.rb <archivo>
 
Eso genera el archivo data.json con la lista de posiciones. Ya se puede abrir map.html en algun navegador (solo probado con Chrome).

