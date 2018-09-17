%%%
%%% This is file `Estilo.cls',
%%% It was not generated with the docstrip utility
%%%
%%% Descrever no Manual 
%%%
%%%  
\def\filename{Estilo.cls}
\def\fileversion{v1k}
\def\filedate{2018/06/21}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{Estilo}[\filedate\ \fileversion\ UFRRJ monografias - teses]
%%%
%%%=============================================================================
%%%
%%% Codificação ISO
\newif\if@latin     
\DeclareOption{latin}{\@latinfalse}
%%%-----------------------------------------------------------------------------
%%% Codificação Unicode utf8
\newif\if@unicode   
\DeclareOption{unicode}{\@unicodetrue}
%%%
%%%=============================================================================
%%%
%%% Opção "imagem". Controla a inserção das ferramentas para manipular imagem
%%%
\newif\if@imagem   
\DeclareOption{imagem}{\@imagemtrue}
%%%=============================================================================
%%%
%%% Opções para identificação do trabalho
%%%
%%%=============================================================================
%%% 
%%% Opção "licenciatura", para monografia de graduação - Licenciatura
%%%
\DeclareOption{licenciatura}{\let\@escolha=0} %%% Padrão
%%%
%%% Opção "bacharel", para monografia de graduação - Bacharelado
%%%
\DeclareOption{bacharel}{\let\@escolha=1}
%%%
%%% Opção "especialista", para monografia de especialização
%%%
\DeclareOption{especialista}{\let\@escolha=2}
%%%
%%% Opção "mestre", para dissertação de mestrado
%%%
\DeclareOption{mestre}{\let\@escolha=3}
%%%
%%% Opção "doutor", para tese de doutorado
%%%
\DeclareOption{doutor}{\let\@escolha=4}
%%%
%%%=============================================================================
%%%
%%% Opções de enumeração das páginas
%%%
%%% Opção "sofisticada". numeração, linha e título dos capítulos no cabeçalho
\newif\if@sofisticada\@sofisticadafalse
\DeclareOption{sofisticada}{\@sofisticadatrue}
%%%
%%% Opção "completa". completa=sofisticada + numeração na página inicial dos %%% capítulos
%%%
\newif\if@completa\@completafalse
\DeclareOption{completa}{\@completatrue} 
%%%
\newif\if@popular\@popularfalse
\DeclareOption{popular}{\@populartrue}
%%%
%%% Opção "popularsec". o mesmo que opção popular, mas utiliza o título das 
%%% seção e não dos capítulos
%%%
\newif\if@popularsec\@popularsecfalse
\DeclareOption{popularsec}{\@popularsectrue}
%%%
%%% Opção "secpopular". o mesmo que a opção popularsec, só inverte a opsição dos
%%% elementos no cabeçalho
%%%
\newif\if@secpopular\@secpopularfalse
\DeclareOption{secpopular}{\@secpopulartrue}
%%%
%%%=============================================================================
%%%
%%% Opçao refkoma implementada pelo koma-script
%%%
\newif\if@refkoma        
\DeclareOption{refkoma}{\@refkomatrue} %%% padrão 
%%%-----------------------------------------------------------------------------
%%% Opções "refnum" e "refaa" com o pacote natbib
\newif\if@refnum
\DeclareOption{refnum}{\@refnumtrue\@refkomafalse} %%% Referência numérica
\DeclareOption{refaa}{\@refnumfalse\@refkomafalse} %%% Referência autor-ano
%%%-----------------------------------------------------------------------------
%%% Opção "codigo". Permite inserir código com o pacote listing
\newif\if@codigo
\DeclareOption{codigo}{\@codigotrue}
%%%-----------------------------------------------------------------------------
%%% Opção "palatino". Permite inserir a fonte palatino com bera. Bonitas!
\newif\if@palatino
\DeclareOption{palatino}{\@palatinotrue}
%%%-----------------------------------------------------------------------------
%%% Opção "artemisia". Permite inserir a fonte Artemisia-Euler. Bonitas!
\newif\if@artemisia
\DeclareOption{artemisia}{\@artemisiatrue}
%%%-----------------------------------------------------------------------------
%%% Opção "timesA". Disponibiliza a fonte times = pacote txfontsb + Avant
\newif\if@timesA
\DeclareOption{timesA}{\@timesAtrue}
%%%-----------------------------------------------------------------------------
%%% Opção "courier". Fonte courier, que é usada como fónte do código
\newif\if@courier
\DeclareOption{courier}{\@couriertrue}
%%%-----------------------------------------------------------------------------
%%% Opção "fontecodigo". Courien para o código sem o pacote courier
\newif\if@fontecodigo
\DeclareOption{fontecodigo}{\@fontecodigotrue}
%%%-----------------------------------------------------------------------------
%%% Opção "timesH". Disponibiliza a fonte times = pacote mathptmx + Helvetica
\newif\if@timesH
\DeclareOption{timesH}{\@timesHtrue}
%%%-----------------------------------------------------------------------------
%%% Opção "lmoder". Disponibiliza a fonte lmodern+libertine por meio do pacote mathptmx 
\newif\if@lmoder
\DeclareOption{lmoder}{\@lmodertrue}
%%%
\newif\if@lsec
\DeclareOption{lsec}{\@lsectrue}
%%%
\newif\if@tam
\DeclareOption{tam}{\@tamtrue}
%%%=============================================================================
%%%
%%% O código logo abaixo do LoadClass é um ajuste para o comando \appendix que %%% cria o apêndice. Esse código precisa ser lido antes do carregamento do 
%%% pacote fncychap para evitar o erro na entrada do appêndice no sumário. Há %%% duas formas para contornar esse problema, inserir o código no preâmbulo ou %%% incluir o fncychap na estilo, optei pela segunda solução. 
%%%
\newif\if@sonny
\DeclareOption{sonny}{\@sonnytrue}
%%%
\newif\if@lenny
\DeclareOption{lenny}{\@lennytrue}
%%%
\newif\if@glenn
\DeclareOption{glenn}{\@glenntrue}
%%%
\newif\if@conny
\DeclareOption{conny}{\@connytrue}
%%%
\newif\if@rejne
\DeclareOption{rejne}{\@rejnetrue}
%%%
\newif\if@bjornstrup
\DeclareOption{bjornstrup}{\@bjornstruptrue}
%%%
\newif\if@apenas\@apenasfalse
\DeclareOption{apenas}{\@apenastrue}
%%%
\newif\if@manual\@manualfalse
\DeclareOption{manual}{\@manualtrue}
%%%
%%% Executa as opções que serão padrão na classe Estilo, junto com as opções do %%% %%% copmando \LoadClass 
%%%
%%%
\ExecuteOptions{popularsec,refkom,imagem,unicode,licenciatura} %%% Opções padrão 
%%%
%%%
%%%
%%%
%%%=============================================================================
%%%
%%% Lê a classe scrbook que pertence ao Koma-script. Essa é a classe base
%%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax
\LoadClass[%
     ,oneside
     ,BCOR=0.75cm  % binding correction
     ,DIV=calc     % Para arrumar o problema com o setspace
     ,listof=totoc % lista de figura e tabela tem entrada no sumário.
     ,index=totoc  % index chapter will get an entry at the table of contents
     %%%,bibliography=totoc % Referências terão entrada no sumário
     ,toc=chapterentrywithdots
     ,numbers=noenddot   % no dot behind section numbers
     ,captions=heading   % Legenda abaixo de figuras e tabelas
     ,captions=nooneline % desativa a distinção de legendas com apenas uma linha ou mais de uma linha
     ,headings=normal    % use normal version of headings:alternative=small
     ,fontsize=12pt      % fonte 12 pt
]{scrbook}
%%%=============================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                        Formatação dos Apêndice:                    %===
%%%            seccionamento definido pelo comando \apendice           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%% Se o pacote fncychap for carregado leve esse código para o preâmbulo
%%% nesse caso lembre de copiar os comandos \makeatletter e \makeatother que %%% estão comentados antes e depois do código e de apagar o \AtBeginDocument.
%%% Peguei esse código em https://tex.stackexchange.com/questions/163890/
%%% prepend-appendix-before-a-using-scrbook
%%%\makeatletter
\AtBeginDocument{
\g@addto@macro\appendix{
	\if@apenas
	\else
		\gdef\thechapter{\@Roman\c@chapter}%%%
		\renewcommand{\appendixname}{Anexo} 
	\fi                     
	\renewcommand*{\chapterformat}{{\@chapapp\nobreakspace%%%
			       \thechapter\autodot\enskip}}
	\renewcommand*{\chaptermarkformat}{{\@chapapp\nobreakspace%%%
			       \thechapter\autodot\enskip}}
	\let\oldaddcontentsline\addcontentsline
	\newcommand\hackedaddcontentsline[3]{\oldaddcontentsline{#1}{#2}{%%%
			       \@chapapp\nobreakspace#3}}
	\let\oldchapter\chapter
	\renewcommand*\chapter[1]{\let\addcontentsline\hackedaddcontentsline%%%
		\oldchapter{#1}\let\addcontentsline\oldaddcontentsline}
}}
%%%\makeatother
%%%
\if@apenas
   \newcommand{\apendice}{\appendix} 
\else
   \newcommand{\anexo}{\appendix} 
   \newcommand{\apendice}{\setcounter{chapter}{0}%%%
   	                      \gdef\thechapter{\@Alph\c@chapter}%%%
                          \renewcommand{\appendixname}{Ap{\^e}ndice}} 
\fi
%%% O anexo e apêndice
%%%
%%%=============================================================================
%%%=============================================================================
%%%
%%% Meus pacotes cujo carregamento não depende de opção de classe
%%%
\RequirePackage[a4paper,bindingoffset=0.0mm,vcentering=true,inner=4cm,outer=3cm,      top=3cm,bottom=2cm]{geometry}
\RequirePackage[TS1,T1]{fontenc}
\RequirePackage[brazil]{babel}
%%%-----------------------------------------------------------------------------
\RequirePackage{scrhack} %%% O KOMA usa seu próprio algoritmo para criar
%%% ambientes flutuantes fornecidos pelo tocbasic. Portanto, pacotes como 
%%% float ou listings usam uma versão antiga e produzem avisos. No 
%%% entanto, Markus Kohm escreveu um pequeno pacote chamado scrhack que 
%%% corrige esse problema. Por isso esse pacote é carregado aqui
\RequirePackage[onehalfspacing]{setspace}
\AfterTOCHead{\singlespacing} %%% Espaço simples no sumário
%\KOMAoptions{DIV=last}
%\renewcommand*{\headfont}{\color{Navy}\normalfont\itshape}
%\renewcommand*{\pnumfont}{\color{Navy}\normalfont\bfseries\sffamily}
\addtokomafont{chapter}{\Huge\bfseries\sffamily}
\addtokomafont{captionlabel}{\bfseries} %%%\color{Navy}
\addtokomafont{chapterentry}{\normalfont\scshape\color{Navy}} %%% Fonte dos %títulos dos capítulos no sumário  
%\addtokomafont{caption}{\color{Navy}}
%\addtokomafont{chapter}{\color{Navy}}
%\addtokomafont{section}{\color{Navy}}
%\addtokomafont{subsection}{\color{Navy}}
\addtokomafont{subsubsection}{\color{Navy}}
\addtokomafont{paragraph}{\color{Navy}}
\addtokomafont{minisec}{\color{Navy}}
%\addtokomafont{pageheadfoot}{\color{Navy}} %%% Não pretendo usar.
%\addtokomafont{pagefoot}{\color{Navy}} %%% Não existe em scrbook, gera warning
%\addtokomafont{pagenumber}{\color{Navy}}

%%%=============================================================================
%%%
%%% Ajuste da área utilizada da página
%%%
%%% \typearea[current]{last}
%%%=============================================================================
%%% Extended headline like in LaTeX Companion
%%% \setheadwidth[-7.5mm]{1.175\textwidth}
%%%=============================================================================
%%%
\RequirePackage{%
     ,fix-cm    % fix-cm package for LaTeX (c) Walter Schmidt 2003
	 ,etex      % extended number of variables and links
	 ,thinsp    % stretchable \thinspace (\,)
	 ,xspace    % variable space
	 ,calc      % calculating
}
\RequirePackage[%
     ,svgnames
     ,table
     ,x11names
     ,dvipsnames
     ,hyperref
]{xcolor}
\definecolor{estilo}{rgb}{0.95,0.4,0.1}    %%% Laranja
%%%\definecolor{estilooriginal}{RGB}{243,102,25}
%%%
%\PassOptionsToPackage{hyphens}{url}
\RequirePackage[% Altere o espaçamento de fontes para uma estética melhor
     ,final
     ,kerning
     ,babel
     ,protrusion=true
     ,expansion=true % better typography (with much larger PDF file)
     ,tracking=true
]{microtype}
%%%
\RequirePackage[%
     ,colorlinks=true%
     ,citecolor=Navy%
     ,urlcolor=Navy,    
     ,linkcolor=Navy%
     ,breaklinks% 
     ,linktocpage=true    
     ,pdfstartview=FitB            
     ,pdfpagelabels
     ,bookmarksopen=true% 
     ,bookmarksopenlevel=1
     ,bookmarksnumbered=true    
]{hyperref}
\RequirePackage{bookmark}% bookmark cleanup
\RequirePackage[figure]{hypcap}
%%%=============================================================================
%%% Ajustes na legenda de imagens e tabelas
%%%
\RequirePackage[labelfont={small,bf,sf},font={small,sf},hypcap=false]{caption} 
\captionsetup{justification=centering} %%% legendas centralizadas 
\RequirePackage{subcaption}
%%%=============================================================================
\RequirePackage{textcomp} %%% Provê fonte, ajustes e símbolos com o encode TS1.
%%%
\RequirePackage{cancel}   %%% Simplificação (cancelamento) de expressões 
%%%
\RequirePackage{rotating} %%% Suporte girar coisas %%%
%%%
\RequirePackage{boxedminipage} %%% Minipáginas com moldura
%%%
\RequirePackage{makeidx}
%%%
\RequirePackage{wallpaper}
%%%
\RequirePackage{multicol}
%%%
%%% Pacotes para matemática
%%%
\RequirePackage{amsmath}
\RequirePackage{wasysym}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amstext}
\RequirePackage{amsthm}
\RequirePackage{fixmath}
\RequirePackage{thmtools}
%%%-----------------------------------------------------------------------------
%%%
%%% Ambientes para matemática
%%%
\declaretheoremstyle[
spaceabove=6pt,spacebelow=6pt,
headfont=\normalfont\bfseries,
notefont=\mdseries\sffamily, notebraces={(}{)},
bodyfont=\normalfont\itshape,
postheadspace=0.5em,
]{Estiloteorema}
\declaretheorem[style=Estiloteorema,numberwithin=chapter,name={\bfseries\sffamily Defini\c{c}\~ao}]{define}
\declaretheorem[style=Estiloteorema,numberwithin=chapter,name={\bfseries\sffamily Teorema}]{teorema}
\declaretheorem[style=Estiloteorema,parent=teorema,name={\bfseries\sffamily Corol\'ario}]{coro}
\declaretheorem[style=Estiloteorema,numberwithin=chapter,name={\bfseries\sffamily Lema}]{lema}
\declaretheorem[style=Estiloteorema,numberwithin=chapter,name={\bfseries\sffamily Proposi\c{c}\~ao}]{prop}
\declaretheoremstyle[
spaceabove=6pt, spacebelow=0.3cm,
headfont=\normalfont\bfseries,
bodyfont=\normalfont,
notefont=\mdseries\sffamily, notebraces={(}{)},
postheadspace=1em,
qed=\qedsymbol]{Estiloexemplo}
\declaretheorem[style=Estiloexemplo,numberwithin=chapter,name={\bfseries\sffamily Exemplo}]{exemplo}
\declaretheoremstyle[
spaceabove=6pt, spacebelow=0.3cm,
headfont=\normalfont\bfseries,
bodyfont=\normalfont,
notefont=\mdseries\sffamily, notebraces={(}{)},
postheadspace=1em,
qed=$\blacksquare$]{Estiloprova}
\declaretheorem[style=Estiloprova,name={\bfseries\sffamily Demonstra\c{c}\~ao},numbered=no]{prova}
%%%=============================================================================
\RequirePackage{enumitem}
\setlist{noitemsep} %%% Menos espaços entre os itens, lista compacta
\setlist[enumerate]{itemsep=2pt plus 2pt minus 2pt,topsep=\the\itemsep,
	widest=3.,leftmargin=\parindent,partopsep=0cm,parsep=0pt,topsep=0mm,
	labelindent=3mm,align=right}
\setlist[enumerate,1]{label=\arabic*., ref=\arabic*}
\setlist[enumerate,2]{label=\emph{\alph*}),ref=\theenumi.\emph{\alph*}}
\setlist[enumerate,3]{label=\roman*),ref=\theenumii.\roman*}
\setlist[itemize]{itemsep=2pt plus 2pt minus 2pt,topsep=\the\itemsep,
		leftmargin=\parindent,partopsep=0cm,parsep=0pt}
\setlist[itemize,3]{label=$\blacktriangleright$}
\setlist[description]{font=\sffamily\bfseries,leftmargin=\parindent}
%%%
%%% Parece fazer o mesmo que o comando empilha - verificar
%%%
\RequirePackage{stackengine}
\newcommand{\sgn}{\operatorname{sgn}}
\newcommand{\Det}{\operatorname{Det}}
\def\delequal{\mathrel{\ensurestackMath{\stackon[2pt]{=}{
				       \scriptscriptstyle{S=S^{+}\cupdot S^{-}}}}}}
\def\delequall{\mathrel{\ensurestackMath{\stackon[2pt]{=}{
				       \scriptscriptstyle{v=\lambda.u}}}}}
%%%
%%% Aqui termina o carregamento incondicional de pacotes
%%%
%%%=============================================================================
%%%=============================================================================
%%%
%%% Implementação das opções de classe
%%%
%%%=============================================================================
%%%=============================================================================
%%%
\if@glenn   
   \else  %%% Necessário por que a opção glenn é incompatível com o bibtex
   \KOMAoptions{bibliography=totoc} 
\fi

%%%
%%%Opções para codificação
%%%-----------------------------------------------------------------------------
%%% Opção latin
\if@latin
\RequirePackage[latin1]{inputenc}  
\fi
%%% Opção unicode
\if@unicode
\RequirePackage[utf8]{inputenc}   
\fi
%%%
%%%=============================================================================
%%%
%%% Opção "imagem" para gerir a manipulação de imagens
%%%
\if@imagem
\RequirePackage{float}
\RequirePackage{graphicx}%
\graphicspath{{Imagens/}} %%% Endereço das imagens
\DeclareGraphicsRule{*}{mps}{*}{}   %%% Permite a utilização de imagem
%%% MetaPost com pdflatex.
\setlength{\abovecaptionskip}{-3pt} %%% Aproxima a imagem da legenda em 3pt
\newcommand{\imagem}[3][]{%
	\begin{figure}[H]
		\centering
		\includegraphics[#1]{#2}
		\caption{#3}\label{#2}
\end{figure}}  
\newcommand{\imagemlp}[3][]{%
	\begin{figure}[H]
		\resizebox{\textwidth}{!}{\includegraphics[#1]{#2}}
		\caption{#3}\label{#2}
\end{figure}}
\newcommand{\imagemsl}[2][]{%
	\begin{figure}[H]
		\resizebox{\textwidth}{!}{\includegraphics[#1]{#2}}
\end{figure}}
\fi
%%%=============================================================================
%%%
%%% Opções de estilo e enumeração das páginas
%%%
%%%=============================================================================
%%%=============================================================================
%%%
\if@sofisticada
%%%=============================================================================
%%%
%%% Funciona bem para impressão em frente e verso
%%%-----------------------------------------------------------------------------
\RequirePackage[headsepline=1pt,autooneside=false]{scrlayer-scrpage}
\pagestyle{scrheadings}
\newcommand{\ajuste}{
   \if@twoside %%% Necessário, sem ele o cabeçalho da última página fica errado
	    \cleardoublepage
	    \else
	    \clearpage 
   \fi
   \ihead[\pagemark]{\pagemark}
   \chead[]{}
   \ohead[\headmark]{\headmark}
   \ifoot[]{}
   \cfoot[]{}
   \ofoot[]{}
}
\ajuste
\newcommand{\introducao}{\mainmatter\addcontentsline{toc}{chapter}{%%%
	Introdu\c{c}\~{a}o}\chapter*{Introdu\c{c}\~{a}o}
	\ihead[\pagemark]{\pagemark}       %%% Insere a numeração das páginas
	\ohead[Introdu\c{c}\~{a}o]{Introdu\c{c}\~{a}o}}
    \renewcommand*{\chapterpagestyle}{empty}   
%\automark[chapter]{chapter}
%\automark[section]{chapter}
%\automark[chapter]{chapter} \automark*[section]{}
%%%-----------------------------------------------------------------------------
%%% Página inicial do sumário, lista de figuras e lista de tabelas sem 
%%% cabeçalho, sem rodapé e sem numeração
\AfterTOCHead[toc]{\thispagestyle{empty}}
\AfterTOCHead[lof]{\thispagestyle{empty}}
\AfterTOCHead[lot]{\thispagestyle{empty}}
%\renewcommand*{\chapterpagestyle}{empty}
\fi
%%%
%%%-----------------------------------------------------------------------------
%%% completa=sofisticada + com numeração na página inicial dos capítulos
\if@completa
\RequirePackage[headsepline=1pt,autooneside=false]{scrlayer-scrpage}
\pagestyle{scrheadings}
\newcommand{\ajuste}{
	\if@twoside %%% Necessário, sem ele o cabeçalho da última página fica errado
	   \cleardoublepage
	   \else
	   \clearpage 
	\fi
	   \ihead[\pagemark]{\pagemark}
	   \chead[]{}
	   \ohead[\headmark]{\headmark}
	   \ifoot[]{}
	   \cfoot[]{}
       \ofoot[]{}
}
    \ajuste
    \newcommand{\introducao}{\mainmatter\addcontentsline{toc}{chapter}{%%%
		Introdu\c{c}\~{a}o}\chapter*{Introdu\c{c}\~{a}o}
	\ihead[\pagemark]{\pagemark}           %%% Insere a numeração das páginas
	\ohead[Introdu\c{c}\~{a}o]{Introdu\c{c}\~{a}o}}
\fi
%%%
%%%-----------------------------------------------------------------------------
%%% popular= difere da opção sofisticada por inverter a posição do título dos 
%%% capítulos com o número da página
\if@popular
\RequirePackage[headsepline=1pt,autooneside=false]{scrlayer-scrpage}
\pagestyle{scrheadings}
\newcommand{\ajuste}{
	\if@twoside %%% Necessário, sem ele o cabeçalho da última página fica errado
	\cleardoublepage
	\else
	\clearpage 
	\fi
	\ihead[\headmark]{\headmark}
	\chead[]{}
	\ohead[\pagemark]{\pagemark}
	\ifoot[]{}
	\cfoot[]{}
	\ofoot[]{}
}
    \ajuste
    \newcommand{\introducao}{\mainmatter\addcontentsline{toc}{chapter}{%%%
		Introdu\c{c}\~{a}o}\chapter*{Introdu\c{c}\~{a}o}
	\ihead[\pagemark]{\pagemark}           %%% Insere a numeração das páginas
	\ohead[Introdu\c{c}\~{a}o]{Introdu\c{c}\~{a}o}}
\renewcommand*{\chapterpagestyle}{empty}
%%%-----------------------------------------------------------------------------
%%% Página inicial do sumário, lista de figuras e lista de tabelas sem 
%%% cabeçalho, sem rodapé e sem numeração
\AfterTOCHead[toc]{\thispagestyle{empty}}
\AfterTOCHead[lof]{\thispagestyle{empty}}
\AfterTOCHead[lot]{\thispagestyle{empty}}
%%%  
\fi
%%%
%%%-----------------------------------------------------------------------------
%%% popularsec = igual a popular mas usa o título das seções e não dos capítulos
\if@popularsec
\RequirePackage[headsepline=1pt,autooneside=false,automark]{scrlayer-scrpage}
\pagestyle{scrheadings}
\newcommand{\ajuste}{
	\if@twoside %%% Necessário, sem ele o cabeçalho da última página fica errado
	\cleardoublepage
	\else
	\clearpage 
	\fi
	\ihead{\headmark}
	\chead[]{}
	\ohead[\pagemark]{\pagemark}
	\ifoot[]{}
	\cfoot[]{}
	\ofoot[]{}
}
\ajuste
\newcommand{\introducao}{\mainmatter\addcontentsline{toc}{chapter}{%%%
		Introdu\c{c}\~{a}o}\chapter*{Introdu\c{c}\~{a}o}
	\ihead[\pagemark]{\pagemark}           %%% Insere a numeração das páginas
	\ohead[Introdu\c{c}\~{a}o]{Introdu\c{c}\~{a}o}}
\renewcommand*{\chapterpagestyle}{empty}
%%%-----------------------------------------------------------------------------
%%% Página inicial do sumário, lista de figuras e lista de tabelas sem 
%%% cabeçalho, sem rodapé e sem numeração
\AfterTOCHead[toc]{\thispagestyle{empty}}
\AfterTOCHead[lof]{\thispagestyle{empty}}
\AfterTOCHead[lot]{\thispagestyle{empty}}
\fi
%%%
%%%-----------------------------------------------------------------------------
%%% secpopular igual a popularsec mas inverte a posição dos elementos
\if@secpopular
\RequirePackage[headsepline=1pt,autooneside=false,automark]{scrlayer-scrpage}
\pagestyle{scrheadings}
\newcommand{\ajuste}{
	\if@twoside %%% Necessário, sem ele o cabeçalho da última página fica errado
	\cleardoublepage
	\else
	\clearpage 
	\fi
    \ihead{\pagemark}
    \chead[]{}
    \ohead{\headmark}
    \ifoot[]{}
    \cfoot[]{}
    \ofoot[]{}
}
\ajuste
\newcommand{\introducao}{\mainmatter\addcontentsline{toc}{chapter}{%%%
		Introdu\c{c}\~{a}o}\chapter*{Introdu\c{c}\~{a}o}
	\ihead[\pagemark]{\pagemark}           %%% Insere a numeração das páginas
	\ohead[Introdu\c{c}\~{a}o]{Introdu\c{c}\~{a}o}}
\renewcommand*{\chapterpagestyle}{empty}
%%%-----------------------------------------------------------------------------
%%% Página inicial do sumário, lista de figuras e lista de tabelas sem 
%%% cabeçalho, sem rodapé e sem numeração
\AfterTOCHead[toc]{\thispagestyle{empty}}
\AfterTOCHead[lof]{\thispagestyle{empty}}
\AfterTOCHead[lot]{\thispagestyle{empty}}
\fi
%%%
%%%=============================================================================
%%% Opções para referências
%%%
\if@refkoma  %%% Opção padrão "refkoma" - koma-script
   \else
   \if@refnum
      \RequirePackage[numbers,sort&compress]{natbib} %%% refnum
      \else
      \RequirePackage[authoryear]{natbib} %%% refaa
   \fi
\fi
%%%
%%% Fonte código
%%%
\newcommand{\fontecodigo}{\ttfamily} %%% Valor padrão do latex
%%%%
\if@fontecodigo
   \let\fontecodigo\relax %%% Anula definição anterior.
   \DeclareFixedFont{\fontecodigo}{T1}{pcr}{m}{n}{9}
\fi
%%%=============================================================================
%%% Opção "codigo" carrega o pacote listings e configurações para inserir código
%%%\ttfamily,
\if@codigo
   \RequirePackage{listings}
   \renewcommand{\lstlistingname}{C\'odigo} %%% Traduz a etiqueta da legenda dos códigos incluidos com o ambiente lstlistings
   \lstset{language=[AlLaTeX]TeX,%
     	float=hbp!,%
   	    basicstyle=\footnotesize\fontecodigo,%
   	    keywordstyle=\footnotesize\fontecodigo\color{blue},%
   	    stringstyle=\footnotesize\fontecodigo\color{SeaGreen},%
   	    commentstyle=\itshape\footnotesize\fontecodigo\color{Brown},
   	    keywordstyle =\footnotesize\fontecodigo\color{estilo!80!black}, %
            columns=fixed,%%% Também pode ser: flexible ou fullflexible
   	    tabsize=2,%
   	    extendedchars=true,%
   	    showspaces=false,%
   	    showstringspaces=false,%
   	    breaklines=true,% Configura quebra de linha automática
   	    breakindent=0pt,%
   	    backgroundcolor=\color{estilo!15},%%% Cor do plano de fundo do código.
   	    breakautoindent=true,%
   	    breakatwhitespace=false, % Configura quebra de linha
   	    %title = \lstname, % Exibe o nome do arquivo incluido
   	    escapeinside = {\%*}{*)}, % Permite adicionar comandos LaTeX dentro do seu código.
   	    inputencoding=utf8,
   	    literate=%
   	          {ã}{{\~a}}1
  	          {á}{{\'a}}1
  	          {ç}{{\c{c}}}1
  	          {é}{{\'e}}1
  	          {è}{{\`e}}1
  	          {ê}{{\^e}}1
  	          {í}{{\'i}}1
  	          {ó}{{\'o}}1
  	          {õ}{{\~o}}1
  	          {ú}{{\'u}}1
  	    }
\fi
%%% Opção "palatino". Fonte Palatino com Bera - bonita
\if@palatino
   %\linespread{1.05}\selectfont         
   \RequirePackage[scaled=.88]{beramono} % Bera-Monospace
   \RequirePackage[scaled=.86]{berasans} % Bera Sans-Serif
   \RequirePackage[sc,osf]{mathpazo}     % Palatino com small e números
                                         % pequenos.
\fi
%%% Opção "artemisia". Fonte artemisia com euler
\if@artemisia
   \RequirePackage{gfsartemisia-euler}
\fi
%%% Opção "timesH" = Times + Helvetica + Curier.
\if@timesH
\RequirePackage{mathptmx}
\RequirePackage[scaled=0.92]{helvet}
\RequirePackage{courier}
\fi
%%% Opção ``timesA'' = Times + Helvetica + 
\if@timesA
\RequirePackage{mathptmx} %%% Use o Adobe Times Roman como a fonte de texto 
\RequirePackage{avant}    %%% Use a fonte Avantgarde para títulos.
%%% padrão junto com símbolos matemáticos das fontes Symbol, Chancery e 
%%% Computer Modern
\fi
%%% Opção ``courier'' = carrega o pacote courier que define, na estilo, a
%%% fonte do código
\if@courier
\RequirePackage{courier} %%% Courier nos código.
\fi
%%% Opção "lmoder" = Lmodern + libertine.
\if@lmoder
\RequirePackage{lmodern}
\RequirePackage{libertine}
\fi
%%%
%%%=============================================================================
%%%
%%% Opções para o pacote fncychap 
%%%
\if@sonny
\RequirePackage[Sonny]{fncychap}
\ChNameVar{\Large\sffamily} \ChNumVar{\Huge} \ChTitleVar{\Large\sffamily}
\ChRuleWidth{0.7pt} \ChNameUpperCase
\fi
%%%
\if@lenny
\RequirePackage[Lenny]{fncychap}
\ChNameVar{\fontsize{14}{16}\usefont{OT1}{phv}{m}{n}\selectfont}
\ChNumVar{\fontsize{60}{62}\usefont{OT1}{ptm}{m}{n}\selectfont}
\ChTitleVar{\Huge\bfseries\rmfamily} \ChRuleWidth{1pt}
\fi
%%%
\if@glenn
\RequirePackage[Glenn]{fncychap}
 \ChNameVar{\bfseries\Large\sffamily}\ChNumVar{\Huge} \ChTitleVar{\bfseries\Large\rmfamily}\ChRuleWidth{1pt} 
\fi
%%%
\if@conny
\RequirePackage[Conny]{fncychap}
\ChNameUpperCase \ChTitleUpperCase \ChNameVar{\centering\Huge\rmfamily\bfseries}
\ChNumVar{\Huge} \ChRuleWidth{2pt} \ChTitleVar{\centering\Huge\rmfamily}
\fi
%%%
\if@rejne
\RequirePackage[Rejne]{fncychap}
\ChNameVar{\centering\Huge\rmfamily\bfseries}\ChNumVar{\Huge}
\ChTitleVar{\centering\Huge\rmfamily}\ChNameUpperCase\ChTitleUpperCase
\ChRuleWidth{1pt}
\fi 
%%%
\if@bjornstrup
\RequirePackage[Bjornstrup]{fncychap}
\ChNumVar{\fontsize{76}{80}\usefont{OT1}{pzc}{m}{n}\selectfont}
\ChTitleVar{\centering\Large\sffamily\bfseries}
\fi 
%%%
%%% Altera o posicionamento e a cor da numeração das seções e subseções
%%%
\if@lsec
\renewcommand{\@seccntformat}[1]{\llap{\textcolor{estilo}{\csname 
the#1\endcsname}\hspace{1em}}}                    
\renewcommand{\section}{\@startsection{section}{1}{\z@}
{-4ex \@plus -1ex \@minus -.4ex}
{1ex \@plus.2ex }
{\normalfont\large\sffamily\bfseries}}
\renewcommand{\subsection}{\@startsection {subsection}{2}{\z@}
{-3ex \@plus -0.1ex \@minus -.4ex}
{0.5ex \@plus.2ex }
{\normalfont\sffamily\bfseries}}
\renewcommand{\subsubsection}{\@startsection {subsubsection}{3}{\z@}
{-2ex \@plus -0.1ex \@minus -.2ex}
{.2ex \@plus.2ex }
{\normalfont\small\sffamily\bfseries}}                        
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}
{-2ex \@plus-.2ex \@minus .2ex}
{.1ex}
{\normalfont\small\sffamily\bfseries}}
\fi
%%% 
%%%=============================================================================
%%%=============================================================================
%%%
%%%                   Comandos para o edição do Manual
%%%
%%%=============================================================================
%%%=============================================================================
%%%
\if@manual
%%%
%%% Nomes
%%%
\newcommand{\ttt}[1]{\texttt{#1}}
\newcommand{\estilo}{\ttt{Estilo}}
\newcommand{\estiloc}{\texttt{Estilo.cls}}
%%%
%%% Cores
%%%
\definecolor{comando}{rgb}{0.00,0.62,0.00} %%% Verde
%\definecolor{argumento}{rgb}{0,0,1}        %%% Azul
\colorlet{argumento}{Navy} %%% A cor argumento recebe a definição da cor Navy
%%%
\newcommand{\verde}[1]{\textcolor{comando}{#1}}   %%% 
\newcommand{\azul}[1]{\textcolor{argumento}{#1}}%%% Cor do pacote
\newcommand{\paco}[1]{\textsf{#1}}
\newcommand{\pacote}[1]{\paco{#1}%
	\index{Pacotes@\protect Pacotes!#1@\protect\paco{#1}}%
	\index{#1@\protect\paco{#1}}}
\newcommand{\upaco}[1]{\texttt{\verde{\symbol{'134}usepackage}}%
	\textsf{\azul{\{#1\}}}}
\newcommand{\upacoo}[2]{\texttt{\verde{\symbol{'134}usepackage}}%
	\textsf{\azul{[#1]\{#2\}}}}
\newcommand{\epar}[2]{\textsf{\verde{#1}}$=$\azul{\itshape#2}}
\newcommand{\coma}[1]{\texttt{\textbackslash#1}}
\newcommand{\com}[1]{\noindent\textcolor{comando}{\coma{#1}}}
\newcommand{\op}[1]{{\textcolor{estilo}{\itshape#1}}}  %%% Opção
\newcommand{\opp}[1]{\textcolor{comando!70}{#1}} %%% opção padrão
\newcommand{\comando}[1]{\coma{#1}%
	\index{Comandos!"#1@\protect\coma{"#1}}%
	\index{"#1@\protect\coma{"#1}}}
\newcommand{\cmc}[2]{\noindent\textcolor{comando}{\coma{#1}}$\{$%
	\textcolor{argumento}{#2}$\}$}
\newcommand{\cmco}[3]{\noindent\textcolor{comando}{\coma{#1}}[\op{#2}]$\{$%
	\textcolor{argumento}{#3}$\}$}
\newcommand{\cmcc}[4]{\noindent\textcolor{comando}{\coma{#1}}[%%%
	\op{#2}]$\{$\textcolor{argumento}{#3}%%%
	$\}\{$\textcolor{argumento}{#4}$\}$}
%%%
\RequirePackage[most]{tcolorbox}
\tcbset{colframe=estilo!90!black,colback=estilo!15,fonttitle=\bfseries\sffamily}
%%%
\fi
%%%=============================================================================
%%%=============================================================================
%%%
%%% Comandos para indentificação do trabalho, construção da capa e folha de 
%%% rosto
%%%
%%%=============================================================================
%%%=============================================================================
%%%                                                                         %===
%%%        Definindo comandos de etiquetas para a parte pre-textutal        %===
%%%                                                                         %===
%%%=============================================================================
%%%=============================================================================
%%%
%%% Orientador e Co-orientador
%%%
\gdef\@horientador{Orientador}
\gdef\@morientadora{Orientadora}
\gdef\@hcoorientador{Co-orientador}
\gdef\@mcoorientadora{Co-orientadora}
%%%
%%% Tipo de trabalho
%%%
\gdef\@monografia{Monografia de Gradua\c{c}\~{a}o}
\gdef\@especialista{Monografia de Especializa\c{c}\~{a}o}
\gdef\@mestrado{Disserta\c{c}\~{a}o de Mestrado}
\gdef\@tese{Tese de Doutorado}
%%%
%%% Grau do título a ser obitido
%%%
\def\grauB#1{\gdef\@grauB{#1}}
\def\@grauB{Bacharel}
\def\grauL#1{\gdef\@grauL{#1}}
\def\@grauL{Licenciada}
\def\grauE#1{\gdef\@grauE{#1}}
\def\@grauE{Especialista}
\def\grauM#1{\gdef\@grauM{#1}}
\def\@grauM{Mestre}
\def\grauD#1{\gdef\@grauD{#1}}
\def\@grauD{Doutor}
%%%
%%%========================================================================
%%%========================================================================
%%%                Texto para Capa e Página de rosto                   %===
%%%========================================================================
%%%========================================================================
%%%
%%% Graduação
%%%
\gdef\@textograd{Monografia apresentada à Coor\-de\-na\-ção do
	cur\-so de \@curso\ do \@departamento\ do \@instituto\ da
	\@universidade,\ \emph{Campus}\ \@cidade,
	co\-mo re\-qui\-si\-to par\-ci\-al pa\-ra ob\-ten\-ção do
	tí\-tu\-lo de \textbf{\@grauT\ em \@curso.}}
%%%
\gdef\@textogradrosto{Este exemplar corresponde à re\-da\-ção
	fi\-nal da mo\-no\-gra\-fia nú\-me\-ro \@controle/\ano  in\-ti\-tu\-la\-da
	{\itshape\@title},\ de\-fen\-di\-da por \textbf{\@autor},\ ma\-trí\-cu\-la\ \@matricula\ e\ a\-pro\-va\-da pe\-la Ban\-ca E\-xa\-mi\-na\-do\-ra.}
%%%
%%% Especialização
%%%
\gdef\@textoEsp{Monografia apresentada à Coor\-de\-na\-ção do
	cur\-so de \@curso\ do \@departamento\ do \@instituto,
	u\-ni\-da\-de a\-ca\-dê\-mi\-ca da \@universidade\ em
	\@cidade, co\-mo re\-qui\-si\-to par\-ci\-al pa\-ra ob\-ten\-ção
	do grau de \textbf{Es\-pe\-ci\-a\-lis\-ta em \@curso.}}
%%%
\gdef\@textoEsprosto{Este exemplar correspon\-de à
	re\-da\-ção fi\-nal da mo\-no\-gra\-fia \@title de\-vi\-da\-men\-te
	cor\-ri\-gi\-da e de\-fen\-di\-da por \textbf{\@autor} \@matricula e
	a\-pro\-va\-da pe\-la Ban\-ca Exa\-mi\-na\-do\-ra.}
%%%
%%% Mestrado
%%%
\gdef\@textoposM{Dissertação apresentada ao Pro\-gra\-ma de
	\@programa\ do \@departamento\ do \@instituto\ da \@universidade\
	co\-mo re\-qui\-sito par\-ci\-al pa\-ra ob\-ten\-ção do grau
	de \@grauT\ em \@diploma.}
%%%
\gdef\@textorostomestrado{Este exemplar corres\-pon\-de à
	re\-da\-ção fi\-nal da dis\-ser\-ta\-ção de\-vi\-da\-men\-te
	cor\-ri\-gi\-da e de\-fen\-di\-da por \textbf{\@autor}
	e apro\-va\-da pe\-la Ban\-ca Exa\-mi\-na\-do\-ra.}
%%%
%%% Doutorado
%%%
\gdef\@textoposD{Tese apresentada ao Pro\-gra\-ma de \@programa\
	do \@departamento\ do \@instituto\ da \@universidade\ co\-mo
	re\-qui\-si\-to par\-ci\-al pa\-ra ob\-ten\-ção do grau de \@grauT\
	em \@diploma.}
%%%
\gdef\@textorostodoutorado{Este exemplar corres\-pon\-de à
	re\-da\-ção fi\-nal da te\-se de\-vi\-da\-men\-te cor\-ri\-gi\-da
	e de\-fen\-di\-da por \textbf{\@autor} e apro\-va\-da pe\-la
	Ban\-ca Exa\-mi\-na\-do\-ra.}
%%%
%%%=============================================================================
%%%=============================================================================
%%%                         Prevenindo esquecimentos                        %===
%%%=============================================================================
%%%=============================================================================
%%%
%%% Se esquecer o Orientador(a)
%%%
\gdef\@esquecido{\textbf{Bunito heim?!!?!?! Esqueceu o nome do Orientador(a).}}
%%%
%%% Se esquecer algum elemento
%%%
\gdef\@indefinido{\textcolor{red}{Voc\^e n\~ao definiu, defina!}}
%%%
%%% Se esquecer as plavras chave
%%%
\gdef\@sempalavras{Jovem!!! Voc\^e n\~ao inseriu as palavras-chave, mas voc\^e \'e jovem e forte, vai fazer a fineza de coloc\'a-las aqui, certo?}
%%%
%%%=============================================================================
%%%=============================================================================
%%%                                                                         %===
%%%          Definindo, em português, o nome de vários elementos            %===
%%%                                                                         %===
%%%=============================================================================
%%%=============================================================================
%%%
\gdef\@axiomname{Axioma}
\gdef\@conjecturename{Conjectura}
\gdef\@defname{Definição}
\gdef\@lemmaname{Lema}
\gdef\@theoname{Teorema}
\gdef\@propname{Proposição}
\gdef\@corname{Corolário}
\gdef\@proofname{Prova}
\gdef\@figurename{Figura}
\gdef\@tablename{Tabela}
\gdef\@equationame{Equação}
\gdef\@chaptername{Capítulo}
\gdef\@sectionname{Seção}
\gdef\@appendixname{Apêndice}
\gdef\@pagename{página}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                          Identificação do trabalho                 %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% Nome da Instituição (Em geral Universidade, mas pode ser CEFET,...)
%%%
\def\universidade#1{\gdef\@universidade{#1}}
\def\@universidade{Universidade Federal Rural do Rio de Janeiro}
%%%
%%% Nome do Instituto ou Centro
%%%
\def\instituto#1{\gdef\@instituto{#1}}
\def\@instituto{Instituto Multidisciplinar}
%%%
%%% Nome do Departamento
%%%
\def\departamento#1{\gdef\@departamento{#1}}
\def\@departamento{Departamento de Tecnologias e Linguagens}
%%%
%%% Nome do Curso de graduação ou Especialização
%%%
\def\curso#1{\gdef\@curso{#1}}%%%
\def\@curso{Matemática}
%%%
%%% Nome do Programa de Pos-graduação
%%%
\def\programa#1{\gdef\@programa{#1}}%%%
\def\@programa{\@indefinido}
%%%
%%% Área do título
%%%
\def\diploma#1{\gdef\@diploma{#1}}%%%
\def\@diploma{\@indefinido}
%%%
%%% Cidade da Instituição.
%%%
\def\cidade#1{\gdef\@cidade{#1}}%%%
\def\@cidade{Nova Iguaçu}
%%%
%%% Estado da Instituição
%%%
\def\estado#1{\gdef\@estado{#1}}%%%
\def\@estado{RJ}
%%%
%%% Identficação do Autor
%%%
\def\autor#1{\gdef\@autor{#1}}
\def\@autor{\@indefinido}
%%%
%%% Identficação do Autor - Matrícula
%%%
\def\matricula#1{\gdef\@matricula{$#1$}}
\def\@matricula{\@indefinido}
%%%
%%% Identficação do Autor - Matrícula
%%%
\def\controle#1{\gdef\@controle{#1}}
\def\@controle{\@indefinido}
%%%
%%%
%%% Título do Trabalho - Esse comando já existe, mas o redefini.
%%%
\def\title#1{\Huge\gdef\@title{#1}}
\def\@title{\@indefinido}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                        Orientador(a) e Banca                       %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%    Se for Doutor
%%%
\let\@mostraorientador=0
\let\@mostraorientadorteste=0
\let\@mostraorientadormp=0
\def\orientador{\@ifnextchar [%%%
	{\@Dorientador}{\@Dorientador[\@empty]}}
\def\@Dorientador[#1]#2{%%%
	\ifx#1\@empty
	\let\@mostraorientador=1
	\let\@mostraorientadorteste=1
	\gdef\@orientadortitle{Prof. Dr.}
	\else
	\let\@mostraorientador=2      %%% Só para controle
	\let\@mostraorientadormp=1    %%% Só para fazer a impressão correta
	\let\@mostraorientadorteste=1 %%% Só para controle
	\gdef\@orientadortitle{Profa. Dra.}
	\fi
	\gdef\@orientador{#2}}
\def\@orientador{\@indefinido}
%%%
%%%    Se for Mestre
%%%
\let\@mostraorientadorm=0
\let\@mostraorientadormteste=0
\def\orientadorm{\@ifnextchar [%%%
	{\@Morientadorm}%%%
	{\@Morientadorm[\@empty]}}
\def\@Morientadorm[#1]#2{%%%
	\ifx#1\@empty
	\let\@mostraorientadorm=1
	\let\@mostraorientadormteste=1
	\gdef\@orientadormtitle{Prof. Me.}
	\else
	\let\@mostraorientadorm=2      %%% Só para controle
	\let\@mostraorientadormteste=1 %%% Só para controle
	\gdef\@orientadormtitle{Profa. Me.}
	\fi
	\gdef\@orientadorm{#2}}
\def\@orientadorm{\@indefinido}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                            Co-Orientador(a)                        %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%    Se for Doutor
%%%
\let\@mostracoorientador=0
\let\@mostracoorientadorP=0 %%%
\def\coorientador{\@ifnextchar [%%%
	{\@Dcoorientador}{\@Dcoorientador[\@empty]}}
\def\@Dcoorientador[#1]#2{%%%
	\ifx#1\@empty
	\let\@mostracoorientador=1
	\let\@mostracoorientadorP=1
	\gdef\@coorientadortitle{Prof. Dr.}
	\else
	\let\@mostracoorientadorP=1
	\let\@mostracoorientador=2
	\gdef\@coorientadortitle{Profa. Dra.}
	\fi
	\gdef\@coorientador{#2}}
%%%
%%%    Se for Mestre
%%%
\let\@mostracoorientadorm=0
\let\@mostracoorientadormteste=0
\def\coorientadorm{\@ifnextchar [%%%
	{\@Mcoorientadorm}{\@Mcoorientadorm[\@empty]}}
\def\@Mcoorientadorm[#1]#2{%%%
	\ifx#1\@empty
	\let\@mostracoorientadorm=1
	\let\@mostracoorientadormteste=1
	\gdef\@coorientadormtitle{Prof. Me.}
	\else
	\let\@mostracoorientadormteste=1
	\let\@mostracoorientadorm=2
	\gdef\@coorientadormtitle{Profa. Me.}
	\fi
	\gdef\@coorientadorm{#2}}
%%%========================================================================
%%%       Fim das definições para Orientador(a) e Co-Orientador(a)     %===
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%               Definindo o tipo de texto de saída                   %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% Definindo o tipo de texto de saída, conforme informações prestadas
%%%
\def\@tipodt{%
	\if\@escolha0
	   \@monografia
	   \else
	      \if\@escolha1
	        \@monografia
	        \else
	           \if\@escolha2
	              \@especialista
	              \else
	                 \if\@escolha3
	                    \@mestrado
	                    \else
	                        \if\@escolha4
                            	\@tese
	                        \fi
                     \fi
	          \fi
	     \fi
    \fi
}
%%%
%%% Ajustando o grau do título no texto de saída
%%%
\def\grauT#1{\gdef\@grauT{#1}}%
   \def\@grauT{\hspace{-0.2em}%%%
	  \if\@escolha0
	     \@grauL
	  \else
	     \if\@escolha1
	        \@grauB
	     \else
	        \if\@escolha2
	           \@grauE
	        \else
     	       \if\@escolha3
	              \@grauM
	           \else
	              \if\@escolha4
	                 \@grauD
	              \fi
	           \fi
	        \fi
	     \fi
   \fi
}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                   Definições relativas a datas                     %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\gdef\data{\@cidade, \today}     %%% Imprime a data com endereço
\def\grandedia#1{\gdef\@grandedia{#1}}
\def\@grandedia{\data}           %%% Data da defesa
\def\dia{\number\day\space}      %%% Imprime o dia da compilação - número
\def\mes{\the\month\space}       %%% Imprime o mês da compilação - número
\def\mesn{\ifcase\month\or       %%% Imprime o mês da compilação - nome
	Janeiro\or Fevereiro\or Março\or Abril\or Maio\or Junho\or
	Julho\or Agosto\or Setembro\or Outubro\or Novembro\or
	Dezembro\fi\space}
\def\ano{\number\year\space}     %%% Imprime o ano da compilação - número
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%% Os comandos definidos até aqui prestam-se a coletar informações    %===
%%% para compor os vários elementos do trabalho.                       %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                    A definição do comando \capa                    %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\tipo}{%%%
	\begin{minipage}{\textwidth}
		\begin{center}
			\if\@escolha0
		    	\@monografia
		      	\else
			       \if\@escolha1
			          \@monografia
			          \else
			              \if\@escolha2
			                 \@especialista
			                 \else
			                     \if\@escolha3
			                         \@mestrado
			                         \else
			                             \@tese
			                     \fi
			              \fi
			       \fi
			\fi
		\end{center}
	\end{minipage}\\
	\if\@escolha0\
	    Licenciatura em \@curso
	    \else
	       \if\@escolha1
	          Bacharelado em \@curso
	          \else
	             \if\@escolha2
	                 Especialização em \@curso
	                 \else
	                    \@programa
	             \fi
	       \fi
	\fi
}%%% Fim da definição do comando tipo
\def\fontecapa{\scshape\large} %%% Fonte da capa
\def\fontecapatitle{\normalfont\Huge\bfseries\sffamily}
\def\capa{\if@openright\cleardoublepage\else\clearpage\fi%%%
	\thispagestyle{empty}
	\vspace*{-4cm}
	\begin{singlespace}
		\begin{center}
			%%%
			%%% Logomarca da Instituição, se existir!!!
			%%%
			\begin{center}
				\IfFileExists{logotipo.tex}{\def\clogotipo{logotipo.tex}
					\input\clogotipo}{}
			\end{center}
			\fontecapa\@universidade\\
			\@instituto\\
			\@departamento
			\vskip 35mm
			\tipo %%% Definido acima, ajusta identificação do trabalho
			\vskip 35mm
			{\fontecapatitle \@title}
			\vskip\baselineskip
			{\normalfont\@autor}
			\vfill
			\@cidade-\@estado\\
			\ano
		\end{center}
	\end{singlespace}\newpage
}
%%%
%%%========================================================================
%%%     Fim da definição do comando \capa, o qual cria a Capa          %===
%%%========================================================================
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%               Página de Apresentação - Folha de rosto              %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\def\segundo#1{\gdef\@segundo{#1}}
\def\@segundo{Segundo Membro da Banca}
%%%
\def\terceiro#1{\gdef\@terceiro{#1}}
\def\@terceiro{Terceiro Membro da Banca}
%%%
\def\quarto#1{\gdef\@quarto{#1}}
\def\@quarto{Quarto Membro da Banca}
%%%
\def\quinto#1{\gdef\@quinto{#1}}
\def\@quinto{Quinto Membro da Banca}
%%%
%%%
\newlength\Trosto %%% Largura do texto na página de rosto.
\setlength\Trosto{0.65\textwidth}
%%%
\newlength\Lrosto %%% Comprimento da linha sobre o nome do orientador/
%%%                   coorientador na página de rosto.
\setlength\Lrosto{\Trosto}
\newlength\Erosto %%% Espessura da linha sobre o nome do orientador e
%%%                   coorientador na página de rosto.
\setlength\Erosto{0.7pt}
\def\rosto{\if@openright\cleardoublepage\else\clearpage\fi%%%
	\thispagestyle{empty}
	\begin{singlespace}
		\begin{center}
			{\fontecapatitle\@title}
			\vskip 30mm
			\begin{flushright}
				\begin{minipage}{\Trosto}
					\if\@escolha0
					   \normalfont\@textograd
					   \else
				          \if\@escolha1
				       	     \normalfont\@textograd
					         \else
					            \if\@escolha2
					               \normalfont\@textoEsp
					               \else
					                  \if\@escolha3
					                      \normalfont\@textoposM
					                      \else
					                      \normalfont\@textoposD
					                  \fi
					             \fi
					       \fi
					\fi
				\end{minipage}
			\end{flushright}
			\vskip 1cm
			\begin{flushright}
				\begin{minipage}{\Trosto}
					\if\@escolha0 \normalfont\@textogradrosto
					   \else
					     \if\@escolha1
					        \normalfont\@textogradrosto
					        \else
					           \if\@escolha2
					               \normalfont\@textoEsprosto
					               \else
					                   \if\@escolha3
					                      \normalfont\@textorostomestrado
					                      \else
					                         \normalfont\@textorostodoutorado
					                   \fi
					           \fi
					      \fi
					\fi
				\end{minipage}
				\vskip 0.5cm
				\@grandedia.  %%% Data da defesa
				\vskip 1cm
				%%%
				%%%=============================================================
				%%% Ajustando a designação do Orientador(a) Doutor(a) 
				%%% Prontinho   
				%%%=============================================================
				\begin{minipage}{\Trosto}
					\hspace{-4.5cm}{\scshape Banca Examinadora:}\vskip 0.5cm
					\rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome do Orientador					
					\begin{center}
						\if\@mostraorientador1
					  	   \vspace{-0.5cm}
						   \@orientadortitle\ \@orientador\\
						   \vspace{-0.1cm} \@horientador
						   \else
						      \if\@mostraorientador2
						         \vspace{-0.5cm}
						         \@orientadortitle\ \@orientador\\
						         \vspace{-0.1cm} \@morientadora
						         \else
						       \fi   
						\fi
						\if\@mostraorientadorm1
						    \vspace{-0.5cm}
						    \@orientadormtitle\ \@orientadorm\\
						    \vspace{-0.1cm} \@horientador
						    \else
						        \if\@mostraorientadorm2
						           \vspace{-0.5cm}
						           \@orientadormtitle\ \@orientadorm\\
						           \vspace{-0.1cm} \@morientadora
						           \else
						        \fi
					    \fi
					\end{center}
					%%%
					%%%=================================
					%%%   Prevenindo esquecimentos   %%%
					%%%=================================
					%%%
					\if\@mostraorientador0
					    \if\@mostraorientadormteste0 \@esquecido 
					    \fi
					\fi
					\vskip\baselineskip
					%%%
					%%%=========================================================
					%%%        Co-orientador(a) Doutor(a) - Prontinho       %===
					%%%=========================================================
					%%%
					\if\@mostracoorientadorP1
					\rule{\Lrosto}{\Erosto} %%% Linha sobre o nome do Co-orientador
					\begin{center}
						\vspace{-0.5cm}
						\if\@mostracoorientador1
						\@coorientadortitle\ \@coorientador\\
						\vspace{-0.1cm} \@hcoorientador
						\else
						\@coorientadortitle\ \@coorientador\\
						\vspace{-0.1cm} \@mcoorientadora
						\fi
					\end{center}
					\fi
					%%%
					%%%=========================================================
					%%%          Co-orientador(a) Mestre-Prontinho           ===
					%%%=========================================================
					%%%
					\if\@mostracoorientadormteste1
					\rule{\Lrosto}{\Erosto}
					\begin{center}
						\vspace{-0.5cm}
						\if\@mostracoorientadorm1
						\@coorientadormtitle\ \@coorientadorm\\
						\vspace{-0.1cm} \@hcoorientador
						\else
						\@coorientadormtitle\ \@coorientadorm\\
						\vspace{-0.1cm} \@mcoorientadora
						\fi
					\end{center}
					\fi
					%%% Segundo componente da banca
					\vskip 0.35cm
					\rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
					\begin{center}\vspace{-0.5cm}\@segundo\end{center}
					\vskip 0.8cm
					%%% Terceiro componente da banca
					\rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
					\begin{center}\vspace{-0.5cm}\@terceiro\end{center}
                    \if\@escolha3  %%% Mestre
                    \vskip 0.8cm
                    %%% Quarto componente da banca
                    \rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
                    \begin{center}\vspace{-0.5cm}\@quarto\end{center}
                    \vskip 0.8cm
                    %%% Quinto componente da banca
                    \rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
                    \begin{center}\vspace{-0.5cm}\@quinto\end{center}
                    \else\if\@escolha4  %%% Doutor
                    \vskip 0.8cm
                    %%% Quarto componente da banca
                    \rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
                    \begin{center}\vspace{-0.5cm}\@quarto\end{center}
                    \vskip 0.8cm
                    %%% Quinto componente da banca
                    \rule{\Lrosto}{\Erosto}  %%% Linha sobre o nome
                    \begin{center}\vspace{-0.5cm}\@quinto\end{center}
                    \fi\fi 
				\end{minipage}
			\end{flushright}
			%%%
			%%%=================================================================
			%%%       Fim da folia com Orientador(a) e Co-Orientador(a)     %===
			%%%=================================================================
			%%%
			\vfill
			\@cidade-\@estado\\
			\ano
		\end{center}
	\end{singlespace}
	\newpage}
%%%
%%%=============================================================================
%%% Fim da definição do comando \rosto, o qual cria a página de rosto
%%%============================================================================ 
%%%=============================================================================
%%%
%%% Aqui termina a programação das opções da classe Estilo
%%%
%%%=============================================================================
%%%
%%%=============================================================================
%%%
%%% Comandos utilitários e que não dependem de opção de classe
%%%
%%%-----------------------------------------------------------------------------
%%% Conjuntos numéricos
\newcommand{\C}{\ensuremath{\mathbb{C}}} %%% Conjunto dos números Complexos
\newcommand{\I}{\ensuremath{\mathbb{I}}} %%% Conjunto dos números Irracionais
\newcommand{\N}{\ensuremath{\mathbb{N}}} %%% Conjunto dos números Naturais
\newcommand{\Q}{\ensuremath{\mathbb{Q}}} %%% Conjunto dos números Racionais
\newcommand{\R}{\ensuremath{\mathbb{R}}} %%% Conjunto dos números Reais
\newcommand{\rn}[1][n]{\ensuremath{\mathbb{R}^{#1}}} %%% O R^n, n>1
\newcommand{\Z}{\ensuremath{\mathbb{Z}}} %%% Conjunto dos números Inteiros
%%%-----------------------------------------------------------------------------
%%%
%%% Os comandos \e, \ou, \se e \grau são praticidades para inserir 'e', 'ou', %%% 'se' e a notação de grau dentro de ambientes matemáticos, exceto o \grau.
%%%
\newcommand{\e}{\hspace{1.25em}\hbox{e}\hspace{1.25em}}   
\newcommand{\ou}{\hspace{1.25em}\hbox{ou}\hspace{1.25em}}
\newcommand{\se}{\hspace{1.25em}\hbox{se}\hspace{1.25em}}
\newcommand{\grau}{{\ensuremath{{}^{\mathrm{o}}}}}
%%%-----------------------------------------------------------------------------
%%%
%%% Comandos para manipulação básica de trigonometria. 
%%%
%%% Não existe o comando \sen, existe \sin, por isso esses foram definidos.
\newcommand{\sen}[2][]{\ensuremath{\mbox{sen}^{_{#1}}}\ensuremath{#2}}
\newcommand{\Sen}[2][]{\ensuremath{\mbox{sen}^{_{#1}}}
	\ensuremath{\hspace{-0.4em}\left(#2\right)}}
%%% Para a função cos(x)
\newcommand{\Cos}[2][]{\ensuremath{\mbox{cos}^{_{#1}}}
	\ensuremath{\hspace{-0.4em}\left(#2\right)}}
%%% Para a função tg(x)
\newcommand{\tg}[2][]{\ensuremath{\mbox{tg}^{_{#1}}}
	\ensuremath{\hspace{-0.4em}\left(#2\right)}}
%%% Para a função cotg(x)
\newcommand{\cotg}[2][]{\ensuremath{\mbox{cotg}^{_{#1}}}
	\ensuremath{\hspace{-0.4em}\left(#2\right)}}
%%%-----------------------------------------------------------------------------
%%%
%%% Comandos para manipulação básica da Álgebra Linear
%%%
%%% Vetor com n-coordenadas
\newcommand{\vetor}[2][n]{\ensuremath{\vec{#2} = (#2_1,\dots,#2_{#1})}}
\newcommand{\veto}[2][n]{\ensuremath{#2 = (#2_1,\dots,#2_{#1})}}
\newcommand{\base}[3][n]{\ensuremath{\mbox{\scshape #2} = \{#3_1,\dots,#3_{#1}\}}}
\newcommand{\inter}[1]{\ensuremath{\langle#1\rangle}}
\newcommand{\nor}[2][]{\ensuremath{\parallel#2\parallel_{#1}}}
%%%-----------------------------------------------------------------------------
%%%
%%% Comando de uso diverso 
%%%
\newcommand{\soma}[2][n]{\ensuremath{#2_1+\dots+#2_{#1}}}
\newcommand{\pot}[2][n]{\ensuremath{#2^1+\dots+#2^{#1}}}
%%%
%%% Comando para a composição de funções
\newcommand{\comp}[2]{\ensuremath{(\mathrm{#1}\hspace{-0.10cm}%%%
		\circ\hspace{-0.07cm}\mathrm{#2})}}
%%% Põe a unidade das coisas no lugar certo
\newcommand{\unidade}[2]{\ensuremath{#1\,\mathrm{#2}}}
%%%
\newcommand{\mmc}[1]{\mbox{mmc}\ensuremath{\left(#1\right)}}  %%% Para o MMC
\newcommand{\mdc}[1]{\mbox{mdc}\ensuremath{\left(#1\right)}}  %%% Para o MDC
%%%=============================================================================
%%%
%%% Meu ambiente para lista
%%%
\newcounter{contador}
\newenvironment{Lista}
{%
	\begin{list}{\itshape(\arabic{contador})~}
		{\usecounter{contador}%%
			\setlength{\topsep}{-0.3ex}
			\setlength{\labelwidth}{0.5cm}
			\setlength{\leftmargin}{1.4cm}
			\setlength{\labelsep}{1ex}
			\setlength{\rightmargin}{0.5in}
			\setlength{\itemsep}{0ex}
			\setlength{\parsep}{0ex}
			\setlength{\listparindent}{0.5in}}
	}
	{
	\end{list}
}
\newenvironment{Exercicio}
{%
	\setlength{\topsep}{-0.3ex}
	\setlength{\labelwidth}{0.5cm}
	\setlength{\leftmargin}{1.45cm}
	\setlength{\labelsep}{0ex}
	\setlength{\rightmargin}{0.5in}
	\setlength{\itemsep}{1ex}
	\setlength{\parsep}{1ex}
	\setlength{\listparindent}{0.5in}
	\renewcommand{\theenumi}{\arabic{enumi}}
	\renewcommand{\theenumii}{\alph{enumii}}
	\renewcommand{\labelenumi}{{\hspace{2cm}\bfseries\theenumi.}\,\,}
	\renewcommand{\labelenumii}{\textbf{(\theenumii)}}
	\begin{enumerate}{}
	}
	{
	\end{enumerate}
}
%%%=============================================================================
%%%
%%% Nome da classe estilo
%%%
\def\Estilo{{\textrm{E}\kern-.15em{\scshape \lower.5ex\hbox{S}\kern-.2em%
	T\kern-.025em ilo}}\spacefactor1000}
%%%=============================================================================
%%%
%%% Ambientes resumo e resumoE, o código de ambos foi copiado e adaptado do
%%% ambiente abstrat da classe scrreprt, tirei as condicionais e deixei direto %%% com o titlepage, sem considerar distinção da formatação de texto em mais de %%% uma coluna.
\newenvironment{resumo}{
	\thispagestyle{empty}
	\titlepage\null\vfil
	\@beginparpenalty\@lowpenalty
	\begin{center}
		\normalfont\sectfont\Large\nobreak Resumo
		\@endparpenalty\@M
	\end{center}
}{
	\par\vfil\null\endtitlepage
}
%%%-----------------------------------------------------------------------------
\def\palavras#1{\vskip 3mm \noindent{\bfseries\sffamily Palavras-chave:\,}#1}
%%%-----------------------------------------------------------------------------
\newenvironment{resumoE}{%	
	\thispagestyle{empty}
	\titlepage\null\vfil
	\@beginparpenalty\@lowpenalty
	\begin{center}
		\normalfont\sectfont\Large\nobreak Abstract
		\@endparpenalty\@M
	\end{center}
}{
\par\vfil\null\endtitlepage
}
%%%-----------------------------------------------------------------------------
\def\palavrasE#1{\vskip 3mm \noindent{\bfseries\sffamily Key-words:\,}#1}
%%%=============================================================================
%%%
%%% Fontes para uso local 
%%%
%%% Fonte artemisia
\newcommand{\artemisia}{\usefont{T1}{artemisia}{m}{n}} %%% Fonte Artemisia para %%% uso local sem depender de pacote. Dessa forma aceita acentuação
%%%-----------------------------------------------------------------------------
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                             Dedicatória                            %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\font\caligrafica=callig15.mf  scaled 3000 %%% Fonte caligráfica
%%%
\newcommand{\Esimples}{\singlespacing}
\newcommand{\dedi}{\Huge\caligrafica Dedicat\'oria}
\def\dedico{\Esimples\itshape%%%
	\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{empty}
	%%%~\\ %%% gera Underfull hbox (badness 10000) in paragraph
	\vfill
	\begin{center}
		{\dedi}
	\end{center}
	\vskip 7mm
	\begin{flushright}
		\begin{minipage}{100mm}}
		\def\enddedico{\normalfont
		\end{minipage}
	\end{flushright}\newpage
}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                           Agradecimentos                           %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\agrada}{\Huge\caligrafica Agradecimentos}
\def\agradece{\Esimples%%%
	\if@openright\cleardoublepage\else\clearpage\fi
	\thispagestyle{empty}
	\begin{center}
		{\agrada}
		\vskip 13mm
\end{center}}
\def\endagradece{\normalfont}
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%                               Epígrafe                             %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
\newcommand{\epigrafe}[2]{%%%
	{\footnotesize\thispagestyle{empty}%%%
		\begin{flushright}%%%
			\begin{minipage}{0.7\textwidth}%%%
				#1
			\end{minipage}			
			\textit{#2}%%%
\end{flushright}}}
%%%========================================================================

%%%=============================================================================
%%%=============================================================================
%%%                                                                         %===
%%%                   Definições relativas a datas                          %===
%%%                                                                         %===
%%%=============================================================================
%%%=============================================================================
%%%
%%%
%%% Cidade da Instituição.
%%%
\def\cidade#1{\gdef\@cidade{#1}}%%%
\def\@cidade{Nova Iguaçu}
%%%-----------------------------------------------------------------------------
\gdef\data{\@cidade, \today}     %%% Imprime a data com endereço
\def\grandedia#1{\gdef\@grandedia{#1}}
\def\@grandedia{\data}           %%% Data da defesa
\def\dia{\number\day\space}      %%% Imprime o dia da compilação - número
\def\mes{\the\month\space}       %%% Imprime o mês da compilação - número
\def\mesn{\ifcase\month\or       %%% Imprime o mês da compilação - nome
	Janeiro\or Fevereiro\or Março\or Abril\or Maio\or Junho\or
	Julho\or Agosto\or Setembro\or Outubro\or Novembro\or
	Dezembro\fi\space}
\def\ano{\number\year\space}     %%% Imprime o ano da compilação - número
%%%
%%%========================================================================
%%%========================================================================
%%%                                                                    %===
%%%               Ambiente citei para citações, obedece a ABNT         %===
%%%                                                                    %===
%%%========================================================================
%%%========================================================================
%%%
%%% O ajuste do espaço entre linhas para espaço simples  é efeito com  %===
%%% o ambiente singlespace do pacote setspace.                         %===
%%%
\newenvironment{citei}%%%
{\begin{singlespace}\small%%%
		\begin{list}{}{%%%
				\setlength{\listparindent}{0cm}%%%
				\setlength{\itemindent}{\listparindent}%%%
				\setlength{\rightmargin}{0cm}%%%
				\setlength{\leftmargin}{4cm}%%%
				\setlength{\parsep}{0pt}}\item\relax}%%%
		{\end{list}\end{singlespace}}
%%%
%%% Ajutes finos e gerais
%%%
\newcommand{\negri}{\bfseries\sffamily}
\renewcommand{\floatpagefraction}{0.75}% Standard = 0.5
\renewcommand{\textfraction}{0.15}% Standard = 0.2
%% layout of text, figures, etc.
\renewcommand{\topfraction}{0.8}% Standard = 0.7
\setcounter{topnumber}{3} % vorher: 2
\setcounter{bottomnumber}{1} % vorher: 1
\setcounter{totalnumber}{5} % vorher: 3
%% optimized laxyout for columns
\renewcommand{\dbltopfraction}{.8}% Standard = 0.7
\renewcommand{\dblfloatpagefraction}{.6}% Standard = 0.5
%% penalty values for line and page breaks
\tolerance 1414
\hbadness 1414
\emergencystretch 1.5em
\hfuzz 0.3pt
\widowpenalty = 2500
\displaywidowpenalty = 2500
\vfuzz \hfuzz
\raggedbottom
%%%
%%%
%%% Indenta o primeiro parágrafo - estilo brasileiro
%%%
\let\@afterindentfalse\@afterindenttrue\@afterindenttrue
%%%
\setlength{\parindent}{1.25cm} %%% Ajusta a indentação para o valor 1,25cm
%%%
\endinput
%%%
%%% Fim do arquivo `Estilo.cls'.
%%%




