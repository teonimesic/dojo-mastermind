#!/usr/bin/ruby
$: << './'
require 'mastermind_helpers'

QUANTIDADE_DE_TENTATIVAS = 10
QUANTIDADE_DE_DIGITOS = 5

print "Deseja digitar o numero a ser adivinhado? (1 = sim, 0 = nao): "
if gets.strip == "1"
  print "Digite o numero a ser adivinhado: "
  sorteio = gets.strip
else
  sorteio = rand(0...10**(QUANTIDADE_DE_DIGITOS)).to_s
end

(0...QUANTIDADE_DE_TENTATIVAS).each do |i|
  print texto_numero_da_tentativa(i+1)
  chute = remove_zeros_a_esquerda(gets.strip)
  print texto_posicoes_certas(sorteio, chute)
  print texto_digitos_certos(sorteio, chute)

  if sorteio == chute
    print parabeniza 
    break
  end
end
