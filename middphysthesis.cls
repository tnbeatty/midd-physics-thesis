% middphysthesis.cls
%
% Middlebury Physics Thesis
%
% A LaTeX Document class to properly format your physics thesis. For more
% information, including complete documentation, visit the github repository at
% http://github.com/tnbeatty/MiddPhysThesis.
% 
%--------------------------------------------------------------------
% LICENSE: MIT
% 
% Copyright (c) 2013 | Nate Beatty | http://natebeatty.com
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.
%--------------------------------------------------------------------
%
% This document class was based on the following work:
% 	* The Middlebury College Thesis Class of 2005 mcthesisphy.cls
% 	* The 'exam' Document Class by Philip Hirschhorn
% 		* http://www-math.mit.edu/~psh/
%
% My sincerest thanks to the authors above for laying the groundwork for this
% project. It has helped immensely and I hope that this latest incarnation of
% a Thesis document class will aid in the preparation of many theses to come.
%

%%% Nate Beatty
%%% nate.beatty@gmail.com
%%% http://natebeatty.com

%                         ***********************
%                         ** CLASS DEFINITIONS **
%                         ***********************

\def\fileversion{0.1.0}
\def\filedate{2013/10/06}
\def\fileauthor{Nate Beatty}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{middphysthesis}[\filedate\space Version \fileversion\space by \fileauthor]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\LoadClass[12pt]{report}

%--------------------------------------------------------------------

%                         ***********************
%                         ** REQUIRED PACKAGES **
%                         ***********************

\RequirePackage{graphicx} % Document formatting
\RequirePackage{setspace} % Document formatting

\RequirePackage{fancyhdr}

\RequirePackage{hyperref} % PDF links btwn TOC and chapters / sections
\RequirePackage[super]{natbib}
\RequirePackage[toc,page]{appendix}

\RequirePackage{braket} % For bra-ket notation

\RequirePackage{amsmath}
\RequirePackage{tabularx} % Fancy table formatting
\RequirePackage{longtable} % For tables that extend over multiple pages
\RequirePackage{colortbl} % To color table rows and columns

\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage[rightcaption]{sidecap}

\RequirePackage{lipsum} % For generating filler text

\RequirePackage{listings} % For code syntax highlighting
\RequirePackage{xcolor}

\RequirePackage{xparse} % Makes defining custom macros very easy

%--------------------------------------------------------------------

%                         *****************
%                         ** PAGE LAYOUT **
%                         *****************

\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-2in}
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}

\setlength{\headheight}{15pt}
\setlength{\headsep}{15pt}
\setlength{\topmargin}{0in}
\addtolength{\topmargin}{-\headheight}
\addtolength{\topmargin}{-\headsep}
\setlength{\footskip}{29pt}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-2.2in}

\setlength{\marginparwidth}{.5in}
\setlength{\marginparsep}{5pt}

%--------------------------------------------------------------------

%                         ****************
%                         ** FORMATTING **
%                         ****************

\doublespacing

% Enumeration
\renewcommand{\thechapter}{\Roman{chapter}} % Sections in roman numerals
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}} % Include chapter numeral in section number
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}

\renewcommand{\thefootnote}{\fnsymbol{footnote}} % Use symbols for footnotes b/c numbers are citations

% Syntax Highlighting
\lstloadlanguages{[5.2]Mathematica}
\lstdefinestyle{customM}{
  language=[5.2]Mathematica,
  breakindent=40pt,
  breaklines,
  showstringspaces=false,
  basicstyle=\footnotesize\ttfamily,
  keywordstyle=\bfseries\color{green!40!black},
  commentstyle=\itshape\color{purple!40!black},
  identifierstyle=\color{blue},
  stringstyle=\color{orange}
}

% Headers and Footers
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[R]{\thepage} % Number the pages
\renewcommand{\headrulewidth}{0pt} % Get rid of the ugly ruled line under the header

\renewcommand{\subsectionmark}[1]{ % New dfn to determine if we are in a section or (sub)section
  \ifsubsectioninheader
    \def\subsectiontitle{: #1}%
  \else
    \def\subsectiontitle{}%
  \fi}
\newif\ifsubsectioninheader
\def\subsectiontitle{}

% Print the section number and title in the header of the page
\fancyhead[R]{\nouppercase{\rightmark\ifsubsectioninheader\subsectiontitle\fi}} % 1. sectionname

%--------------------------------------------------------------------

%                         *********************
%                         ** CUSTOM COMMANDS **
%                         *********************

% Makes the page for the advisor and committee to sign upon successful
% completion of the senior project interview or thesis defense. Usage appears
% below:
%
%   \makecommitteepage{Advisor's Name}{Committee 1 Name}[Optional Committee 2 Name]
%
\NewDocumentCommand{\makecommitteepage}{m m o}{%
  \begin{minipage}[t]{.55\textwidth}%
    \vspace{1in}
    \hfill Advisor:\\
    \vspace{\baselineskip}\vspace{1in}

    \hfill Committee:\\
    \IfNoValueTF{#3}
      {\vspace{1.5in}}
      {\vspace{1in}\vspace{3\baselineskip}\vspace{1.5in}}

    \hfill Date Accepted:
  \end{minipage}\hspace{.05\textwidth}%
  \begin{minipage}[t]{.35\textwidth}%
    \vspace{1in}\vspace{\baselineskip}
    \noindent\rule{\textwidth}{0.4pt}
    \begin{centering}%
      {#1}
    \end{centering}
    \vspace{1in}\vspace{\baselineskip}

    \noindent\rule{\textwidth}{0.4pt}
    \begin{centering}%
      {#2}
    \end{centering}
    \IfNoValueTF{#3}
      {\vspace{1.5in}}
      {\vspace{1in}\vspace{\baselineskip}

        \noindent\rule{\textwidth}{0.4pt}
        \begin{centering}%
          {#3}
        \end{centering}
        \vspace{1.5in}
      }

    \noindent\rule{0.75\textwidth}{0.4pt}
  \end{minipage}
}

%--------------------------------------------------------------------

\endinput
%%
%%
%% End of file `middphysthesis.cls`.

