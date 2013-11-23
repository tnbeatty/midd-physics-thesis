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

\RequirePackage{etoolbox}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage[super]{natbib}
\RequirePackage{setspace}
\RequirePackage{tabularx}

\RequirePackage{lipsum}

%% Draft Option
% \newbool{isDraft}%
% \DeclareOption{draft}{
% 	\booltrue{isDraft}
% }
% \DeclareOption{print}{
% 	\boolfalse{isDraft}
% }

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

\onehalfspacing
% \doublespacing

\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}

%--------------------------------------------------------------------

%                         *********************
%                         ** CUSTOM COMMANDS **
%                         *********************

%--------------------------------------------------------------------

\endinput
%%
%%
%% End of file `middphysthesis.cls`.

