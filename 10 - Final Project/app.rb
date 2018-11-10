=begin
Crie um software que permita que o usuário entre com um texto, o idioma em que o texto está escrito e também o idioma para qual ele deseja traduzir o texto e receba como resposta na tela o texto traduzido.

Critérios:
    Você deve utilizar orientação a objetos no seu software
    O resultado de cada tradução (junto com a frase original) deve ser guardado em um arquivo que possua no nome a data e horário da tradução (exp: 10-10-18_10:30.txt)
=end

require_relative 'translate'
require_relative 'write_file'

def menu 
  traduzir = Translate.new
  
  puts "Digite a frase que deseja traduzir."
  traduzir.frase_origem = gets.chomp
  puts "Digite o idioma original. (pt, en, es, ja, de, la)"
  traduzir.idioma_origem = gets.chomp
  puts "Selecione o idioma para tradução. (pt, en, es, ja, de, la)"
  traduzir.idioma_traducao = gets.chomp

  traduzir.frase_traducao = traduzir.translate
  puts traduzir.frase_traducao

  WriteFile.new(traduzir).save
end

menu