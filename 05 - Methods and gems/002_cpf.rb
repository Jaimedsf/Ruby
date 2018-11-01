# Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf e em um método verifique se este número é válido. 

require "cpf_cnpj"

# Check if a CPF is valid
def check(cpf)
  CPF.valid?(cpf)
end

# Return formatted CPF (xxx.xxx.xxx-xx)
def format_cpf(cpf)
  cpf_formatted = CPF.new(cpf)
  cpf_formatted.formatted
end

print "Digite um número de CPF: "
cpf = gets.chomp

if check(cpf)
  puts "O CPF #{format_cpf(cpf)} é válido!"
else
  puts "CPF inválido."
end