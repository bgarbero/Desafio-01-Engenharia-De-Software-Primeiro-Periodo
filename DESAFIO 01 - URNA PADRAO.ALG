Algoritmo "Desafio 01"
// Disciplina   : 2023/1-GAME DEVELOPER - DESENVOLVENDO SEU 1� GAME
// Professor   : Tauller Augusto
// Descri��o   : Urna eletr�nica
// Autor(a)    : Bruno da Silva Garbero
// Data atual  : 25/02/2023
Var

   senha, iniciaEncerra, prefeito, herbert, ribeiro, vereador, vazio: inteiro
   barone, bidu, monteiro, joaoFera, brancoPrefeito, brancoVereador, brancoTotal, nuloPrefeito, nuloVereador, nuloTotal: inteiro
   confirmaPrefeito, confirmaVereador: caractere

Inicio

   //la�o da senha
   repita
      limpatela
      escreval("Digite a senha para iniciar a vota��o:")
      leia(senha)
      limpatela
   ate (senha = 2411)

   //inicio da vota��o
   //la�o de repeti��o repita ate
   repita
      limpatela
      escreval("Digite 1 para iniciar a vota��o ou 0 para encerrar.")
      leia(iniciaEncerra)

      limpatela
      se (iniciaEncerra = 1) entao
         //vota��o de prefeito
         repita
            limpatela
            escreval("Escolha seu candidato a prefeito:")
            escreval("Herbert � n�mero 90")
            escreval("Ribeiro � n�mero 95")
            escreval("Voto em branco - n�mero 1")
            escreval("Para votar nulo tecle qualquer n�mero exceto as op��es acima.")
            leia(prefeito)
            escolha prefeito
            caso 90
               limpatela
               escreval("Voc� votou no candidato Herbet.")
            caso 95
               limpatela
               escreval("Voc� votou no candidato Ribeiro.")
            caso 1
               limpatela
               escreval("Voto em branco.")
            outrocaso
               limpatela
               escreval("Voto nulo.")
            fimescolha
            escreval("Aperte C para confirmar o seu voto e R regressar.")
            leia(confirmaPrefeito)
         ate (confirmaPrefeito = "c")

         escolha prefeito
         caso 90
            herbert <- herbert + 1
            prefeito <- 0
         caso 95
            ribeiro <- ribeiro + 1
            prefeito <- 0
         caso 1
            brancoPrefeito <- brancoPrefeito + 1
            prefeito <- 0
         outrocaso
            nuloPrefeito <- nuloPrefeito + 1
            prefeito <- 0
         fimescolha
         //vota��o de vereador
         repita
            limpatela
            escreval("Escolha seu candidato a vereador:")
            escreval("Barone � n�mero 90000")
            escreval("Bidu � n�mero 90999")
            escreval("Monteiro � n�mero 95000")
            escreval("Jo�o Fera � n�mero 95999")
            escreval("Voto em branco - n�mero 1")
            escreval("Para votar nulo tecle qualquer n�mero exceto as op��es acima.")
            leia(vereador)
            escolha vereador
            caso 90000
               limpatela
               escreval("Voc� votou no candidato Barone.")
            caso 90999
               limpatela
               escreval("Voc� votou no candidato Bidu.")
            caso 95000
               limpatela
               escreval("Voc� votou no candidato Monteiro.")
            caso 95999
               limpatela
               escreval("Voc� votou no candidato Jo�o Fera.")
            caso 1
               limpatela
               escreval("Voto em branco.")
            outrocaso
               limpatela
               escreval("Voto nulo.")
            fimescolha
            escreval("Aperte C para confirmar o seu voto e R regressar.")
            leia(confirmaVereador)
         ate (confirmaVereador = "c")

         escolha vereador
         caso 90000
            barone <- barone + 1
            escreval("Voc� votou no candidato Barone.")
            vereador <-0
         caso 90999
            bidu <- bidu + 1
            escreval("Voc� votou no candidato Bidu.")
            vereador <-0
         caso 95000
            monteiro <- monteiro + 1
            escreval("Voc� votou no candidato Monteiro.")
            vereador <-0
         caso 95999
            joaoFera <- joaoFera + 1
            escreval("Voc� votou no candidato Jo�o Fera.")
            vereador <- 0
         caso 1
            brancoVereador <- brancoVereador + 1
            escreval("Voto em branco.")
            vereador <-0
         outrocaso
            nuloVereador <- nuloVereador + 1
            escreval("Voto nulo.")
            vereador <- 0
         fimescolha
      fimse
   ate (iniciaEncerra = 0)

   //total de votos em branco e nulo
   brancoTotal <- brancoPrefeito + brancoVereador
   nuloTotal <- nuloPrefeito + nuloVereador
   //sa�das gerais
   limpatela
   escreval("N�mero de votos dos candidatos a prefeito:")
   escreval("Candidato Herbert:", herbert," votos.")
   escreval("Candidato Ribeiro:", ribeiro," votos.")
   escreval("Votos em branco para prefeito:", brancoPrefeito," votos.")
   escreval("Votos nulos para prefeito:", nuloPrefeito," votos.")
   escreval
   escreval("N�mero de votos dos candidatos a vereador:")
   escreval("Candidato Barone:", barone," votos.")
   escreval("Candidato Bidu:", bidu," votos.")
   escreval("Candidato Monteiro:", monteiro," votos.")
   escreval("Candidato Jo�o Fera:", joaoFera," votos.")
   escreval("Votos em branco para vereador:", brancoVereador," votos.")
   escreval("Votos nulos para vereador:", nuloVereador," votos.")
   escreval
   escreval("Total de votos em branco:", brancoTotal," votos.")
   escreval("Total de votos nulos:", nuloTotal," votos.")
   escreval
   //sa�das de resultados
   se (herbert > ribeiro) entao
      escreval("O candidato a prefeito eleito � o candidato Herbert.")
   senao
      se (ribeiro > herbert) entao
         escreval("O candidato a prefeito eleito � o canditado Ribeiro.")
      senao
         se (ribeiro = herbert) entao
            escreval("Haver� segundo turno para prefeito.")
         fimse
      fimse
   fimse
   escreval
   se (barone > bidu) e (barone > monteiro) e (barone > joaoFera) entao
      escreval("O candidato a vereador mais votado � o candidato Barone.")
   senao
      se (bidu > barone) e (bidu > monteiro) e (bidu > joaoFera) entao
         escreval("O candidato a vereador mais votado � o candidato Bidu.")
      senao
         se (monteiro > barone) e (monteiro > bidu) e (monteiro > joaoFera) entao
            escreval("O candidato a vereador mais votado � o candidato Monteiro.")
         senao
            se (joaoFera > barone) e (joaoFera > monteiro) e (joaoFera > bidu) entao
               escreval("O candidato a vereador mais votado � o candidato Jo�o Fera.")
            senao
               escreval("Houve empate nas elei��es de vereador.")
            fimse
         fimse
      fimse
   fimse
   escreval
   escreval("Vota��o encerrada.")
Fimalgoritmo
