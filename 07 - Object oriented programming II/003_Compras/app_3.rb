require_relative 'produto'
require_relative 'mercado'

#variáveis
nome = []
preco = []
flag = true

#entrada de dados
loop do
  produto = ''
  puts "Cadastre um novo produto. Digite sair para sair"
  print "Nome: "
  produto = gets.chomp
  
  if produto == 'sair'
    flag = false
  else
    nome.push(produto)
    print "Preço: "
    preco.push(gets.chomp.to_i)
  end
  
  system("clear")
  puts "Produto cadastrado!"

  break if flag == false
end

#cadastro
if nome.size == preco.size
  nome.size.times do |i|
    produto = Produto.new
    produto.nome = nome[i]
    produto.preco = preco[i]

    mercado = Mercado.new(produto)
    mercado.comprar

    if nome.size - 1 == i
      mercado.total
    end
  end
else
  puts "Por favor, verifique seus dados."
end


