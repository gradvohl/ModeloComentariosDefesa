\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{defesa}[2019/01/03 Oficio padrao FT, gradvohl@ft.unicamp.br]
\typeout{tese-FT}

\LoadClass[12pt,a4paper]{article}

\RequirePackage{libertine}
\RequirePackage{fontawesome}
\RequirePackage{xspace}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{hyperref}
\hypersetup{
pdftitle={Comentários e sugestões de correção do texto},
pdfauthor={Prof. André Leon S. Gradvohl, Dr.}
}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[portuguese]{babel}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{arydshln}
\RequirePackage{geometry}
\RequirePackage{lastpage}
\geometry{a4paper,top=30mm,bottom=20mm,left=30mm,right=20mm}
\RequirePackage{fancyhdr}
\pagestyle{fancy}


\let\@autor\relax
\def\autor#1{\gdef\@autor{#1}}
\author{\@autor}

\let\@autora\relax
\def\autora#1{\gdef\@autora{#1}}

\let\@titulo\relax
\def\titulo#1{\gdef\@titulo{#1}}

\let\@instituicao\relax
\def\instituicao#1{\gdef\@instituicao{#1}}

\let\@faculdade\relax
\def\faculdade#1{\gdef\@faculdade{#1}}

\let\@data\relax
\def\data#1{\gdef\@data{#1}}

\def\grau#1{\gdef\@grau{#1}}

\gdef\bsi{
%added
  \gdef\@textoaviso{\relax}
  \if\@autora\relax
  \gdef\@degnamept{Bacharel em Sistemas de Informação}
  \else
  \gdef\@degnamept{Bacharela em Sistemas de Informação}
  \fi
  \gdef\@monopt{Trabalho de Conclusão de Curso}
  \gdef\@artigo{o}
}

\gdef\tads{
%added
  \gdef\@textoaviso{\relax}
  \if\@autora\relax
  \gdef\@degnamept{Tecnólogo em Análise e Desenvolvimento de Sistemas}
  \else
  \gdef\@degnamept{Tecnóloga em Análise e Desenvolvimento de Sistemas}
  \fi
  \gdef\@monopt{Trabalho de Conclusão de Curso}
  \gdef\@artigo{o}
}
%%%%
\gdef\qualificacaoMestrado{
%added 
  \gdef\@textoaviso{\clearpage}
  \if\@autora\relax
  \gdef\@degnamept{Mestre em Tecnologia}
  \else
  \gdef\@degnamept{Mestra em Tecnologia}
  \fi
  \gdef\@monopt{Monografia de qualificação}
  \gdef\@artigo{a}
}
%%%%
\gdef\qualificacaoDoutorado{
%added 
  \gdef\@textoaviso{\clearpage}
  \if\@autora\relax
  \gdef\@degnamept{Doutor em Tecnologia}
  \else
  \gdef\@degnamept{Doutora em Tecnologia}
  \fi
  \gdef\@monopt{Monografia de qualificação}
  \gdef\@artigo{a}
}
\gdef\mestrado{
%added 
  \gdef\@textoaviso{\clearpage \cathpage}
  \if\@autora\relax
  \gdef\@degnamept{Mestre em Tecnologia}
  \else
  \gdef\@degnamept{Mestra em Tecnologia}
  \fi
  \gdef\@monopt{Dissertação}
  \gdef\@artigo{a}
}
%%%%
\gdef\doutorado{
%added 
  \gdef\@textoaviso{\clearpage \cathpage}
  \if\@autora\relax
  \gdef\@degnamept{Doutor em Tecnologia}
  \else
  \gdef\@degnamept{Doutora em Tecnologia}
  \fi
  \gdef\@monopt{Tese}
  \gdef\@artigo{a}
}

\def\paginasiniciais{
\noindent 
\begin{center}
    {\Large \sc Defesa d\@artigo\xspace \@monopt\xspace para a obtenção do título de \@degnamept\xspace  
    \ifx\@faculdade\relax %
    \else
      {\xspace da \@faculdade\xspace}
    \fi 
    da \@instituicao}
    
    \vspace{.3cm}
    
    Prof. André Leon S. Gradvohl, Dr.
    
    \href{mailto:gradvohl@ft.unicamp.br}{gradvohl@ft.unicamp.br}
\end{center}

\noindent \textbf{Título d\@artigo\xspace \@monopt:} {\sc \@titulo}

\noindent
\if\@autora\relax
  \textbf{Candidato:} \xspace {\sc \@autor}
\else
  \textbf{Candidata:} \xspace {\sc \@autora}
\fi 



\noindent \textbf{Data da apresentação:} \@data
}

\newcommand{\paragrafo}[1]{#1\textsuperscript{o}}
\fancyhf{}
\rfoot{\footnotesize Comentários d\@artigo\xspace \@monopt\xspace. Pág. \thepage/\pageref{LastPage}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

