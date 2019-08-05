% ██╗██╗██████╗      ████████╗██╗  ██╗███████╗███████╗██╗███████╗
% ██║██║██╔══██╗     ╚══██╔══╝██║  ██║██╔════╝██╔════╝██║██╔════╝
% ██║██║██████╔╝        ██║   ███████║█████╗  ███████╗██║███████╗
% ██║██║██╔══██╗        ██║   ██╔══██║██╔══╝  ╚════██║██║╚════██║
% ██║██║██████╔╝███████╗██║   ██║  ██║███████╗███████║██║███████║
% ╚═╝╚═╝╚═════╝ ╚══════╝╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚══════╝

\ProvidesClass{iib_thesis}[2018/12/19 IIB thesis template]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\DeclareOption{english}{\PassOptionsToPackage{english}{babel}}
\DeclareOption{ngerman}{\PassOptionsToPackage{english,main=ngerman}{babel}}
\ExecuteOptions{english}
\ProcessOptions \relax
\LoadClass[abstract,a4paper,headsepline,12pt]{scrartcl}

%% predefined packages
% internationalisation
\RequirePackage{babel}
% encoding
\RequirePackage[utf8]{inputenc}             % correct representation of Umlauts
\RequirePackage[T1]{fontenc}                % switch to a font including special european characters
% layout
\RequirePackage{scrlayer-scrpage}           % format page layout



\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{hyperref}

% navigate in document
\RequirePackage{hyperref}                   % set references to sections in the document
% handle urls
\RequirePackage{url}                        % handle urls
% math
\RequirePackage{amsmath}                    % math library
\RequirePackage{amsfonts}                   % math fonts
% images/figures
\RequirePackage{graphicx}                   % handle figures
\graphicspath{{images/}}
\RequirePackage{subcaption}                 % enable subfigures
\captionsetup{subrefformat=parens}
% tables
\RequirePackage{tabularx}                   % handle tables
% listings
\RequirePackage{listings}                   % listings for code
% bibliography
\RequirePackage[square, numbers]{natbib}    % advanced citing commands
%\bibliographystyle{abbrvnat}            % abbreviated author names
\bibliographystyle{my_abbrvnat}  

%% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %%

%% title information
\newtoks\degree
\newtoks\studyprogram
\newtoks\matno
\newtoks\firstadviser
\newtoks\secondadviser
\newtoks\myabstract

%% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %%

%% layout settings
%% format page layout
\pagestyle{scrheadings}                 % display page headers on all pages
\automark[section]{section}             % set header marks to sections on left and right pages
\renewcommand*{\sectionmarkformat}{}    % remove section number in header
\chead{}                                % empty center header
\ohead{\headmark}                       % headmark on outer header
\cfoot{}                                % empty center footer
\ofoot{\pagemark}                       % pagemark on outer footer

%% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %%

\AtBeginDocument{%
  % titlepage
  \pagestyle{empty}
  \pagenumbering{alph}

  \titlepage

  \cleardoublepage

  % abstract
  \begin{otherlanguage}{english}
   \begin{abstract}
     \the\myabstract
   \end{abstract}
  \end{otherlanguage}

  \cleardoublepage

  \statement

  \cleardoublepage

  % table of contents
  \pagestyle{headings}
  \pagenumbering{Roman}
  \setcounter{tocdepth}{2}
  \tableofcontents

  % list of figures
  \@ifclasswith{iib_thesis}{listoffigures}{
  \clearpage
  \listoffigures
  }{}

  % list of tables
  \@ifclasswith{iib_thesis}{listoftables}{
  \clearpage
  \listoftables
  }{}

  % list of listings
  \@ifclasswith{iib_thesis}{listoflistings}{
  \clearpage
  \lstlistoflistings
  }{}

  \cleardoublepage

  % content
  \pagenumbering{arabic}
}

%% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %%

\AtEndDocument{%
  \cleardoublepage
  \bibliography{my_bibliography}
}

%% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %%

\newcommand{\statement}{%
  \centerline{\large{\textbf{Erklärung}}}

  \bigskip

  Ich erkläre, dass das Thema dieser Arbeit nicht identisch ist mit dem Thema einer von mir bereits für eine andere Prüfung eingereichte Arbeit.
  \\
  \\
  Ich erkläre weiterhin, dass ich die Arbeit nicht bereits an einer anderen Hochschule zur Erlangung eines akademischen Grades eingereicht habe.
  \\
  \\
  Ich versichere, dass ich die Arbeit selbstständig verfasst und keine anderen als die angegebenen Quellen benutzt habe. Die Stellen der Arbeit, die anderen Werken dem Wortlaut oder dem Sinn nach entnommen sind, habe ich unter Angabe der Quellen der Entlehnung kenntlich gemacht. Dies gilt sinngemäß auch für gelieferte Zeichnungen, Skizzen, bildliche Darstellungen und dergleichen.

  \vspace*{2cm}
  \centerline{\large{\textbf{Statement}}}

  \bigskip

  I hereby declare that except where the specific reference is make to the work of others, the contents of this thesis are original and have not been submitted in whole or in part for consideration
  for any other degree or qualification in this, or any other university.
  \\
  \\
  This thesis is my own work and contains nothing which is the outcome of work done in collaboration with others, except as specified in the text.\\

  \vspace*{3cm}

  \begin{center}
  	\begin{tabular}{lp{2em}l}
  		\hspace{6cm}   && \hspace{6cm} \\\cline{1-1}\cline{3-3}
  			\iflanguage{english}
  				{Date && Author}
  				{Datum && Unterschrift}
  	\end{tabular}
  \end{center}
}

%% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %% %%

%% title page layout
\renewcommand{\titlepage}{%
  \makeatletter
  \begin{center}
  	{\LARGE Ruhr-Universität Bochum}\\
  	\vspace{3em}
  	\iflanguage{english}
      {\large\the\degree ~Thesis}
      {\large\the\degree arbeit}

  	\vspace{3em}
  	%\parbox[c][13em][c]{\textwidth}{%
  	\parbox[c]{\textwidth}{%
  		\centering
  		\vfill
  		\rule{\textwidth}{1px}
  		{\huge\bfseries \@title\\}
  		\rule{\textwidth}{1px}
  		\vfill
  	}\\
  	\vspace{3em}
  	\iflanguage{english}
  		{Thesis submitted to the \\ Ruhr-Universität Bochum, \the\studyprogram \par}
  		{Schriftliche Prüfungsarbeit \\ für die \the\degree-Prüfung des Studiengangs \the\studyprogram\ an der Ruhr-Universität Bochum \par}
  	\vspace{3em}
  	\iflanguage{english}
  		{submitted by \par}
  		{vorgelegt von \par}
  	{\LARGE \@author\par}
  	\vspace{3em}
  	\iflanguage{english}
  		{at the \\ {\large Chair of Computing in Engineering} \\ Prof. Dr.-Ing Markus König\\}
  		{am \\ {\large Lehrstuhl für Informatik im Bauwesen} \\ Prof. Dr.-Ing Markus König\\}
  	\vspace*{\fill}
  	\begin{tabular}{ll}
  		\iflanguage{english}{Submission Date:}{Abgabedatum:}  & \@date{}        \\
  		\iflanguage{english}{Student ID}{Matrikelnummer:}     & \the\matno{}       \\
  		\iflanguage{english}{1st advisor:}{1. Prüfer:}        & \the\firstadviser{}\\
  		\iflanguage{english}{2nd advisor}{2. Prüfer:}         & \the\secondadviser{}
  	\end{tabular}
  \end{center}
  \makeatother
}
