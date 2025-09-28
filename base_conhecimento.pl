:- dynamic interesse/3.
% Trilhas de Especialização
trilha(ciberseguranca, 'Proteção de dados e sistemas contra ameaças digitais').
trilha(inteligencia_artificial, 'Criação de sistemas inteligentes capazes de aprender e tomar decisões').
trilha(internet_das_coisas, 'Integração de dispositivos físicos conectados à internet para automação e monitoramento').
trilha(arquitetura_de_computadores, 'Estudo da organização, funcionamento e otimização do hardware e sistemas computacionais').
trilha(ciencia_de_dados, 'Coleta, análise e interpretação de grandes volumes de dados').

% Características de perfil
% Cibersegurança
perfil(ciberseguranca, sistemas_e_redes, 4).
perfil(ciberseguranca, pensamento_critico, 3).
perfil(ciberseguranca, criptografia, 5).
perfil(ciberseguranca, programacao, 5).
perfil(ciberseguranca, software, 5).
perfil(ciberseguranca, machine_learning, 3).
perfil(ciberseguranca, matematica_e_estatistica, 4).
perfil(ciberseguranca, eletronica, 5).
perfil(ciberseguranca, hardware, 5).
perfil(ciberseguranca, matematica_discreta, 5).
perfil(ciberseguranca, otimizacao_sistemas, 3).
perfil(ciberseguranca, analise_dados, 5).
perfil(ciberseguranca, padroes_tendencias, 5).

% Inteligência artificial
perfil(inteligencia_artificial, machine_learning, 5).
perfil(inteligencia_artificial, matematica_e_estatistica, 4).
perfil(inteligencia_artificial, programacao, 5).
perfil(inteligencia_artificial, software, 5).
perfil(inteligencia_artificial, sistemas_e_redes, 5).
perfil(inteligencia_artificial, pensamento_critico, 4).
perfil(inteligencia_artificial, criptografia, 5).
perfil(inteligencia_artificial, eletronica, 5).
perfil(inteligencia_artificial, hardware, 5).
perfil(inteligencia_artificial, matematica_discreta, 4).
perfil(inteligencia_artificial, otimizacao_sistemas, 5).
perfil(inteligencia_artificial, analise_dados, 5).
perfil(inteligencia_artificial, padroes_tendencias, 5).

% IoT
perfil(internet_das_coisas, hardware, 3).
perfil(internet_das_coisas, software, 3).
perfil(internet_das_coisas, eletronica, 5).
perfil(internet_das_coisas, machine_learning, 3).
perfil(internet_das_coisas, matematica_e_estatistica, 3).
perfil(internet_das_coisas, programacao, 5).
perfil(internet_das_coisas, sistemas_e_redes, 3).
perfil(internet_das_coisas, pensamento_critico, 3).
perfil(internet_das_coisas, criptografia, 5).
perfil(internet_das_coisas, matematica_discreta, 3).
perfil(internet_das_coisas, otimizacao_sistemas, 5).
perfil(internet_das_coisas, analise_dados, 3).
perfil(internet_das_coisas, padroes_tendencias, 3).

% Arquitetura de computadores
perfil(arquitetura_de_computadores, hardware, 5).
perfil(arquitetura_de_computadores, matematica_discreta, 4).
perfil(arquitetura_de_computadores, otimizacao_sistemas, 3).
perfil(arquitetura_de_computadores, eletronica, 5).
perfil(arquitetura_de_computadores, software, 5).
perfil(arquitetura_de_computadores, machine_learning, 4).
perfil(arquitetura_de_computadores, matematica_e_estatistica, 3).
perfil(arquitetura_de_computadores, programacao, 5).
perfil(arquitetura_de_computadores, sistemas_e_redes, 5).
perfil(arquitetura_de_computadores, pensamento_critico, 4).
perfil(arquitetura_de_computadores, criptografia, 3).
perfil(arquitetura_de_computadores, matematica_discreta, 5).
perfil(arquitetura_de_computadores, otimizacao_sistemas, 5).
perfil(arquitetura_de_computadores, analise_dados, 4).
perfil(arquitetura_de_computadores, padroes_tendencias, 3).


% Ciência de dados
perfil(ciencia_de_dados, matematica_e_estatistica, 5).
perfil(ciencia_de_dados, analise_de_dados, 5).
perfil(ciencia_de_dados, padroes_e_tendencias, 5).
perfil(ciencia_de_dados, software, 4).
perfil(ciencia_de_dados, hardware, 5).
perfil(ciencia_de_dados, matematica_discreta, 5).
perfil(ciencia_de_dados, otimizacao_sistemas, 5).
perfil(ciencia_de_dados, eletronica, 4).
perfil(ciencia_de_dados, machine_learning, 5).
perfil(ciencia_de_dados, programacao, 5).
perfil(ciencia_de_dados, sistemas_e_redes, 5).
perfil(ciencia_de_dados, pensamento_critico, 4).
perfil(ciencia_de_dados, criptografia, 5).

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
pergunta(11, "Você tem afinidade com otimização de sistema?", otimizacao_sistema).
pergunta(12, "Você tem afinidade com análise de dados?", analise_de_dados).
pergunta(13, "Você tem afinidade com padrões e tendências?", padroes_e_tendencias).


%Interface

usuario_resposta(Index, Categoria) :-
    % Lê o input do usuário, se estiver correto, cria dinamicamente um fato com base na resposta. 
    % Se estiver errado, informa o erro e faz a pergunta novamente.
	read_line_to_string(user_input, Resposta),
    (   number_string(N, Resposta), integer(N) -> % Verifica se é um inteiro a resposta
    		% Se for um inteiro, informa que é uma entrada inválida e faz a pergunta novamente
    		  write("Entrada inválida!! Digite sim ou não."), nl,
        	usuario_resposta(Index, Categoria)
    	; % Verifica se o primeiro caractere da resposta é s, se for a resposta é sim
    	( 	sub_atom(Resposta, 0, 1, _, "s") ->  
    			assertz(interesse(Index, Categoria, "s"))
    		;
    			assertz(interesse(Index, Categoria, "s"))  
         )   
    	;% Verifica se o primeiro caractere da resposta é n, se for a resposta é não
    	(	sub_atom(Resposta, 0, 1, _, "n") ->  
    			assertz(interesse(Index, Categoria, "n"))
    		;
    			assertz(interesse(Index, Categoria, "n"))   
         )   
    	; % Se o primeiro caractere não for nem s e nem n, a entrada é inválida.   
		  	  write("Entrada inválida!! Digite sim ou não."), nl,
          usuario_resposta(Index, Categoria)
	).
    

faz_perguntas(Index) :-
    % Condição de parada: índice for maior que 13, visto que há apenas 13 tipos de conhecimento
    Index > 13, !.

faz_perguntas(Index) :-
    % Pega a pergunta com base no índice
    pergunta(Index, Texto, Categoria),
    % Imprime na tela
    write(Texto), 
 	  nl,
    % Pega a resposta do usuário
    usuario_resposta(Index, Categoria),
    % Calcula o próximo índice
    Next is Index + 1,
    faz_perguntas(Next).
