Algoritmo "Desafio 01"
// Disciplina   : 2023/1-GAME DEVELOPER - DESENVOLVENDO SEU 1º GAME
// Professor   : Tauller Augusto
// Descrição   : Urna eletrônica
// Autor(a)    : Bruno da Silva Garbero
// Data atual  : 25/02/2023
Var

   senha, iniciaEncerra, prefeito, herbert, ribeiro, vereador, vazio: inteiro
   barone, bidu, monteiro, joaoFera, brancoPrefeito, brancoVereador, brancoTotal, nuloPrefeito, nuloVereador, nuloTotal: inteiro
   confirmaPrefeito, confirmaVereador: caractere

Inicio


   repita
      limpatela
      escreval("Digite a senha para iniciar a votação:")
      leia(senha)
      limpatela
   ate (senha = 2411)

   //inicio da votação
   //laço de repetição repita ate
   repita
      limpatela
      escreval("Digite 1 para iniciar a votação ou 0 para encerrar.")
      leia(iniciaEncerra)

      limpatela
      se (iniciaEncerra = 1) entao
         //votação de prefeito
         repita
            limpatela
            escreval("Escolha seu candidato a prefeito:")
            escreval("Herbert – número 90")
            escreval("Ribeiro – número 95")
            escreval("Voto em branco - número 1")
            escreval("Para votar nulo tecle qualquer número exceto as opções acima.")
            leia(prefeito)
            escreval("Aperte C para confirmar o seu voto e R regressar.")
            leia(confirmaPrefeito)
         ate (confirmaPrefeito = "c")

         escolha prefeito
         caso 90
            herbert <- herbert + 1
            escreval("Você votou no candidato Herbet.")
            prefeito <- 0
         caso 95
            ribeiro <- ribeiro + 1
            escreval("Você votou no candidato Ribeiro.")
            prefeito <- 0
         caso 1
            brancoPrefeito <- brancoPrefeito + 1
            escreval("Voto em branco.")
            prefeito <- 0
         outrocaso
            nuloPrefeito <- nuloPrefeito + 1
            escreval("Voto nulo.")
            prefeito <- 0
         fimescolha
         //votação de vereador
         repita
            limpatela
            escreval("Escolha seu candidato a vereador:")
            escreval("Barone – número 90000")
            escreval("Bidu – número 90999")
            escreval("Monteiro – número 95000")
            escreval("João Fera – número 95999")
            escreval("Voto em branco - número 1")
            escreval("Para votar nulo tecle qualquer número exceto as opções acima.")
            leia(vereador)
            escreval("Aperte C para confirmar o seu voto e R regressar.")
            leia(confirmaVereador)
         ate (confirmaVereador = "c")

         escolha vereador
         caso 90000
            barone <- barone + 1
            escreval("Você votou no candidato Barone.")
            vereador <-0
         caso 90999
            bidu <- bidu + 1
            escreval("Você votou no candidato Bidu.")
            vereador <-0
         caso 95000
            monteiro <- monteiro + 1
            escreval("Você votou no candidato Monteiro.")
            vereador <-0
         caso 95999
            joaoFera <- joaoFera + 1
            escreval("Você votou no candidato João Fera.")
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
   //atribuição de votos em branco para prefeito
   se (herbert > ribeiro) entao
      herbert <- herbert + brancoPrefeito
   senao
      se (herbert < ribeiro) entao
         ribeiro <- ribeiro + brancoPrefeito
      senao
         vazio <- brancoPrefeito
      fimse
   fimse
   //atribuição de votos em branco para vereador
   se (barone > bidu) e (barone > monteiro) e (barone > joaoFera) entao
      barone <- barone + brancoVereador
   senao
      se (bidu > barone) e (bidu > monteiro) e (bidu > joaoFera) entao
         bidu <- bidu + brancoVereador
      senao
         se (monteiro > barone) e (monteiro > bidu) e (monteiro > joaoFera) entao
            monteiro <- monteiro + brancoVereador
         senao
            se (joaoFera > barone) e (joaoFera > bidu) e (joaoFera > monteiro) entao
               joaoFera <- joaoFera + brancoVereador
            senao
               vazio <- brancoVereador
            fimse
         fimse
      fimse
   fimse
   //total de votos em branco e nulo
   brancoTotal <- brancoPrefeito + brancoVereador
   nuloTotal <- nuloPrefeito + nuloVereador
   //saídas gerais
   limpatela
   escreval("Número de votos dos candidatos a prefeito:")
   escreval("Candidato Herbert:", herbert," votos.")
   escreval("Candidato Ribeiro:", ribeiro," votos.")
   escreval("Votos em branco para prefeito:", brancoPrefeito," votos.")
   escreval("Votos nulos para prefeito:", nuloPrefeito," votos.")
   escreval
   escreval("Número de votos dos candidatos a vereador:")
   escreval("Candidato Barone:", barone," votos.")
   escreval("Candidato Bidu:", bidu," votos.")
   escreval("Candidato Monteiro:", monteiro," votos.")
   escreval("Candidato João Fera:", joaoFera," votos.")
   escreval("Votos em branco para vereador:", brancoVereador," votos.")
   escreval("Votos nulos para vereador:", nuloVereador," votos.")
   escreval
   escreval("Votos em branco:", brancoTotal," votos.")
   escreval("Votos nulos:", nuloTotal," votos.")
   escreval
   //saídas de resultados
   se (herbert > ribeiro) entao
      escreval("O candidato a prefeito eleito é o candidato Herbert.")
   senao
      se (ribeiro > herbert) entao
         escreval("O candidato a prefeito eleito é o canditado Ribeiro.")
      senao
         se (ribeiro = herbert) entao
            escreval("Haverá segundo turno para prefeito.")
         fimse
      fimse
   fimse
   escreval
   se (barone > bidu) e (barone > monteiro) e (barone > joaoFera) entao
      escreval("O candidato a vereador mais votado é o candidato Barone.")
   senao
      se (bidu > barone) e (bidu > monteiro) e (bidu > joaoFera) entao
         escreval("O candidato a vereador mais votado é o candidato Bidu.")
      senao
         se (monteiro > barone) e (monteiro > bidu) e (monteiro > joaoFera) entao
            escreval("O candidato a vereador mais votado é o candidato Monteiro.")
         senao
            se (joaoFera > barone) e (joaoFera > monteiro) e (joaoFera > bidu) entao
               escreval("O candidato a vereador mais votado é o candidato João Fera.")
            senao
               se (barone = bidu) ou (barone = monteiro) ou (barone = joaoFera) entao
                  escreval("Haverá segundo turno para vereador.")
               senao
                  se (bidu = barone) ou (bidu = monteiro) ou (bidu = joaoFera) entao
                     escreval("Haverá segundo turno para vereador.")
                  senao
                     se (monteiro = barone) ou (monteiro = bidu) ou (monteiro = joaoFera) entao
                        escreval("Haverá segundo turno para vereador.")
                     senao
                        se (joaoFera = barone) ou (joaoFera = monteiro) ou (joaoFera = bidu) entao
                           escreval("Haverá segundo turno para vereador.")
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
   escreval
   escreval("Votação encerrada.")
Fimalgoritmo
