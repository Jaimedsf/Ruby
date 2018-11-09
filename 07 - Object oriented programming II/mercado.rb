class Mercado
  @@total = 0
  @@quantidade_de_produtos = 0
  def initialize(produto)
    @produto = produto
  end

  def comprar
    @@total += @produto.preco
    @@quantidade_de_produtos += 1
    puts "Você comprou #{@produto.nome}, que custa #{@produto.preco} reais."
  end

  def total
    puts "-----------------------------------------"
    puts "Você comprou #{@@quantidade_de_produtos} produtos, num total de #{@@total} reais."
  end
end