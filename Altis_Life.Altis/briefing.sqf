waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["serverrules","Regras Gerais"];
player createDiarySubject ["policerules","Regras Policiais"];
player createDiarySubject ["civrules","Regras Civís"];
player createDiarySubject ["gangrules","Regras de Gangues"];
player createDiarySubject ["terrorrules","Regras de Terrorismo"];
player createDiarySubject ["safezones","Zonas Seguras"];
player createDiarySubject ["illegalitems","Atividades Ilegais"];
player createDiarySubject ["prices","Tabelas de Preços"];
player createDiarySubject ["controls","Controles"];
player createDiarySubject ["manual","Manual de Instruções"];
player createDiarySubject ["changelog","Change Logs"];
player createDiarySubject ["contact","Contato"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/

//Pode ser ouvido por todos do seu lado (civíl, médico e polícia) independente do local onde o jogador está. Isso incomoda e atrapalha, portanto para voz use o chat direto para falar com alguem próximo. (Veja seção 'Controles')

	player createDiaryRecord["changelog",
		[
			"Change Log Oficial",
				"
				<br/>
					v0.17<br/>
					Correções de alguns bugs do patch anterior.<br/>
					Spyglas antihack atualizado e melhorado para algumas novas formas de cheat.<br/>
					Battleye atualizado.<br/>
					Arma 3 Server atualizado. Nova versão requerida para jogar: 1.38.128937.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.16<br/>
					Revisão nos preços com algumas alterações para equilíbrio da economia.<br/>
					Corrigido os preços da carne de tartaruga e da sopa de tartaruga.<br/>
					Alterado os preços dos farms ilegais e das multas em caso de tráfico. As multas serão revistas no próximo patch.<br/>
					Corrigido um bug no texto ao ser curado por um médico do SAMU que exibia a taxa incorretamente. O valor para ressucitar é de R$20000.<br/>
					Localização do sistema de comunicação do celular para português.<br/>
					Alterado o preço da barra de ouro para R$100000.<br/>
					Alterado o preço do diamante lapidado para R$7500.<br/>
					Traduzida a lista de crimes para português.<br/>
					Alterado os preços de recompensas para os crimes.<br/>
					Alterado o peso do diamante bruto de 4 para 5.
					Adicionada a tabela de preços das recompensas de crimes.<br/>
					Revisado todas as lojas de veículos de todos os lados. Todas sofreram alguma alteração.<br/>
					Os caminhões menores foram movidos e agora estão na loja de caminhões.<br/>
					Adicionado helicópteros do DLC.<br/>
					Adicionado submarinos.<br/>
					Todos os hospitais possuem médicos agora.<br/>
					Adicionado o píer em Pyrgos. Agora sim Pyrgos é uma cidade portuária!<br/>
					Adicionado uma garagem em pyrgos.<br/>
					Corrigido algumas marcações e cores no mapa para melhorar a acessibilidade sem texturas.<br/>
					Adicionado um heliponto de resgate na praça central de Kavala para facilitar a vida do SAMU.<br/>
					Adicionado um heliponto civil em Kavala. O heliponto está em um local de difícil acesso propositalmente!<br/>
					Corrigido o aeroporto ao norte próximo a antiga Kavala.<br/>
					Adicionado novas skins de veículos policiais e médicos.<br/>
					Alterado a skin de médicos do SAMU.<br/>
					Pequenos ajustes em alguns pontos de spawn de veículos para evitar colisões.<br/>
					Outras correções e modificações menores.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.15<br/>
					Corrigido o bug do SAMU no qual alguns médicos ficavam sem nenhum item após morrer e iniciar uma nova vida.<br/>
					Reduzido o requisito mínimo para ataque à reserva federal para dois policiais, porém o nível da força letal será proporcional a quantidade de civis rebeldes participantes no assalto.<br/>
					Corrigido o bug na animação de médicos ao curar.<br/>
					Corrigido alguns erros de localização.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.14<br/>
					Corrigido alguns bugs nas ferramentas de administração e moderação.<br/>
					Revisado todos os níveis de atribuição de administrador e moderador.<br/>
					Corrigido o bug na animação de conserto de veículos e captura de áreas de gang.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.13<br/>
					Implementado um novo sistema de verificação de veículos. Agora os veículos não se perdem durante reinicios do servidor e aleatoriamente devido ao retorno automático a cada 30 minutos.<br/>
					Aprimorado o sistema de retorno automático de veículos sem interação por mais de 30 minutos.<br/>
					Atualizado o sistema anticheat SpyGlass.<br/>
					Corrigido a falha que permitia a duplicação de itens em corpos.<br/>
					Corrigido a falha que possibilitava novos jogadores iniciar com mais dinheiro do que o permitido.<br/>
					Alterado os valores iniciais de dinheiro para todas as classes: agora todos os jogadores novos começam com R$25000.<br/>
					Atualizado o banco de dados para tornar os dados mais seguros, resilientes e estabilizar a distribuição entre os servidores de backup.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.12<br/>
					Adicionado novas ferramentas de administração.<br/>
					Corrigido o bug que impedia policiais de executar ações de interação com civís.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.11<br/>
					Novo sistema automático da lista de criminosos procurados. O código foi interamente revisado e algumas partes refeitas.<br/>
					Corrigido o bug que permitia criar uma nova vida para evitar os crimes cometidos.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.10<br/>
					Corrigido mais bugs nas skins de veículos.<br/>
					Adicionado novas opções de cores no PO-30 Orca.<br/>
					Adicionado novas opções de cores no M-900.<br/>
					Adicionado a função de rendição usando o [Shift+V]. Jogadores agora podem se render durante um asslto. Assaltantes podem roubar jogadores tanto sob rendição quanto nocauteados.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9.8<br/>
					Corrigido bugs nas skins de veículos.<br/>
					Adicionado novas opções de cores no MH-9 Hummingbird (Beija-Flor).<br/>
					Adicionado o suporte para novas skins.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9.7<br/>
					Corrigido o bug que impedia alguns players de se conectar nos slots civis disponíveis.<br/>
					Corrigido a descrição dos slots de todos os lados.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9.6<br/>
					Novas marcações de áreas diversas em Altis.<br/>
					Alterado o esquema de cores de áreas de caça aquática e áreas seguras nas cidades principais.<br/>
					Adicionado novas áreas em Altis: Sofia agora é uma área em alerta e não mais uma zona segura.<br/>
					Adicionado uma área de guerra civíl, onde é permitido atacar livremente dentro dos limites da fronteira.<br/>
					Aumentado os slots médicos. Há um total 5 slots médicos agora.<br/>
					Aumentado os slots policiais. Há um total de 20 slots policiais agora.<br/>
					Aumentado os slots civís. Há um total de 75 slots.<br/>
					O servidor agora possui capacidade para suportar 100 jogadores simultaneamente.<br/>
					Correções menores nos pontos de spawn de veículos em Kavala.<br/>
					Correções de algumas skins de veículos não carregando corretamente.<br/>
					Alterado o ponto de spawn de policiais em Kavala.<br/>
					Corrigido o bug no giroflex do Hatchback Sport.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9.5<br/>
					Correções nas marcações do mapa de Altis.<br/>
					Correções menores de alguns NPCs em Kavala, Posto Rebelde Norte e Prisão.<br/>
					Melhorias no sistema de detecção de tiros e explosões em zonas seguras.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9.4<br/>
					Correções de vários objetos em Altis.<br/>
					Correção no sistema de garagem do NPC guarda costeira no lado policial em Kavala.<br/>
					Adicionado um novo sistema de detecção de tiros e explosões em zonas seguras.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9.3<br/>
					Adicionado SUV Policial.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9.2<br/>
					Corrigido o bug no sistema de procurados e da prisão que impedia a recuperação da lista e a gravação do crime no banco de dados.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					<b>v0.9.1</b><br/>
					- Implementado um sistema de persistencia de criminosos procurados.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.9<br/>
					- Mais textos localizados para Português do Brasil.<br/>
					- Correções de bugs menores nos veículos.<br/>
					- Correções de bugs menores no mapa.<br/>
					- Alterações na cidade de Kavala: implementado proteções na praça central e movido o Mercado para o centro.
					- Adicionado as tabelas de preços de produtos (venda) e de licenças no diário (briefing).<br/>
					- Implementado um sistema automático de restrição de voz no sidechat com punições moderadas em caso de insistência.<br/>
					- Implementada uma assinatura digital que permitirá identificar cópias não autorizadas da missão clientside.<br/>
					- Balanceamento nos preços de algumas licenças para melhorar o equilíbrio econômico*:<br/>
					   1. Licença de Motorista      = R$1000 -> R$2300.<br/>
					   2. Licença de Caminhão       = R$2500 -> R$3800.<br/>
					   3. Licença de Barco          = R$2000 -> R$3500.<br/>
					   4. Licença de Piloto         = R$5000 -> R$5500.<br/>
					   5. Licença de Mergulho       = R$2000 -> R$1200.<br/>
					   5. Lapidação de Diamante     = R$35000 -> R$53450.<br/>
					   <br/>
					   <br/>
					*Os valores se aplicam para a compra de novas licenças. Se você já possui uma licença ela não será removida.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.8<br/>
					<br/>
					- Correções de bugs menores no servidor.<br/>
					- Inserido códigos para melhorar o suporte a funcionalidades futuras.<br/>
					- Inserido novas funcionalidades no núcleo do servidor.*<br/>
					- Mais textos localizados. Isso significa menos coisas em inglês.<br/>
					<br/>
					Ainda existem muitos textos sem traduzir, sabemos disso mas tenha paciência. A cada atualização novas traduções serão inseridas.<br/>
					Se tiver inglês e português FLUENTES e queira ajudar, sinta-se encorajado a entrar em contato com a administração (Ver seção 'Contato' em 'Notas').<br/>
					Participe do programa de recompensas para cada bloco de texto traduzido e aceito pela administração com valores de até 150 mil dinheiros in-game!<br/>
					<br/>
					<br/>
					*Novas funcionalidades estão desativadas durante o período de testes no servidor principal. Assim que estiverem estáveis serão ativadas numa atualização futura.<br/>
					<br/>
					-------------------------------------------------------------------------------<br/>
					<br/>
					<br/>
					v0.1 - v0.7.x<br/>
					<br/>
					- Localização do mapa para Português do Brasil.<br/>
					- Correções de posicionamento nos NPCs.<br/>
					- Loja de Equipamentos:<br/>
					   1. Adicionado: Focalizador (rangefinder) = R$3500.<br/>
					   2. Adicionado: Mapa = R$30.<br/>
					   3. Adicionado: GPS = R$100.<br/>
					   4. Adicionado: Bussola = R$50.<br/>
					   5. Adicionado: Relógio = R$50.<br/>
					   6. Adicionado: Revolver Sinalizador (não letal) = R$300.<br/>
					   7. Adicionado: Cartucho Sinalizador Vermelho = R$30.<br/>
					   8. Adicionado: Cartucho Sinalizador Verde = R$30.<br/>
					   9. Balanceamento de preço: Óculos de Visão Noturna = R$3200 -> R$15350.<br/>
					   <br/>
					- Loja de Armas:<br/>
					   1. Adicionado: Mira Yorris J2 para revolver = R$500.<br/>
					   2. Adicionado: Mira A.C.O. na cor Verde para submetralhadora = R$950.<br/>
					   3. Adicionado: Mira Holográfica MK17 para submetralhadora = R$1500.<br/>
					   4. Adicionado: Silenciadores 9mm (R$800) e .45 ACP (R$1500).<br/>
					   <br/>
					- Loja de Armas Rebelde:<br/>
					   1. Adicionado novas armas rebeldes: rifles de assalto, carabinas, fuzis, metralhadoras leves e pesadas e rifles de precisão.<br/>
					   2. Adicionado novas muniçoes normais, traçantes, perfurantes e sub-aquática.<br/>
					   3. Adicionado novas munições das variantes de lança-granadas EGLM e 3GL, incluindo explosivas, fumaça e sinalizadores.<br/>
					   4. Adicionado novas miras telescópicas de curto, médio e longo alcance e de precisão.<br/>
					   5. Adicionado novos acessórios, incluindo lanterna e mira laser infravermelho.<br/>
					<br/>
					- Loja de Roupas Rebelde:<br/>
					   1. Adicionado novas roupas, coletes e capacetes.<br/>
					<br/>
					- Corrigido a sobreposição dos ícones de fome, sede e saúde com outros elementos do HUD.<br/>
					- Adicionado novos veículos terrestres e aéreos.<br/>
				"
		]
	];
	
	/*player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
				"
		]
	];*/

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				<br/>
				Estes são considerados explorações de falhas ou bugs e você não vai ser apenas expulso do jogo, mas banido!<br/>
				<br/>
				1. Sair da prisão através de qualquer método que não seja o pagamento de fiança ou escapar através do helicóptero.<br/>
				2. Matar-se para sair do roleplay. Fugir para nao ser imobilizado por taser, contido, preso, etc. Se o log no servidor mostrar que foi preso e cometeu suicídio, você poderá ser banido. Além disso, você não será perdoado de seus crimes e continuará na lista de procurado! Se estiver preso, não pagar fiança e matar-se para fugir não apenas falhará como também aumentará o tempo de prisão. Cumpra sua pena! Ao ser liberado depois de cumprir sua pena, não se mate ou aborte a missão para voltar rapidamente, siga o roleplay de siimulação e caminhe sem preguiça.<br/>
				3. Duping (duplicar) itens e/ou dinheiro. Se alguém lhe enviar uma quantidade inalcançável de dinheiro logo no início do jogo, informar ao administrador IMEDIATAMENTE e transferir o dinheiro ao administrador. Faça isso o mais rápido possível ou um administrador pode banir você se ver essa quantia contigo, sem prévio aviso ou questionamentos.<br/>
				4. Usar itens claramente hackeados. Se um hacker entra e gera itens inexistentes ou inatingíveis no servidor, você pode ser banido por usar os referidos itens. Denuncie os itens para os administradores imediatamente e fique longe deles.<br/>
				5. Abusar de bugs ou da mecânica de jogo para lucrar indefinidamente. Existe uma arma replicada ou duplicada em algum lugar? Reporte-a e a deixe onde está. Se um administrador pegar você se aproveitando de um glitch, falha, bug ou qualquer outro erro no sistema, ban permanente.<br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Zonas Seguras (Sem Matança)",
				"
					<br/>
					Se sair explodindo (e explodindo pode ser, por exemplo, explodir intencionalmente um veículo), nocauteando, roubando ou matando ao redor ou dentro dessas áreas, você poderá e será punido com bloqueio temporário ou permanente de acordo com a gravidade da ação e a avaliação dos administradores.<br/>
					<br/>
					Zonas Seguras estão, geralmente, bem demarcadas no mapa com círculos translúcidos de diversas cores e abrangem um determinado raio. Localize-as através do mapa. Mesmo assim, como regra geral, as zona seguras são:<br/>
					<br/>
					Qualquer ponto de spawn de veículos (loja ou garagem)<br/>
					Qualquer loja de armas<br/>
					Todos os quarteis da polícia<br/>
					Todos os postos rebeldes<br/>
					Lojas especiais e de doadores<br/>
					<br/>
					As cidades Kavala, Athira e Pyrgos estão temporariamente com bloqueio do projétil das armas dentro dos limites da zona segura.<br/>
					A cidade Sofia está sem a proteção e é uma área de alerta. Assaltos estão liberados dentro das regras de assalto.<br/>
					A cidade de Molos está sob guerra civíl. Devido a isso, regras não se aplicam dentro dos limites da fronteira demarcada em vermelho, portanto todas as mortes e perdas não serão reembolsadas!<br/>
					A área sobre o aeroporto possui espaço áreo controlado, portanto voe a uma velocidade reduzida. Uma função de controle de tráfego aéreo será implementada futuramente. Voar de forma insegura e inegligente, sem autorização ou fora das instruções do controle de tráfego aéreo pela polícia será punida com a apreensão da aeronave e/ou prisão e/ou multa de acordo com a gravidade, avaliada pela autoridade que lhe abordar.<br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Ofensas Graves", 
				"
				<br/>
				Infringir uma dessas regras resultará em bloqueio permanente sem prévio aviso!<br/>
				Considere esse seu primeiro e único aviso.<br/>
				<br/>
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (Aproveitamento de bugs) (Veja a seção 'Exploits')<br/>
				4. Ser expulso (kickado/chutado) 3 ou mais vezes.<br/>
				5. Comentários, atitudes ou ações de natureza preconceituosas ou racistas.<br/>
				6. Brigas ou ofensas com palavrões e indecência.<br/>
				7. Conversas com conteúdo sexualmente explícito e/ou difamatório totalmente fora do roleplay.<br/>
				8. Falsas denuncias/calúnias repetitivas com intuído de atrapalhar a jogabilidade.<br/>
				9. Flood ou spam no chat 'side' com propósito de incomodar.
				10. Falar no chat 'side' usando o recurso VON (Voice Over Net - Voz Sobre Rede).<br/>
				11. Assassinar e/ou roubar sem anunciar previamente e por ESCRITO no chat side (lado/time) e por voz no chat direto, citando o(s) nome(s) do(s) alvo(s).<br/>
				12. Não passar as instruções CLARAMENTE ao realizar roubos e assaltos à(s) vítima(s).<br/>
				<br/>
				*Fique atento ao chat, nem todos possuem microfone ou podem estar passando por algum problema! Seja razoável e tenha bom senso acima e antes de tudo.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Interação Policial", 
				"
				<br/>
				Os itens nessa lista podem resultar, além de prisão, na expulsão e/ou bloqueio temporário ou permanente, baseado inteiramente na avaliação pela administração do servidor num caso de conduta anti-jogo.<br/>
				<br/>
				1. Civis podem ser presos por por vasculhar o inventário de veículos ou a mochila de policiais. Reincidências e insistências irão resultar na sua remoção do servidor (kick).<br/>
				2. Civis podem ser presos por seguir policiais no jogo com intuito de revelear a posição deles a outros jogadores.<br/>
				3. Civis ou Rebeldes que usarem armas para matar policiais em cidades ou qualquer outro lugar sem nenhum motivo dentro do Role-Play será considerado anti-jogo (MAAJ, Matança Aleatória Anti-Jogo). Veja a seção MAAJ.<br/>
				4. Ficar seguindo ou assediando poliiciais por longos períodos de tempo será considerado irritação proposital ou spam e irá resultar na sua remoção do servidor.<br/>
				5. Atrapalhar ativamente os policiais de realizar suas tarefas pode ser punido com sua prisão. Fazer isso constantemente irá resultar na sua remoção do servidor como alerta. Reincidências serão punidas com um bloqueio temporário.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Barcos", 
				"
				<br/>
				Os itens nessa lista podem resultar, além de prisão, na expulsão e/ou bloqueio temporário ou permanente, baseado inteiramente na avaliação pela administração do servidor num caso de conduta anti-jogo.<br/>
				<br/>
				1. Empurrar barcos repetidamente sem permissão.<br/>
				2. Empurrar um barco com a intenção de machucar ou matar alguém. Essa conduta é inadequada e anti-jogo, é considerada uma exploração da mecânica do jogo.<br/>
				3. Atropelar nadadores e mergulhadores propositalmente.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Aviação", 
				"
				<br/>
				Os itens nessa lista podem resultar, além de prisão, na expulsão e/ou bloqueio temporário ou permanente, baseado inteiramente na avaliação pela administração do servidor num caso de conduta anti-jogo.<br/>
				<br/>
				1. Propositalmente abalroar um helicóptero em qualquer coisa, como outros helicópteros, veículos, construções, pessoas.<br/>
				2. Voar abaixo de 150m sobre a cidade constantemente. Além  de ser ilegal, corre-se o risco de cair na cidade, portanto, contra as regras do servidor.<br/>
				3. Roubar helicópteros sem aviso apropriado e tempo significante para o piloto ter chance de trancar o veículo. Se ele(s) pousar(em) e sair(írem) correndo sem trancar, está bem. Se ele(s) apenas sair e você entrar antes que ele(s) tenham chance de trancar o veículo, está contra essa regra.<br/>
				4. Não solicitar permissão para entrar em espaço áreo controlado. Os espaços áreos controlados são:<br/>
				  - Kavala<br/>
				  - Athira<br/>
				  - Pyrgos<br/>
				  - Aeroportos<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Veículos", 
				"
				<br/>
				Os itens nessa lista podem resultar, além de prisão, na expulsão e/ou bloqueio temporário ou permanente, baseado inteiramente na avaliação pela administração do servidor num caso de conduta anti-jogo.<br/>
				<br/>
				1. Atropelar pessoas propositalmente (MAV, Matança Aleatória Veicular). Há acidentes, e há sair do seu caminho para passar por cima de alguém.<br/>
				2. Propositalmente se jogar em frente aos veículos com o objetivo de suicidar ou atrapalhar outros jogadores.<br/>
				3. Abalroar outros veículos com o objetivo de causar uma explosão.<br/>
				4. Constantemente tentar entrar em veículos que não lhe pertencem com o objetivo de incomodar ou irritar o dono, atrapalhando o bom andamento do jogo.<br/>
				5. Roubar um veículo apenas para bate-lo ou destruí-lo de qualquer outra forma.<br/>
				6. Comprar múltiplos veículos com propósito de fazer algum dos acima.<br/>
				7. A única razão para atirar em um veículo será para desabilita-lo ou tiros de aviso mantendo o bom andamento do jogo. Você não pode destruir deliberadamente veículos inimigos.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Regras de Comunicação", 
				"
				<br/>
				Os itens nessa lista podem resultar, além de prisão, na expulsão e/ou bloqueio temporário ou permanente, baseado inteiramente na avaliação pela administração do servidor num caso de conduta anti-jogo.<br/>
				<br/>
				1. O chat do lado ou facção escolhida (Side Chat) não pode ser usado para tocar música ou qualquer outro tipo de aúdio, apenas texto.<br/>
				2. Fazer SPAM em qualquer canal de chat irá resultar na sua remoção do servidor.<br/>
				4. Os canais do Teamspeak estão divididos em áreas e categorias por uma rasão. Policiais devem estar nos canais de policiais em todo e qualquer momento.<br/>
				5. Civis não podem estar em qualquer um dos canais policiais no TeamSpeak com o objetivo de colher informações de suas localizações ou movimentações. Civis que forem pegos fazendo isso serão removidos do canal. Reincidentes serão expulsos ou bloqueados permanentemente de ambos o jogo e o TeamSpeak.<br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Matança Aleatória Anti-Jogo (MAAJ)", 
				"
				<br/>
				Os itens nessa lista podem resultar, além de prisão, na expulsão e/ou bloqueio temporário ou permanente, baseado inteiramente na avaliação pela administração do servidor num caso de conduta anti-jogo.<br/>
				<br/>
				1. Matar qualquer um sem uma causa dentro do andamento e das regras do jogo.<br/>
				2. Declarar uma rebelião ou terrorismo não é uma justificativa pra sair matando qualquer um, até mesmo policiais.<br/>
				3. Policiais, civis e rebeldes apenas podem começar um tiroteio se houver razões relacionadas a um crime.<br/>
				4. Se você for morto no fogo cruzado de uma troca de tiros não caracteriza MAAJ, apenas hora errada e lugar errado.<br/>
				5. Matar alguém na tentativa de proteger você mesmo ou a outros não é MAAJ.<br/>
				6. Atirar em um jogador sem lhe dar um tempo bastante razoável para seguir as instruções ou atender suas ordens é considerado MAAJ.<br/>
				<br/>
				Essas regras são todas julgadas pela administração caso a caso e podem levar um tempo considerável devido a análise dos logs.<br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Regra da Nova Vida", 
				"
				<br/>
				A regra da nova vida se aplica a policiais, civis e rebeldes.<br/>
				<br/>
				Os itens nessa lista podem resultar na sua remoção do servidor e/ou bloqueio permanente ou temporário de acordo com o critério da administração.<br/>
				<br/>
				1. Se você for morto você deve aguardar 15 minutos antes de retornar à cena de sua morte.<br/>
				2. Se você morrer durante o andamento normal do jogo seus crimes passados serão esquecidos (confirme com a polícia em caso de dúvida), mas você também não pode procurar vingança.<br/>
				3. Se você morrer numa MAAJ, não é uma nova vida.<br/>
				4. Se você ressurgir manualmente, função no menu do jogo disponível a qualquer momento, não é uma nova vida.<br/>
				5. Se você suicidar propositalmente para evitar, fugir ou burlar o andamento do jogo, não é uma nova vida.<br/>
				6. Se você morrer e for ressucitado por um médico do SAMU, não é uma nova vida. Você pode procurar vingança para recuperar seus pertences em caso de roubo, furto ou assalto desde que siga as regras fazendo o devido anúncio do assalto.<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Não seja um idiota!", 
				"
				<br/>
				Se um administrador tiver que te dizer que você está sendo um idiota, você está fazendo idiotices e coisas de crianças mimadas.<br/>
				Causando irritação ou pertubação aos outros, corrompendo ou atrapalhando o bom andamento do jogo, a lista continua e vai por aí.<br/>
				Apenas não seja um idiota, ok?!<br/><br/>
				Essa regra pode ser invocada a critério do administrador.
				"
		]
	];
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Crisis Negotiation",
				"
				<br/>
				Crisis Negotiation must be handled by a Sergeant. If one is not available, the person with the next highest rank must handle the situation.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"The Federal Reserve",
				"
				<br/>
				1. The Federal Reserve is illegal for civilians to enter, unless they have been given authorization. If civilians enter without authorization they are to be escorted off-site or arrested if they persist.
				2. Helicopters flying over the Federal Reserve may be asked to leave and disabled if they refuse.<br/>
				2. If the Federal Reserve is getting robbed, it is encouraged that all available officers move in to stop it.<br/>
				3. Nearby officers should immediately head to the Federal Reserve to assist. Petty crimes can be dropped during a robbery.<br/>
				4. Lethal force on bank robbers may be used if no other alternative is available. Every option to taze and arrest the person should be made first.<br/>
				5. Police may not fire blindly into the building.<br/>
				6. The police should evacuate the civilians from the building during a robbery.<br/>
				7. Any civilian who actively makes an attempt to block the police from entering the building may be treated as an accomplice.<br/>
				8. Supervisory officers may hire individuals or contract a group of people to work as security guards for the bank. See 'Contracting' section for more information.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Aviation",
				"
				<br/>
				1. No helicopter can land within city limits without authorization from the highest ranking officer online. (Exceptions being what is listed below.)<br/>
				Kavala: The hospital helipad (037129) or docks (031128).<br/>
				Athira: The sports field (138185) or behind the DMV (140188).<br/>
				Pyrgos: The fields North/East of DMV (170127)<br/>
				Sofia: Opposite the car shop (258214) or the fields Southeast of the garage (257212)<br/>
				Small towns: An appropriate location may be chosen. This is to be judged by officers on a case by case basis.<br/><br/>
				
				2. Helicopters may not land on roads.<br/>
				3. Police may temporarily forbid landing at  but it cannot remain closed for a long period of time.<br/>
				4. Helicopters cannot fly below 150m over the city without authorization.<br/>
				5. Helicopters cannot hover over the city. Cops may only hover over the city if there is an active police operation going on.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegal Areas", 
				"
				<br/>
				1. Gang areas are not considered illegal. Thus a cop may enter without a raid, but may not restrain or stop anyone inside without probable cause/illegal activity. (Talking to the gang NPC is NOT probable cause/illegal activity.)<br/>
				2. Do not enter an illegal area unless it is part of a raid. see Raiding/Camping.<br/>
				3. If you chase someone into an illegal area, call for backup.<br/>
				4. Under no circumstances is an officer allowed to camp any illegal area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patrolling", 
				"
				<br/>
				1. Police may patrol the island's roads and towns searching for abandoned vehicles and criminal activity.<br/>
				2. Patrols can be done on foot inside of a town, or in a vehicle when outside.<br/>
				3. Patrols do not include illegal areas. See Raiding/Camping.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				<br/>
				Cops are encouraged to setup checkpoints in strategic areas to help combat illegal activity and promote safety on the road.<br/><br/>
				
				1. A checkpoint must consist of 3 or more officers, utilizing 2 or more vehicles. An ATV does not count as one of the required vehicles, but may still be used.<br/>
				2. A checkpoint can not be setup within 300m of an illegal area. Basically, you cannot set one up on top of an illegal area.<br/>
				3. Checkpoints may only be setup on roads, but it does not have to be on a crossroad.<br/>
				4. Checkpoints do not have to be marked on the map.<br/>
				<br/>
				<br/>
				Proper Checkpoint Procedure:<br/>
				1. Have the driver stop the vehicle at a safe distance and turn off the engine.<br/>
				2. Ask the driver and any passengers if they have any weapons.<br/>
				3. Ask the driver and any passengers to exit the vehicle. If they have weapons, do not immediately restrain them when they get out, tell them to lower their weapons and given them a reasonable amount of time to do so.<br/>
				4. Ask them where they are headed to and from.<br/>
				5. Ask if they will submit to a search.<br/>
				6. If they allow a search, you may restrain them and search them.<br/>
				7. If they do not submit to a search, you must let them go, unless there is probable cause.<br/>
				8. After the search is done, you may allow them to re-enter their vehicle and drive away.<br/>
				9. In case anything illegal is found, the person may be ticketed or arrested depending on the crime.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Vehicles", 
				"
				<br/>
				1. Vehicles in the parking lot, or are reasonably parked elsewhere should be left alone.<br/>
				2. Vehicles that look abandoned, broken, with no driver, can be impounded.<br/>
				3. Boats should be parked reasonably on shore.<br/>
				4. Any vehicle that hasn't moved in a significant amount of time may be impounded.<br/>
				5. Impounding is an essential job for a cop, it helps keep the server clean and less laggy.<br/>
				6. If in doubt, always search the vehicle and message the owner(s) before impounding.<br/>
				7. Police speedboats or Hunter HMGs may be used to assist in apprehending criminals. The weapon should be used to disable vehicles, not to blow them up.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Speeding", 
				"
				<br/>
				The following speeds are to be enforced by the Altis Police Force for the absolute safety of the citizens of Kavala and all travelling beyond the city.<br/><br/>
				
				Inside major cities:<br/>
				Small roads: 50km/h<br/>
				Main roads: 65km/h<br/>
				<br/>
				Outside major cities:<br/>
				Small roads: 80km/h<br/>
				Main roads: 110km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"City Protocol", 
				"
				<br/>
				1. Officers may patrol major cities - Kavala, Athira, Pyrgos and Sofia.<br/>
				2. Officers may stop by the car shop to make sure there are no cars that need to be impounded.<br/>
				3. Officers may not stand around or loiter in the centre of town.<br/>
				4. Officers may enter the town in a large number should a rebellious act occur. After the area is clear, they need to leave the town again.<br/>
				5. Martial law may not be declared at any time.<br/>
				6. The Police HQ buildings are illegal for civilians to enter without authorization, however it is NOT illegal for civilians to be nearby unless they are causing a nuisance.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Arresting and Ticketing",
				"
				<br/>
				Arresting should be done to criminals who are considered a danger to themselves or others.<br/><br/>

				1. You may not arrest someone if you have given them a ticket and they paid it.<br/>
				2. You must tell the suspect why they are being arrested before you arrest them.<br/>
				3. If a civilian is wanted, you may arrest them. Do not kill them, unless the situation falls under the 'Use of Lethal Force' section.<br/><br/>


				Ticketing a civilian is considered a warning for the civilian. If they break a law, but do not pose a threat to anyone, you may ticket a civilian.<br/><br/>

				1. Tickets must be a reasonable price.<br/>
				2. Ticket prices should be based off of the crimes committed.<br/>
				3. Refusal to pay a legit ticket is grounds for arrest.<br/>
				4. Giving a civilian and illegitimate ticket, such as $100k for speeding, etc., is not allowed and will result in your removal from the police department.<br/><br/>
				
				A complete list of all crimes and the appropriate punishments should be given to officers during training. If in doubt, or if you have not been trained, ask a higher ranking officer what to do.<br/><br/>
				
				The list is available at crime.sealteamsloth.com<br/><br/>
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Weapons", 
				"
				<br/>
				A cop is NEVER allowed to supply civilians with weapons. This will get you banned from the server and removed from being a cop.<br/><br/>

				Legal Weapons for Civilians to carry with a permit:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Any other weapon (Including Silenced P07 [Considered a Police Weapon]) is illegal.<br/><br/>

				1. Civilians are not allowed to have a weapon out within the town limits.<br/>
				2. Civilians may have a gun out when they are not in the town. However they should submit to a license search if confronted by an officer and should have the gun lowered (Press Ctrl Twice).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				<br/>
				At this time the Taser (Silenced P07) is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				<br/>
				Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

				1. In order to raid an area, the cops must have at least 4 officers involved, one of which must be a Sergeant or above.<br/>
				2. All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go.<br/>
				3. If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
				5. Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
				6. After the area is secure, the officers must leave the area.<br/>
				7. An area cannot be raided again for 20 minutes after a previous raid.<br/>
				8. If the raid is a failure (All officers die), the 20 minute timer still applies to those officers.<br/>
				9. Backup may be called in, but it may not consist of fallen officers (see 'New Life Rule').<br/><br/>

				Camping is defined as the prolong stay of an officer in an area.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
				3. Camping of illegal areas is staying longer than needed after a raid, or if officers do not conduct a raid but continue to watch and take action against civilians entering the area.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				<br/>
				The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Superintendent<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Senior Patrol Officer<br/>
				8. Patrol Officer<br/>
				9. Cadet<br/><br/>

				Cops in game who are not enrolled/accepted into the SPD are the lowest tier and have no say in police operations.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				<br/>
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the SPD.<br/>
				3. Failure to follow proper weapons discipline and procedure will get you removed from the server and suspended from the SPD.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"
				<br/>
				1. All cops must be on Teamspeak 3 in a designated cop channel. Failure to be on Teamspeak during an admin check will result in your immediate dismissal from the server.<br/>
				2. Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>
				"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				<br/>
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. A rebel must first form a gang, and then declare intentions.<br/>
				2. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				3. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				4. Resistance must be coordinated.<br/>
				5. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				<br/>
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				<br/>
				A civilian in control of the following prohibited vehicles is subject to the consequences defined in the unauthorized control of a prohibited vehicle law.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				<br/>
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				<br/>
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Atalhos do Teclado",
				"
				<br/>
				Y: Abrir menu do jogador.<br/>
				<br/>
				U: Trancar e destrancar portas de veículos e casas.<br/>
				<br/>
				F: Sirene (apenas para polícia).<br/>
				<br/>
				T: Abrir menu do porta-malas do veículo.<br/>
				<br/>
				B: Ativa e desativa o sistema de atracagem do guincho (apenas helicópteros).
				<br/>
				Shift esquerdo + R: Algemar (Apenas para polícia).<br/>
				<br/>
				Shift esquerdo + G: Knock out/tonteio (Apenas para civil, usado para roubar).<br/>
				<br/>
				Windows esquerdo : Principal tecla de interação a qual é usada para colheita, interação com veículos (consertar e etc) e para policiais interagir com civís. Pode ser reconfigurada para uma outra tecla única como, por exemplo, H. Para altera-la, pressione [ESC->Configure->Controls->Custom->Use Action 10] ou em Português pressione [ESC->Configurar->Controles->Controles Personalizados->Usar Ação 10].<br/>
				<br/>
				Windows esquerdo + T: Pegar itens e dinheiro que caíram no chão.<br/>
				<br/>
				Shift esquerdo + L: Ativa as luzes do giroflex (Apenas para polícia).<br/>
				<br/>
				Shift esquerdo + H: Guardar arma. Pistolas e revolveres ficarão invisíveis no coldre e fuzis ficarão visíveis nas costas.<br/>
				<br/>
				Shift esquerdo + V: Render-se. Ativa e desativa o modo de rendição no qual o jogador poderá ser roubado sem a necessidade de ser nocauteado.<br/>
				<br/>
				Ctrl direito + B: Exibe o assistente do sistema de carga externa por guincho (Sling Load). É possível carregar veículos de acordo com a capacidade de cada helicóptero.<br/>
				"
		]
	];
	
	
// Prices Section

	player createDiaryRecord ["prices",
		[
			"Licenças",
			"
			<br/>
			Abaixo estão os preços de todas as licenças possíveis de se obter no jogo.<br/>
			Fique atento! Os preços podem ser alterados para balancear o jogo e manter o roleplay divertido e desafiador.<br/>
			<br/>
			Habilitação de Motorista: R$2300.<br/>
			Habilitação de Caminhão: R$3800.<br/>
			Habilitação de Barco: R$3500.<br/>
			Licença de Piloto Civil: R$5500.<br/>
			Licença de Porte de Armas: R$15000.<br/>
			Licença de Mergulho: R$1200.<br/>
			Licença de Piloto (Polícia): R$15000.<br/>
			Licença de Piloto (Médico): R$15000.<br/>
			Licença de Guarda-Costeira: R$8000.<br/>
			Refinação de Petróleo: R$10000.<br/>
			Refinação de Heroína: R$25000.<br/>
			Refinação de Cannabis: R$19500.<br/>
			Refinação de Maconha Medicinal: R$1500.<br/>
			Lapidação de Diamante: R$53450.<br/>
			Refinação de Sal: R$12000.<br/>
			Refinação de Cocaína: R$30000.<br/>
			Processamento de Areia: R$14500.<br/>
			Processamento de Cobre: R$8000.<br/>
			Processamento de Ferro: R$9500.<br/>
			Processamento de Pedra: R$6500.<br/>
			Treinamento Swat: R$35000.<br/>
			Treinamento Rebelde: R$750000.<br/>
			Criação de Gangue: R$150000.<br/>
			Registro Civíl: R$1000000.<br/>
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Carros",
			"
			<br/>
			
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Caminhões",
			"
			<br/>
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Barcos",
			"
			<br/>
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Aeronaves Civis",
			"
			<br/>
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Aeronaves Militares",
			"
			<br/>
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Aeronaves Rebeldes",
			"
			<br/>
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Produtos",
			"
			<br/>
			Abaixo estão os preços de vendas dos produtos nas lojas. O preço é para cada unidade vendida em qualquer loja de Altis.<br/>
			Fique atento! Os preços podem ser alterados para balancear o jogo e manter o roleplay divertido e desafiador.<br/>
			<br/>
			Agua: R$5.<br/>
			Café: R$5.<br/>
			Energético Redgull: R$200.<br/>
			Maça: R$100.<br/>
			Pêssego: R$150.<br/>
			Coelho: R$65.<br/>
			Salmão: R$82.<br/>
			Peixe Ornamental: R$40.<br/>
			Peixe Cavalinha: R$175.<br/>
			Peixe Taínha: R$250.<br/>
			Tubarão Gato: R$300.<br/>
			Tartaruga: R$25000.<br/>
			Sopa de Tartaruga: R$1000.<br/>
			Atum: R$700.<br/>
			Petróleo Refinado: R$7200.<br/>
			Rosquinha: R$60.<br/>
			Diamante Bruto: R$750.<br/>
			Diamante Lapidado: R$7500.<br/>
			Ferro: R$4500.<br/>
			Cobre: R$3500.<br/>
			Sal Refinado: R$3000.<br/>
			Vidro: R$6500.<br/>
			Cimento: R$2500.<br/>
			Erva Cannabis: R$4600<br/>
			Maconha: R$8000.<br/>
			Heroína Bruta: R$5000.<br/>
			Heroína Refinada: R$9500.<br/>
			Cocaína Impura: R$6500.<br/>
			Cocaína Refinada: R$12250.<br/>
			Barra de Ouro (Lingote): R$100000.<br/>
			"
		]
	];
	
	player createDiaryRecord ["prices",
		[
			"Recompensas de Crimes",
			"
			<br/>
			Abaixo estão os preços de recompensa para cada crime cometido. Alguns ainda não estão implementados.<br/>
			Observe que essa lista é a referencia para as multas quando aplicáveis. Valores de recompensa altos e/ou crimes graves são punidos com a prisão.<br/>
			<br/>
			Homicídio por atropelamento: R$65000.<br/>
			Homicídio: R$150000.<br/>
			Fuga da prisão: R$45000.<br/>
			Estupro: R$50000.<br/>
			Tentativa de etupro: R$30000.<br/>
			Tentativa de furto de veículo: R$20000.<br/>
			Uso ilegal de explosivos: R$100000.<br/>
			Roubo ou Assalto: R$50000.<br/>
			Sequestro: R$35000.<br/>
			Tentativa de sequestro: R$20000.<br/>
			Furto de Veículo: R$15000.<br/>
			Roubo leve: R$7000.<br/>
			Fuga de acidente veicular: R$15000.<br/>
			Posse de drogas: R$30000.<br/>
			Intenção de tráfico: R$50000.<br/>
			Tráfico de drogas: R$120000.<br/>
			Assalto a residência: R$65000.<br/>
			"
		]
	];