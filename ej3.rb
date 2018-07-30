def contador_p(archivo)
	file = File.open(archivo, 'r')
  contents = file.readlines
  contents = contents.map{ |e| e.split(" ")}
  result = contents.inject(0){|x,y| x + y.count}
  file.close
  return result
end

def contador_s(archivo,palabra)
	file = File.open(archivo, 'r')
  contents = file.readlines
  file.close
  contents = contents.map{ |e| e.split(" ")}
  sum = 0 
  contents.each do |i|
  	i.map do |o|
  		if palabra == o
  			sum += 1
  		end
  	end
  end
 
  return sum
end

p contador_p('peliculas.txt')
p contador_s('peliculas.txt','Galaxias.')