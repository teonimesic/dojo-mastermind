def remove_zeros_a_esquerda(numero)
  numero.gsub(/^0+/,'')
end

def texto_posicoes_certas(sorteio, chute)
  "Numero de digitos em posicoes certas = #{posicoes_certas(sorteio, chute)}\n"
end

def texto_digitos_certos(sorteio, chute)
  "Numero de digitos certos = #{digitos_certos(sorteio, chute)}\n"
end

def posicoes_certas(sorteio, chute)
  (0...chute.size).select{|i| sorteio.reverse[i] == chute.reverse[i] }.size
end

def digitos_certos(sorteio, chute)
  sorteio.chars.select{|c| chute.include? c }.size
end

def parabeniza
  "\nParabens! Voce adivinhou o numero!\n"
end

def texto_numero_da_tentativa(i)
  "\nTentativa #{i}: "
end