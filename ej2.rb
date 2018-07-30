def contador
	file = File.open('peliculas.txt', 'r')
  contents = file.readlines
  file.close
  return contents.count
end

p contador