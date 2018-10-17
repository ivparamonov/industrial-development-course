\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{softengineering-lectures}

\newif\if@lecturenotes
\DeclareOption{lecturenotes}{
  \@lecturenotestrue
}

\ProcessOptions\relax

\if@lecturenotes
  \LoadClass{article}
  \usepackage{beamerarticle}
\else
  \LoadClass[unicode,ignorenonframetext]{beamer}
\fi

\usepackage[utf8]{inputenc}
\usepackage[english,russian]{babel}
\usepackage[T2A]{fontenc}
\usepackage{url}

\usepackage{amsmath}
\usepackage{graphicx}

\mode<presentation>{
  \usetheme{Pittsburgh}
  \usecolortheme{orchid}
  \usefonttheme[onlylarge]{structuresmallcapsserif}
  \usefonttheme[onlysmall]{structurebold}
  \setbeamerfont{title}{family=\rmfamily}
  \setbeamercovered{transparent}
}

\mode<article>{
  \usepackage[margin=1in]{geometry}
  \usepackage{enumitem}
  \setlist{nosep}
  \usepackage[colorlinks=true,urlcolor=blue,linkcolor=blue,citecolor=blue]{hyperref}
}

\newcommand{\lecturenotes}{\par\noindent\rule{0.5\textwidth}{.4pt}}
\newcommand{\rmk}[1]{\colorbox{red}{\footnotesize\color{white}#1}}
\renewenvironment{definition}{\begin{block}{Определение}}{\end{block}}
\renewenvironment{example}{\begin{block}{Пример}}{\end{block}}

\setbeamertemplate{sidebar right}{}
\setbeamertemplate{footline}{%
  \hfill\raisebox{2ex}{\insertframenumber{}/\inserttotalframenumber\hspace{2ex}}}
  
\AtBeginSection[]
 {
   \begin{frame}<beamer>{План лекции}
     \tableofcontents[currentsection,currentsubsection]
   \end{frame}
 }

\usepackage{paratype}
\renewcommand{\sfdefault}{\rmdefault}
\usepackage{cmap}
