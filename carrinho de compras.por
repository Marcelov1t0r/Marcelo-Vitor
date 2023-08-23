programa { //ALUNOS: JORDAN ASSUNÇÃO, MARCELO VITOR, PABLO VIEIRA, HENRIQUE JUSTINO  
  inclua biblioteca Matematica //USADA PARA COLOCAR OS PRECOS COM DUAS CASAS DECIMAIS
 
    inteiro quantidade,codigo,opcao,saida,q1=0,q2=0,q3=0,q4=0 //OS Q'S IRÃO REPRESENTAR A QUANTIDADE DE PRODUTOS.
    cadeia produto
    real c1= 49.90, c2 = 24.90, c3 = 68.90, c4 = 119.90,soma=0,carrinho = 0 //OS C'S REPRESENTAM OS PREÇOS DOS PRODUTOS.




  funcao vazio mostracarrinho(){///FUNCÃO QUE MOSTRA O CARRINHO DE COMPRAS
      enquanto(saida != 3){
        carrinho = soma
        limpa()
        escreva("--------------------------------------------\n")
        escreva("Seu carrinho de compras\n\n")
        escreva("Descrição                 Quantidade\n")
          se(q1>0){
            escreva("Pendrive 32GB             ",q1,"\n")
          }
          se(q2>0){
            escreva("Teclado USB               ",q2,"\n")
          }
          se(q3>0){
            escreva("Cartucho HP1220           ",q3,"\n")
          }
          se(q4>0){
            escreva("Mouse Bluetooth           ",q4,"\n")
          }
        escreva("\n \n Valor total do carrinho: R$",Matematica.arredondar(carrinho,2),"\n")
        escreva("--------------------------------------------\n")
        escreva("O que deseja fazer?\n")
        escreva("--------------------------------------------\n")
        escreva("(1) Adicionar outro produto\n(2) Limpar carrinho de compras\n(3) Sair \n")
        leia(saida)
          se(saida==1){//VOLTA AOS PRODUTOS
            saida=0
            opcao=0
            inicio()
          }
          se(saida==2){//ZERA O CARRINHO E VOLTA AOS PRODUTOS
            q1=0
            q2=0
            q3=0
            q4=0
            saida=0
            opcao=0
            soma=0
            carrinho=0
            limpa()
            inicio()
          }
          se (saida>3 e saida<1){//VERIFICACAO DE NUMERO NAO ESPERADO
            mostracarrinho()
          }
      }
  }




  funcao vazio fim(){//FUNCAO VAZIA SO PARA REPRESENTAR O FIM DO CODIGO
  }




  funcao vazio produtoscodigo(){//ATRIBUIÇÃO DE PRODUTOS
      se (codigo == 1){
        produto= "Pendrive 32GB"
        q1= q1+quantidade
      }
      se (codigo == 2){
        produto= "Teclado USB"
        q2= q2+quantidade
      }
      se (codigo == 3){
        produto= "Cartucho HP1220"
        q3= q3+quantidade
      }
      se (codigo == 4){
        produto= "Mouse Bluetooth"
        q4= q4+quantidade
      }
      soma = (c1*q1) + (c2*q2) + (c3*q3) + (c4*q4) //SOMA DOS VALORES
  }




  funcao vazio addcarrinho(){//FUNCAO QUE MOSTRA PRODUTOS DO CARRINHO
      limpa()
      escreva("--------------------------------------------\n")
      escreva("Você adicionou ao carrinho: \n")
      escreva(quantidade, " unidades do produto: ",produto, "\n\n")
      escreva("O que deseja fazer? \n")
      escreva("--------------------------------------------\n")
      escreva("(1) Adicionar outro produto\n")
      escreva("(2) Ver o carrinho de compras\n")
      leia(opcao)
        se(opcao == 1){//CONTINUAR COMPRANDO
          opcao = 0
          inicio()
        }
        se(opcao == 2){//CONTINUAR COMPRANDO
          mostracarrinho()
        }
        enquanto(opcao != 1 e opcao !=2 ){//VERIFICACAO PARA O USUARIO NAO DIGITAR NUMERO NAO ESPERADO
          addcarrinho()      
        }
  }




  funcao vazio telaprodutos(){//FUNCAO DA TELA DE PRODUTOS
      limpa()
      escreva("--------------------------------------------\n")
      escreva("Código        Descrição             Preço\n")
      escreva("1             Pendrive 32GB         R$49.90\n")
      escreva("2             Teclado USB           R$24.90\n")
      escreva("3             Cartucho HP1220       R$68.90\n")
      escreva("4             Mouse Bluetooth       R$119.90\n")
      escreva("--------------------------------------------\n")
      escreva("Digite o código do produto:  ")
      leia(codigo)
        enquanto (codigo>4 ou codigo<1) {// TRATAMENTO PARA NUMERO DE PRODUTO INDESEJADO
          telaprodutos()
        }
  }




  funcao vazio lerquantidade(){
      escreva("--------------------------------------------\n")
      escreva("Digite a quantidade do produto:  ")
      leia(quantidade)
        se(quantidade<=0){//SE QUANTIDADE MENOR QUE 0 REINICIA O PROGRAMA
          inicio()
        }
  }




  funcao inicio() {


      telaprodutos()//MOSTRA OS PRODUTOS


      lerquantidade()//LE A QUANTIDADE


      produtoscodigo()//ATRIBUICAO DE PRODUTOS


      addcarrinho()//ADIÇÃO DE PRODUTOS E JA VAI DIRETO PRO MOSTRACARRINHO()
         
      fim()    
  }
}










