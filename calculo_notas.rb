data = File.open("notas.data").readlines
data.map!{|linea| linea.split(",")}


def nota_mas_alta(array)
    array.map{|x| x.to_i}.max
end
pp nota_mas_alta(data[0]) 