# Utilizando as estruturas de iteração e condição, crie uma calculadora que ofereça ao usuário a opção de Multiplicar, Dividir, Adicionar ou Subtrair dois números. Não se esqueça de também permitir que o usuário feche o programa.

flag = true
result = ''

while flag
  system "clear"
  if result != ''
    puts result
    puts '-----------------------'
  end
  #input
  print 'Digite um número: '
  num1 = gets.chomp.to_i
  print 'Digite outro número: '
  num2 = gets.chomp.to_i

  #menu
  puts '-----------------------'
  puts 'Selecione uma opção:'
  puts '1 - Somar'
  puts '2 - Subtrair'
  puts '3 - Multiplicar'
  puts '4 - Dividir'
  puts '0 - Sair'
  print '-> '
  opt = gets.chomp.to_i

  case opt
  when 1
    result = "Resultado da soma: #{num1 + num2}"
  when 2
    result = "Resultado da subtração: #{num1 - num2}"
  when 3
    result = "Resultado da multiplicação: #{num1 * num2}"
  when 4
    result = "Resultado da divisão: #{num1 / num2}"
  when 0
    flag = false
    break
  else
    puts 'Favor digite uma opção válida!'
  end
end