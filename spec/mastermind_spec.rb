require 'spec_helper'

describe 'main' do
  it 'deveria ter a mesma saida que o exemplo_saida.txt utilizando como entrada o exemplo_entrada.txt' do
    `ruby mastermind.rb spec/exemplo_entrada.txt | diff spec/exemplo_saida.txt -`.should == ''
  end
end
  