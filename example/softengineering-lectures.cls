\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{softengineering-lectures}
\LoadClass[unicode]{beamer}

\usepackage[utf8]{inputenc}
\usepackage[english,russian]{babel}
\usepackage[T2A]{fontenc}

\usepackage{amsmath}
\usepackage{graphicx}

\mode<presentation>{
  \usetheme{Rochester}
  \usefonttheme[onlylarge]{structuresmallcapsserif}
  \usefonttheme[onlysmall]{structurebold}
  \setbeamerfont{title}{family=\rmfamily}
  \setbeamercovered{transparent}
}

\setbeamertemplate{sidebar right}{}
\setbeamertemplate{footline}{%
  \hfill\raisebox{2ex}{\insertframenumber{}/\inserttotalframenumber\hspace{2ex}}}
  
\AtBeginSection[]
 {
   \begin{frame}<beamer>{План лекции}
     \tableofcontents[currentsection,currentsubsection]
   \end{frame}
 }

\renewenvironment{definition}{\begin{block}{}}{\end{block}}
\renewenvironment{example}{\begin{block}{Пример}}{\end{block}}
\newenvironment{principle}{\begin{block}{Принцип инженерии}}{\end{block}}
  
\usepackage{paratype}
\renewcommand{\rmdefault}{\sfdefault}

\usepackage{cmap}

\newcounter{savedenumi}
\newcommand{\saveenumi}{\setcounter{savedenumi}{\value{enumi}}}
\newcommand{\restoreenumi}{\setcounter{enumi}{\value{savedenumi}}}
