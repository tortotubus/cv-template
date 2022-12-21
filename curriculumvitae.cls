\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{curriculumvitae}[2022/12/20]

\renewcommand{\author}[1]{
	\newcommand{\theauthor}{#1}
}

\newcommand{\phonenumber}[1]{
	\newcommand{\thephonenumber}{#1}
}

\newcommand{\email}[1]{
	\newcommand{\theemail}{#1}
}

\newcommand{\websitename}[1]{
	\newcommand{\thewebsitename}{#1}
}

\newcommand{\websiteurl}[1]{
	\newcommand{\thewebsiteurl}{#1}
}

\setlength{\parindent}   {0pt}
\setlength{\marginparsep}{10pt}
\setlength{\parindent}{0pt}
\setlength{\skip\footins}{2cm}

\RequirePackage{marginnote}

\renewcommand{\raggedleftmarginnote}{}
\newcommand{\years}[1]{%
	{\reversemarginpar\strut\marginnote{{\small#1}}}%
}

\RequirePackage[usenames,dvipsnames]{color}
\definecolor{cardinal}{RGB}{196, 30, 58}

\RequirePackage[
bookmarks,
colorlinks,
breaklinks 
]{hyperref}

\hypersetup{%
	urlcolor=cardinal
}

\newcommand\@ptsize{}

\newif\if@restonecol
\if@compatibility\else

\DeclareOption{a4paper}
{
	\setlength\paperheight {297mm}
	\setlength\paperwidth  {210mm}
}

\DeclareOption{a5paper}
{
	\setlength\paperheight {210mm}
	\setlength\paperwidth  {148mm}
}

\DeclareOption{b5paper}
{
	\setlength\paperheight {250mm}
	\setlength\paperwidth  {176mm}
}

\DeclareOption{letterpaper}
{
	\setlength\paperheight {11in}
	\setlength\paperwidth  {8.5in}
}

\DeclareOption{legalpaper}
{
	\setlength\paperheight {14in}
	\setlength\paperwidth  {8.5in}
}

\DeclareOption{executivepaper}
{
	\setlength\paperheight {10.5in}
	\setlength\paperwidth  {7.25in}
}

\DeclareOption{landscape}
{
	\setlength\@tempdima   {\paperheight}
	\setlength\paperheight {\paperwidth}
	\setlength\paperwidth  {\@tempdima}
}

\fi

\if@compatibility
	\renewcommand\@ptsize{0}
\else
	\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi

\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}

\if@compatibility
\else
	\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi

\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}

\if@compatibility\else
	\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi

\ExecuteOptions{letterpaper,10pt,oneside,onecolumn,final}

\ProcessOptions

\input{size1\@ptsize.clo}

\setlength\lineskip{1\p@}

\setlength\normallineskip{1\p@}

\renewcommand\baselinestretch{}

\setlength\parskip{0\p@ \@plus \p@}

\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301

\renewcommand{\maketitle}
{
	{
		\noindent \Huge{\theauthor}
		\begin{flushleft}
			\scriptsize
			\textbullet{
				\hspace{1pt}
				\thephonenumber
				\hspace{1pt}
			}
			\textbullet{
				\hspace{1pt}
				\href{mailto:\theemail}{\theemail}
				\hspace{1pt}
			}
			\textbullet{
				\hspace{1pt}
				\href{\thewebsiteurl}{\thewebsitename}
				\hspace{1pt}
			}
		\end{flushleft}
	}
}


\setcounter{secnumdepth}{3}

\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]

\renewcommand \thesection      {\@arabic\c@section}
\renewcommand \thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand \thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
\renewcommand \theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand \thesubparagraph {\theparagraph.\@arabic\c@subparagraph}

\newcommand\part{
	\if@noskipsec \leavevmode \fi
	\par
	\addvspace{4ex}%
	\@afterindentfalse
	\secdef\@part\@spart
}

\newcommand\section{
	\@startsection {section}{1}{\z@}%
	{-3.5ex \@plus -1ex \@minus -.2ex}%
	{2.3ex \@plus.2ex}%
	{\normalfont\Large\bfseries}
}

\newcommand\subsection{
	\@startsection{subsection}{2}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\large\bfseries}
}

\newcommand\subsubsection{
	\@startsection{subsubsection}{3}{\z@}%
	{-3.25ex\@plus -1ex \@minus -.2ex}%
	{1.5ex \@plus .2ex}%
	{\normalfont\normalsize\bfseries}
}

\newcommand\paragraph
{
	\@startsection{paragraph}{4}{\z@}%
	{3.25ex \@plus1ex \@minus.2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}
}

\newcommand\subparagraph{
	\@startsection{subparagraph}{5}{\parindent}%
	{3.25ex \@plus1ex \@minus .2ex}%
	{-1em}%
	{\normalfont\normalsize\bfseries}
}

\setlength \leftmargini   {2.5em}
\setlength \leftmarginii  {2.2em}
\setlength \leftmarginiii {1.87em}
\setlength \leftmarginiv  {1.7em}
\setlength \leftmarginv   {1em}
\setlength \leftmarginvi  {1em}

\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}

\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty

\renewcommand\theenumi  {\@arabic\c@enumi}
\renewcommand\theenumii {\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv {\@Alph\c@enumiv}

\newcommand\labelenumi  {\theenumi.}
\newcommand\labelenumii {(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv {\theenumiv.}

\newcommand\partname{Part}

\setlength\columnsep    {10\p@}
\setlength\columnseprule{0\p@}

\pagestyle{plain}
\pagenumbering{arabic}

\endinput