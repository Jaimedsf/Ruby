# Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

hash = {}
quantity = 3

quantity.times do
  print "Digite a chave: "
  key = gets.chomp.to_sym
  print "Digite o valor: "
  hash[key] = gets.chomp
end

hash.each { |key, value| puts "Uma das chaves é #{key} e seu valor é #{value}." }