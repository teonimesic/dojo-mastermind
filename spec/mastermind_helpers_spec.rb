require 'spec_helper'

describe 'digitos_certos' do
  it { texto_digitos_certos('4167', '11111').should == "Numero de digitos certos = 1\n" }
  it { texto_digitos_certos('4167', '22221').should == "Numero de digitos certos = 1\n" }
  it { texto_digitos_certos('4167', '13333').should == "Numero de digitos certos = 1\n" }
  it { texto_digitos_certos('4167', '41444').should == "Numero de digitos certos = 2\n" }
  it { texto_digitos_certos('4167', '54155').should == "Numero de digitos certos = 2\n" }
  it { texto_digitos_certos('4167', '64166').should == "Numero de digitos certos = 3\n" }
  it { texto_digitos_certos('4167', '64177').should == "Numero de digitos certos = 4\n" }
  it { texto_digitos_certos('4167', '74168').should == "Numero de digitos certos = 4\n" }
  it { texto_digitos_certos('4167', '94167').should == "Numero de digitos certos = 4\n" }
  it { texto_digitos_certos('4167', '04167').should == "Numero de digitos certos = 4\n" }
end

describe 'parabeniza' do
  it { parabeniza.should == "\nParabens! Voce adivinhou o numero!\n" }
end

describe 'texto_numero_da_tentativa' do
  it { texto_numero_da_tentativa(5).should == "\nTentativa 5: " }
end

describe 'posicoes_certas' do
  it { texto_posicoes_certas('4167', '11111').should == "Numero de digitos em posicoes certas = 1\n" }
  it { texto_posicoes_certas('4167', '22221').should == "Numero de digitos em posicoes certas = 0\n" }
  it { texto_posicoes_certas('4167', '13333').should == "Numero de digitos em posicoes certas = 0\n" }
  it { texto_posicoes_certas('4167', '41444').should == "Numero de digitos em posicoes certas = 0\n" }
  it { texto_posicoes_certas('4167', '54155').should == "Numero de digitos em posicoes certas = 2\n" }
  it { texto_posicoes_certas('4167', '64166').should == "Numero de digitos em posicoes certas = 3\n" }
  it { texto_posicoes_certas('4167', '64177').should == "Numero de digitos em posicoes certas = 3\n" }
  it { texto_posicoes_certas('4167', '74168').should == "Numero de digitos em posicoes certas = 3\n" }
  it { texto_posicoes_certas('4167', '94167').should == "Numero de digitos em posicoes certas = 4\n" }
  it { texto_posicoes_certas('4167', '04167').should == "Numero de digitos em posicoes certas = 4\n" }
end

describe 'remove_zeros_a_esquerda' do
  it { remove_zeros_a_esquerda('000').should == '' }
  it { remove_zeros_a_esquerda('00100').should == '100' }
end