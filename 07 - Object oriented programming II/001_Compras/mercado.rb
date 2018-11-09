class Mercado
  def initialize(produto)
    @produto = produto
  end

  def comprar
    puts "Você comprou #{@produto.nome}, que custa #{@produto.preco} reais."
  end
end