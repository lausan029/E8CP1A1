def creador_str(s1,s2)
	file = File.open('index.html', 'w')
	c1 = "<p>#{s1}</p>"
	c2 = "<p>#{s2}</p>"
  file.puts c1
  file.puts c2
	file.close
end

def arreglo_list(arr)
	file = File.open('index.html', 'w')
	file.puts "<ul>"
	arr.each do |a|
		contenido = "<li>#{a}</li>"
		file.puts contenido
	end
	file.puts "</ul>"
	file.close
end


p creador_str('h','j')

arr = ['o','l','h']
p arreglo_list(arr)


