# Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência. 

numbers = []
quantity = 3

puts "Digite #{quantity} números."

quantity.times { numbers.push(gets.chomp.to_i) }

new_numbers = numbers.map { |a| a**2 }

puts "----------------------"

quantity.times { |i| puts "#{numbers[i]}² = #{new_numbers[i]}." }