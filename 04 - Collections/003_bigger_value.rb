# Dado o seguinte hash:
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
# Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante. 


numbers = { a: 10, b: 30, c: 20, d: 25, e: 15 }
values = []

#putting the values in an array
numbers.each { |key, value| values.push value }

#sorting the array
values = values.sort

#setting the bigger value
bigger_value = numbers.key(values.last)

#selecting the key from the bigger value
bigger_hash = numbers.select { |a| a == bigger_value }

#output
puts "Hash: #{numbers}"
puts "Maior valor: #{bigger_hash}"