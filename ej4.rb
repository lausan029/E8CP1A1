puts 'Ingrese una opcion:'
puts ' 1: Productos existentes'
puts ' 2: Cantidad de stock total'
puts ' 3: Productos no registrados en cada bodega'
puts ' 4: Existencia total menor a un valor ingresado por el usuario'
puts ' 5: Registrar un nuevo producto'
puts ' 6: Salir'
num = gets.chomp.to_i

arr = []

while num != 6
	case num
	when 1
		p "Ingrese una opcion:"
		p "     a) Mostrar la existencia por productos."
		p "     b) Mostrar la existencia total por tienda."
		p "     c) Mostrar la existencia total en todas las tiendas."
		p "     d) Volver al menú principal."
		ops = gets.chomp
			case ops
			when "a"
				file = File.open('productos.txt', 'r')
				contents = file.readlines
  			file.close

				result = 0
			  contents.each do |e|
					new_c = e.split(",")
					result = new_c.inject(0){|x,y| x + y[1].to_i}
					p "El producto #{new_c[0]} contiene #{result} en stock"
				end

			when "b"
			  file = File.open('productos.txt', 'r')
				contents = file.readlines
  			file.close
  			
				result = 0
			  contents.each do |e|
					new_c = e.split(",")
					result = new_c.inject(0){|x,y| x + y.to_i}
					p "El producto #{new_c[0]} contiene #{result} en stock"
				end
			when "c"
			  puts 'You need help!!!'
			when "d"
				p "Volver al menu principal"
				
			else
			  puts "La opcion es incorrecta"
			end
	when 2
		p "Ingrese el nombre del producto a consultar:"
		prod = gets.chomp

		file = File.open('productos.txt', 'r')
		contents = file.readlines
  	file.close

		result = 0
	  contents.each do |e|
			if  e.include?(prod)
				new_c = e.split(",")
				result = new_c.inject(0){|x,y| x + y.to_i}
			end
		end
		p "El producto contiene #{result} en stock"

	when 3
		file = File.open('productos.txt', 'r')
		contents = file.readlines
	  file.close
		  contents.each do |e|
				if  e.include?('NR')
					new_c = e.split(",")
					p "El producto #{new_c[0]} no esta registrado en una tienda"
				end
			end

	when 4
	  puts "Introduzca el numero a verificar:"
	  numero = gets.chomp.to_i

	  file = File.open('productos.txt', 'r')
	  contents = file.readlines
	  file.close
	  result = 0
	  contents.each do |e|
			new_c = e.split(",")
			prod = new_c[0]
			new_c.delete_at(0)
					result = new_c.inject(0){|x,y| x + y.to_i if y < numero}
					p "El producto #{new_c[0]} suma #{result}"
			end


	when 5
		puts "Ingrese el nuevo producto seguido de la cantidad de stock"
		prod_new = gets

		file = File.open('productos.txt', 'a')
		file.puts prod_new
  	file.close

	else
	  puts "Introduzca una opcion correcta"
	end

puts 'Ingrese una opcion:'
puts ' 1: Productos existentes'
puts ' 2: Cantidad de stock total'
puts ' 3: Productos no registrados en cada bodega'
puts ' 4: Existencia total menor a un valor ingresado por el usuario'
puts ' 5: Registrar un nuevo producto'
puts ' 6: Salir'
num = gets.chomp.to_i
end

puts "Hasta Luego"