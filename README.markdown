## Descrição
Script Ruby que resolve o desafio do MasterMind proposto no Dojo de C feito pela POLIGNU.

Dado um número aleatório de 5 digitos, o desafio é fazer o usuário tentar acertar o número certo em 10 tentativas.
A cada tentativa, o script informa quantos dígitos estão certos e quantos digítos na posição certa.

Este script foi pensado com Ruby 1.9 em mente, para utilizá-lo com ruby 1.8 remova as duas primeiras linhas relativas ao Simplecov do arquivo spec/spec_helper.rb

## Jogar
Para começar a jogar, basta ter ruby instalado e rodar `ruby mastermind.rb`

## Testes
Para rodar os testes, basta ter ruby instalado, instalar rspec (`gem install rspec`) e rodar o comando `rspec spec/` dentro da pasta raiz do repositório.

## Sobre
A solução em si está constituída em 2 arquivos: mastermind.rb e mastermind_helpers.rb. O arquivo mastermind_helpers contém diversas pequenas funções que são utilizadas no jogo e tem testes unitários ( no arquivo spec/mastermind_helpers_spec.rb ). O arquivo mastermind.rb trabalha com o input e output e invoca as funções definidas no mastermind_helpers.

Como é bastante difícil de se fazer teste unitário de input e output, foi criado um teste de aceitação (spec/mastermind_spec.rb) que roda o script com um arquivo de entrada (spec/exemplo_entrada.txt), e compara a saída (spec/exemplo_saida.txt) utilizando o commando `diff` para garantir que tudo funciona.

O resultado da cobertura de testes (que é atualizado toda vez que os testes são rodados) está no arquivo coverage/index.html