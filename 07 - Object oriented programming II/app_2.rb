require_relative 'produto'
require_relative 'mercado'

nome = ['Macarrão', 'Atum', 'Molho de tomate']
preco = [3, 5, 2]


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


