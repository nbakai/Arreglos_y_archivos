array = open('ventas_base.db').read.chomp.split(',')
def proyecciones(arr)
    result = arr.map{ |x| x.to_f}
    

    sum1 = result.inject do |sum, x| 
        break sum if x ==result[6] 
        sum + x 
    end
    sum2 = result.inject do|sum, x| 
        sum + x
    end
    sum2 = (sum2 - sum1)*1.2
    sum2= sum2.truncate(2)
    sum1 = sum1*1.1 
    sum1 = sum1.truncate(2)
    
    
    
    return "#{sum1}\n#{sum2}\n"
end
data = proyecciones(array)


File.write('resultados.data', data)





