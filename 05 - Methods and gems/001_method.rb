# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

def pot(base, exp)
  result = base ** exp
end


print "Digite o número base: "
base = gets.chomp.to_i

print "Digite o expoente: "
exp = gets.chomp.to_i

result = pot(base, exp)

puts "#{base}^#{exp} = #{result}."