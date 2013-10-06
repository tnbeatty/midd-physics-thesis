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

%%% Nate Beatty
%%% nate.beatty@gmail.com
%%% http://natebeatty.com

\def\fileversion{0.1.0}
\def\filedate{2013/10/06}

\NeedsTexFormat{LaTeX2e}
\ProvidesClass{middphysthesis}[\filedate\space Version \fileversion\space by
  Nate Beatty]

%                         ***********************
%                         ** REQUIRED PACKAGES **
%                         ***********************

\RequirePackage{ifthen}
\RequirePackage{graphicx}

%--------------------------------------------------------------------

%                         *****************
%                         ** PAGE LAYOUT **
%                         *****************

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions

\LoadClass[12pt]{report}

\headheight=15pt

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
