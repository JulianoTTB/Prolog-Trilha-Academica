:- dynamic resposta/2.
% Trilhas de Especialização
trilha(ciberseguranca, 'Proteção de dados e sistemas contra ameaças digitais').
trilha(inteligencia_artificial, 'Criação de sistemas inteligentes capazes de aprender e tomar decisões').
trilha(internet_das_coisas, 'Integração de dispositivos físicos conectados à internet para automação e monitoramento').
trilha(arquitetura_de_computadores, 'Estudo da organização, funcionamento e otimização do hardware e sistemas computacionais').
trilha(ciencia_de_dados, 'Coleta, análise e interpretação de grandes volumes de dados').

% Características de perfil
% Cibersegurança
perfil(ciberseguranca, sistemas_e_redes, 4).
perfil(ciberseguranca, pensamento_critico, 5).
perfil(ciberseguranca, criptografia, 5).
perfil(ciberseguranca, programacao, 4).
perfil(ciberseguranca, software, 4).
perfil(ciberseguranca, machine_learning, 1).
perfil(ciberseguranca, matematica_e_estatistica, 1).
perfil(ciberseguranca, eletronica, 1).
perfil(ciberseguranca, hardware, 1).
perfil(ciberseguranca, matematica_discreta, 2).
perfil(ciberseguranca, otimizacao_sistemas, 1).
perfil(ciberseguranca, analise_de_dados, 2).
perfil(ciberseguranca, padroes_e_tendencias, 3).


% Inteligência artificial
perfil(inteligencia_artificial, machine_learning, 5).
perfil(inteligencia_artificial, matematica_e_estatistica, 4).
perfil(inteligencia_artificial, programacao, 5).
perfil(inteligencia_artificial, software, 5).
perfil(inteligencia_artificial, sistemas_e_redes, 1).
perfil(inteligencia_artificial, pensamento_critico, 3).
perfil(inteligencia_artificial, criptografia, 1).
perfil(inteligencia_artificial, eletronica, 1).
perfil(inteligencia_artificial, hardware, 1).
perfil(inteligencia_artificial, matematica_discreta, 2).
perfil(inteligencia_artificial, otimizacao_sistemas, 1).
perfil(inteligencia_artificial, analise_de_dados, 2).
perfil(inteligencia_artificial, padroes_e_tendencias, 1).


% IoT
perfil(internet_das_coisas, hardware, 4).
perfil(internet_das_coisas, software, 3).
perfil(internet_das_coisas, eletronica, 5).
perfil(internet_das_coisas, machine_learning, 3).
perfil(internet_das_coisas, matematica_e_estatistica, 1).
perfil(internet_das_coisas, programacao, 4).
perfil(internet_das_coisas, sistemas_e_redes, 2).
perfil(internet_das_coisas, pensamento_critico, 1).
perfil(internet_das_coisas, criptografia, 1).
perfil(internet_das_coisas, matematica_discreta, 2).
perfil(internet_das_coisas, otimizacao_sistemas, 4).
perfil(internet_das_coisas, analise_de_dados, 1).
perfil(internet_das_coisas, padroes_e_tendencias, 1).


% Arquitetura de computadores
perfil(arquitetura_de_computadores, hardware, 5).
perfil(arquitetura_de_computadores, matematica_discreta, 5).
perfil(arquitetura_de_computadores, otimizacao_sistemas, 5).
perfil(arquitetura_de_computadores, eletronica, 5).
perfil(arquitetura_de_computadores, software, 2).
perfil(arquitetura_de_computadores, machine_learning, 2).
perfil(arquitetura_de_computadores, matematica_e_estatistica, 1).
perfil(arquitetura_de_computadores, programacao, 2).
perfil(arquitetura_de_computadores, sistemas_e_redes, 1).
perfil(arquitetura_de_computadores, pensamento_critico, 1).
perfil(arquitetura_de_computadores, criptografia, 1).
perfil(arquitetura_de_computadores, analise_de_dados, 1).
perfil(arquitetura_de_computadores, padroes_e_tendencias, 1).


% Ciência de dados
perfil(ciencia_de_dados, matematica_e_estatistica, 5).
perfil(ciencia_de_dados, analise_de_dados, 5).
perfil(ciencia_de_dados, padroes_e_tendencias, 5).
perfil(ciencia_de_dados, software, 3).
perfil(ciencia_de_dados, hardware, 1).
perfil(ciencia_de_dados, matematica_discreta, 1).
perfil(ciencia_de_dados, otimizacao_sistemas, 1).
perfil(ciencia_de_dados, eletronica, 1).
perfil(ciencia_de_dados, machine_learning, 3).
perfil(ciencia_de_dados, programacao, 4).
perfil(ciencia_de_dados, sistemas_e_redes, 1).
perfil(ciencia_de_dados, pensamento_critico, 1).
perfil(ciencia_de_dados, criptografia, 1).

% Perguntas
pergunta(1, "Você tem afinidade com matemática e estatística?", matematica_e_estatistica).
pergunta(2, "Você tem afinidade com sistemas e redes?", sistemas_e_redes).
pergunta(3, "Você tem pensamento critico?", pensamento_critico).
pergunta(4, "Você tem afinidade com criptografia?", criptografia).
pergunta(5, "Você sabe programar?", programacao).
pergunta(6, "Você tem afinidade com software?", software).
pergunta(7, "Você tem afinidade com aprendizado de máquina?", machine_learning).
pergunta(8, "Você tem afinidade com harware?", hardware).
pergunta(9, "Você tem afinidade com eletrônica?", eletronica).
pergunta(10, "Você tem afinidade com matemática discreta?", matematica_discreta).
pergunta(11, "Você tem afinidade com otimização de sistema?", otimizacao_sistemas).
pergunta(12, "Você tem afinidade com análise de dados?", analise_de_dados).
pergunta(13, "Você tem afinidade com padrões e tendências?", padroes_e_tendencias).


% MOTOR DE INFERENCIA
% É inserido o a trilha desejada para o calculo dos pontos
calcula_pontuacao(Trilha, Pontos) :-
% O findall busca o peso com base nas respostas "sim" que o usuario colocou
    findall(Peso, (resposta(Index, "s"),
                      % Ele liga as respostas com as perguntas
                      pergunta(Index, _, Categoria),
                      % por fim verifica qual trilha e que peso corresponde as perguntas que ele respondeu
                  	  % e faz uma lista com todos os pesos da trilha
                      perfil(Trilha, Categoria, Peso)), ListaPesos),
    % soma todos os pesos e retorna um valor unico
    sum_list(ListaPesos, Pontos).

recomenda(Trilha, Pontos) :-
    % Verifica se as trilhas são válidas através do nome e chama o predicado calcula, para calcular o peso 
    trilha(Trilha, _), calcula_pontuacao(Trilha, Pontos).
    
monta_ranking(Ranking) :-
    % O findall busca as trilhas com os pontos utilizando recomenda
    findall((Pontos, Trilha), recomenda(Trilha, Pontos),
            % e organiza numa lista no formato de pontos e trilha
            Lista),
    % por fim ele organiza essa lista do maior para o menor e retorna o ranking
    sort(0, @>=, Lista, Ranking).


%Interface

apresentar_trilhas :-
  % imprime "Trilha - [Descrição]"
    trilha(Trilha, Desc),
    write(Trilha),
    write(" - "),
    write(Desc), nl,
    % Vai para a próxima trilha
    fail.
    
apresentar_trilhas.

usuario_resposta(Index) :-
    % Lê o input do usuário, se estiver correto, cria dinamicamente um fato com base na resposta. 
    % Se estiver errado, informa o erro e faz a pergunta novamente.
	read_line_to_string(user_input, Resposta),
    (   number_string(N, Resposta), integer(N) -> % Verifica se é um inteiro a resposta
    		% Se for um inteiro, informa que é uma entrada inválida e faz a pergunta novamente
    		write("Entrada inválida!! Digite sim ou não."), nl,
        	usuario_resposta(Index)
    	; % Verifica se o primeiro caractere da resposta é s, se for a resposta é sim
		(   (   sub_atom(Resposta, 0, 1, _, "s") ; sub_atom(Resposta, 0, 1, _, "S") ) ->  
    				assertz(resposta(Index, "s"))
            ;% Verifica se o primeiro caractere da resposta é n, se for a resposta é não
            (   sub_atom(Resposta, 0, 1, _, "n") ; sub_atom(Resposta, 0, 1, _, "N") ) ->  
                    assertz(resposta(Index, "n"))
        	;   
        	write("Entrada inválida!! Digite sim ou não."), nl,
        	usuario_resposta(Index)
		)
    ).
    


faz_perguntas :-
    % Verifica se as perguntas foram passadas pelo consult
    % Pega a pergunta com base no índice
    pergunta(Index, Texto, _),
    (  resposta(Index, _) ->  true 
    	; % Imprime na tela
        (   write(Texto), 
        nl,
        % Pega a resposta do usuário
        usuario_resposta(Index)
        )
    ),
    % Faz o prolog pegar a próxima pergunta
    fail.

faz_perguntas.

exibir_ranking([], Nivel) :-
  % Condição de parada: Nivel for maior que o número de trilhas disponíveis
    Nivel > 5, !.
 
exibir_ranking([(Pontos, Trilha)|T], Nivel) :-
  % imprime "Nivel° - Nome da trilha com [sua pontuação]"
    write(Nivel), 
    write(" - "),
	write(Trilha), 
	write(" com "),
	write(Pontos),
    write(" pontos."),
	nl,
  % Parte para a próxima trilha
    Next is Nivel + 1,
	exibir_ranking(T, Next).

% Exibe o resultado: Trilhas com maior pontuação -> Ranking de todas as trilhas
exibe_resultado([(Pontos, Trilha)|T]) :-
    write("***** Trilha Recomendada *****"),nl,
    write(Trilha), nl,
    write("**** Ranking das Trilhas com base nas suas respostas *****"), nl,
    exibir_ranking([(Pontos, Trilha)|T], 1).
    
    
 % Apresenta as trilhas -> faz perguntas -> monta o ranking das trilhas com base nas respostas -> exibe o resultado   
iniciar :- 
    write("*** Apresentação das Trilhas ***"), nl,
    apresentar_trilhas, % Apresenta as trilhas disponíveis com suas descrições
    write("*** Perguntas sobre afinidades ***"), nl,
    % Verifica e carrega, se existir, arquivos com perfis prontos
    % No prolog web é necessário comentar as linhas abaixo
    % No prolog terminal é só ter um dos perfis abaixo no mesmo diretório do arquivo base_conhecimento
    (   consult("perfil_1.pl") -> true ; true),
    (   consult("perfil_2.pl") -> true ; true),
    (   consult("perfil_3.pl") -> true ; true),
    faz_perguntas, % Faz as perguntas
    monta_ranking(Ranking), % Calcula a pontuação das trilhas e monta o ranking
   	write("*** Resultado ***"), nl,
    exibe_resultado(Ranking). % Exibe o resultado obtido


