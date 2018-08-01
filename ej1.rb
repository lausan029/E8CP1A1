def creador_str(s1,s2)
	file = File.open('index.html', 'w')
	c1 = "<p>#{s1}</p>"
	c2 = "<p>#{s2}</p>"
  file.puts c1
  file.puts c2
	file.close
end

def arreglo_list(arr)
	file = File.open('index.html', 'a')
	file.puts "<ol>"
	arr.each do |a|
		contenido = "<li>#{a}</li>"
		file.puts contenido
	end
	file.puts "</ol>"
	file.close
end


def add_color(color)
	file = File.open('index.html', 'r')
  contents = file.readlines
  file.close

  file_a = File.open('index.html', 'w')

  contents = contents.map{ |e| e.split(" ")}
  contents.each do |i|
  	i.map do |o|
  		file_a.puts o.gsub("<p>", '<p style = "background-color:' + "#{color}" + '">')
  	end
  end
  file_a.close
	#buscar los que diga <p> y sustiruir por <p style = "background-color: #{color}">
end


p creador_str('h','j')

arr = ['o','l','h']
p arreglo_list(arr)

p add_color('#cccc')
