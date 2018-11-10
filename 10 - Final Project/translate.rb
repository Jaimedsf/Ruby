require 'rest-client'

class Translate
  attr_accessor :frase_origem, :frase_traducao, :idioma_origem, :idioma_traducao

  def translate
    response = RestClient.get('https://translate.yandex.net/api/v1.5/tr.json/translate', params: {
      key: '<PUT YOUR API KEY HERE>',
      text: frase_origem,
      lang: "#{idioma_origem}-#{idioma_traducao}"
    })

    frase_traducao = eval(response.body)[:text].join.to_s
  end
end