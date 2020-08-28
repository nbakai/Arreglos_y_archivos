array = open('ventas_base.db').read.chomp.split(',').map(&:to_f)


def proyecciones(arr, aumento, desde, hasta)
    result = arr[desde..hasta] 
    sum = result.map{|x| x*aumento}.sum
end
    

output = File.open("resultados.data", "w")
output.write(proyecciones(array, 1.1, 0, 5))
output.write("\n")
output.write(proyecciones(array, 1.2, 0, 11))







