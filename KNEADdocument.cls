% at top of file
\usepackage{svn-multi}
\usepackage{ifpdf}

%%% SVN stuff
\svnid{$Id: KNEADdocument.cls 139 2025-06-13 20:26:50Z KneadProject $}

%% KNEADdocument.cls
\newcommand{\KNEADdocumentClsName}{KNEADdocument}
\newcommand{\KNEADdocumentClsDate}{2024/12/21}
\newcommand{\KNEADdocumentClsVersion}{1.02}
%1.01 28Sep2024 Added UseCase stuff
%1.02 21Dec2024 Added \newpart to trigger initialstuff, if used

\NeedsTeXFormat{LaTeX2e} \ProvidesClass{\KNEADdocumentClsName}[\KNEADdocumentClsDate :: version \KNEADdocumentClsVersion :: KNEAD Document format]


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% KNEADdocument.cls
%%
%% Kneadable Nimble Engineering Artifact Design (KNEAD) document class file for LaTeX
%%
%% Copyright 2021, Collier KNowledge and Publishing, LLC.
%% Author: W. Lewis Collier, Ph.D.
%%
%% This file is significantly based upon the urithesis.cls file.
%% Significant changes, however, were made, to support general documents 
%% and to remove all the "thesis" stuff such as professor signatures, library
%% pages, etc. See the thesis guide, which, as of 05 December 2021, can be found at
%% https://web.uri.edu/engineering/student-support/thesisguide/template-files/
%% for current implementation information.
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% urithesis.cls
%% Version 1.12 (2008/07/01)
%% Version 1.12 (2008/07/01)
%% Copyright 2004, 2005, 2006, University of Rhode Island
%% Author: Timothy Toolan, Department of Electrical Engineering
%%
%% See http://www.ele.uri.edu/info/thesis/guide for the latest
%% info, including usage and examples.
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Timothy Toolan.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%
%        University of Rhode Island thesis class for LaTeX.
%
% This LaTeX class is used to create theses and dissertations which
% conform the Graduate School guidelines at the University of Rhode Island.
% It generates all of the preliminary pages including the title page,
% approval page, table of contents, list of figures, and list of tables.
% It generates the required bibliography, as well as lists of references.
% It also sets margins, spacing, and other format elements as required.
% The primary style manual used is Kate Turabian's "Manual for Writers of 
% Papers, Theses, and Dissertations," and the bibliography and references
% use the IEEE format.  This class can also create thesis proposals by 
% using the 'proposal' option.  It has several other options which are
% described below.  See the examples section for common uses.
%
% Author: Timothy Toolan, Department of Electrical Engineering
%                         at the University of Rhode Island.
%
%
% General Options:
%  The options in this section affect the overall appearance of the 
%  thesis, but all of them should comply with the Graduate School 
%  guidelines for theses and dissertations.
%
%   phd,masters: this specifies whether this is a PhD. dissertation
%     or a masters thesis.  The default is masters.
%
%   10pt,11pt,12pt: this determines the font size used throughout the 
%     document.  The default is 12pt.
%
%   oneref: this specifies that you want a single list of references
%     after the last chapter right before the first appendix, instead
%     of a list of references at the end of each chapter. 
%
%   manuscript: this specifies that your thesis is in manuscript format. 
%     The only difference between this and standard format, is that each 
%     chapter will be called manuscript. For instance, "Chapter 1" will 
%     now be "Manuscript 1".
%
%   3committee,4committee,5committee: this is the number of people
%     on your core committee, which determines how many signature lines
%     are needed on the signature page.  Each committee consists of a 
%     minimum of three core members, plus the Dean of the Graduate School.
%     The committee chairman does NOT sign the approval page.  (If you are
%     not sure how many core committee members you have, please consult 
%     with your major professor.)  The default is 3committee.
%
%   sequential,nonsequential: this specifies whether you want numbering
%     of figures, equations, and tables reset to 1 at the beginning of 
%     each chapter (nonsequential), or if you want the numbers to be 
%     sequential throughout the whole document.  The default is sequential.
%
%   topnum,bottomnum: this specifies whether you prefer your page
%     numbers on the top right or bottom center of the page.
%     The default is bottomnum.
%
%   aparefs: this will use the author last name and year for citations,
%     like the APA style (Toolan, 2006), instead of a number like [1].
%
%
% Writing Options:
%  The options in this section are intended to ease writing the thesis.
%  All of the options in this section will make the thesis not conform to 
%  the Graduate School guidelines, so none of these should be used
%  when generating the final copy.
%
%   draft: when draft is selected any overfull boxes are shown
%     by a black box indicating the area that is too large.  This 
%     is useful for finding anything that has gone outside the 
%     acceptable margins, like equations that are too long or figures
%     and tables that are too big.  Only the filename of included
%     figures are actually displayed.
%
%   draftbox: this is the same as the 'draft' option, except figures 
%     are actually displayed.
%
%   simpleref: when simpleref is specified, there will be a single list
%     of references at the end of the document after all other material,
%     and no bibliography.  This is convient when writing because bibtex
%     only needs to be run on a single file (thesis) to update the
%     references.
%
%   noprelim: when noprelim is specified, all of the preliminary pages, 
%     (the pages before the start of chapter 1), are not generated.
%     This can be used with the option nobib and the LATEX command 
%     \includeonly{}, to produce a document containing only the chapter 
%     you are currently working on.
%
%   nobib: when nobib is specified, there will be no bibliography
%     or list of references.
%
%
% Library Rights Page:
%  The Graduate School requires a "Library Rights Page," which is
%  to be included with the "original" copy of the thesis.  Selecting 
%  this option will generate that page, and only that page, ignoring 
%  the rest of the thesis.
%
%   libraryrightspage: this option will generate just the "Library
%     Rights Page", which should be included with the orignal copy
%     submitted to the graduate school.  All other options except
%     font size, copy/nocopy, and phd/masters are ignored when this 
%     option is given.
%
%   copy,nocopy: this determines whether you want to give the library
%     permission to make copies of the thesis.  The default is copy.
%     This option only applies to the "Library Rights Page".
%
%
% Thesis Proposal:
%  Because the thesis proposal is formatted similarly to the thesis
%  in terms of spacing, this option can be used to generate the 
%  proposal.  When selected, there is only one list of references 
%  at the end, and no bibliography.  All of the other options except 
%  font size and page number location are ignored because they make no 
%  sense in a proposal.
%
%   proposal: this specifies that this is a thesis proposal, and 
%     not an actual thesis. 
%
%
% Examples:
%
%   For a masters thesis with one list of references:
%     \documentclass[oneref]{urithesis}
%
%   For a Ph.D. dissertation:
%     \documentclass[phd]{urithesis}
%
%   For a manuscript format Ph.D. dissertation with a four member 
%   committee, and page numbers on the top:
%     \documentclass[phd,manuscript,4committee,topnum]{urithesis}
%
%
% Notes: 
%
%   Portions of this package were derived frome the chapterbib
%   package (Version 1.5 (09-OCT-1995) Donald Arseneau), therefore 
%   you should be sure not to use that package with this one due 
%   to inevitable conflicts.
%
%   You will also need the file uribiblio.bst for creating the
%   bibliography.
%
%   This package has been disigned to comply with the library's
%   format guidlines using either a 10pt or 12pt font, which is
%   specified in the \documentclass line.
%
%   By default the department named on the title page is Electrical
%   Engineering, but that can be changed by putting the command:
%     \dept{My Department}
%   in the main .tex file before any of the chapters are included.
%
%   The acknowledgements, preface, and dedication sections are not
%   required, but the abstract section is.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 


% Declare our options.

%%%QMSdocument-- hardwire the format to follow the oneref style so the option can be removed from the template
\newif\if@wantchapterref \@wantchapterreffalse
%%%\newif\if@wantchapterref \@wantchapterreftrue
%%%\DeclareOption{chapterref}{\@wantchapterreftrue}
%%%\DeclareOption{oneref}{\@wantchapterreffalse}

\newif\if@wantapalike \@wantapalikefalse
\DeclareOption{aparefs}{\@wantapaliketrue}

\newif\if@wantmanuscript \@wantmanuscriptfalse
\DeclareOption{manuscript}{\@wantmanuscripttrue}
\DeclareOption{standard}{\@wantwantmanuscriptfalse}

\newif\if@simpleref \@simplereffalse
\DeclareOption{simpleref}{\@simplereftrue \@wantchapterreffalse}

%%% add a default value for shownoreqstatus, let users override this
\newif\if@showreqstatus \@showreqstatustrue
\DeclareOption{shownoreqstatus}{\@showreqstatusfalse}

%%% add a default value for showusecasenotes, let users override this
\newif\if@showusecases \@showusecasestrue
\DeclareOption{shownonousecases}{\@showrusecasesfalse}

%%% add a default value for shownoreqnotes, let users override this
\newif\if@showreqnotes \@showreqnotestrue
\DeclareOption{shownoreqnotes}{\@showreqnotesfalse}


\newif\if@topnumbers \@topnumbersfalse
\DeclareOption{topnum}{\@topnumberstrue}
\DeclareOption{bottomnum}{\@topnumbersfalse}

\newif\if@libraryrights \@libraryrightstrue
\DeclareOption{nocopy}{\@libraryrightsfalse}
\DeclareOption{copy}{\@libraryrightstrue}

\newif\if@sequential \@sequentialtrue
\DeclareOption{nonsequential}{\@sequentialfalse}
\DeclareOption{sequential}{\@sequentialtrue}

\newif\if@noprelim \@noprelimfalse
\DeclareOption{noprelim}{\@noprelimtrue}
\DeclareOption{prelim}{\@noprelimfalse}

\newif\if@nobib \@nobibfalse
\DeclareOption{nobib}{\@nobibtrue}

\newif\if@proposal \@proposalfalse
\DeclareOption{proposal}{\@proposaltrue}

\newif\if@draftbox \@draftboxfalse
\DeclareOption{draftbox}{\@draftboxtrue}


%%%KNEADdocument options

\newif\if@showfor \@showforfalse
\DeclareOption{showfor}{\@showfortrue}

\newif\if@showtpg \@showtpgfalse
\DeclareOption{showtpg}{\@showtpgtrue}

\newif\if@showtoc \@showtocfalse
\DeclareOption{showtoc}{\@showtoctrue}

\newif\if@showlot \@showlotfalse
\DeclareOption{showlot}{\@showlottrue}

\newif\if@showlof \@showloffalse
\DeclareOption{showlof}{\@showloftrue}

\newif\if@showlos \@showlosfalse
\DeclareOption{showlos}{\@showlostrue}

\newif\if@showloe \@showloefalse
\DeclareOption{showloe}{\@showloetrue}

\newif\if@showlod \@showlodfalse
\DeclareOption{showlod}{\@showlodtrue}

%procedures, like operation procedures
\newif\if@showlop \@showlopfalse
\DeclareOption{showlop}{\@showloptrue}

%check lists
\newif\if@showlol \@showlolfalse
\DeclareOption{showlol}{\@showloltrue}

\newif\if@dobindprt \@dobindprtfalse
\DeclareOption{dobindprt}{\@dobindprttrue}

\newif\if@showsig \@showsigfalse
\DeclareOption{showsig}{\@showsigtrue}

\newif\if@showcpy \@showcpyfalse
\DeclareOption{showcpy}{\@showcpytrue}

\newif\if@showdocctl \@showdocctlfalse
\DeclareOption{showctl}{\@showdocctltrue}

\newif\if@showcontract \@showcontractfalse
\DeclareOption{showcontract}{\@showcontracttrue}

\newif\if@makesinglespace \@makesinglespacefalse
\DeclareOption{makesinglespace}{\@makesinglespacetrue}

\newif\if@makeoneptthreespace \@makeoneptthreespacefalse
\DeclareOption{makeoneptthreespacespace}{\@makeoneptthreespacetrue}

\newif\if@makeoneptfivespace \@makeoneptfivespacefalse
\DeclareOption{makeoneptfivespace}{\@makeoneptfivespacetrue}

%%%end of MILSTD498 options


\newif\if@libraryrightspage \@libraryrightspagefalse
\DeclareOption{nolibraryrightspage}{\@libraryrightspagefalse}
\DeclareOption{libraryrightspage}{\@libraryrightspagetrue}

% Declare options from report class that we want to pass.
\def\@optptsize{12pt}
\DeclareOption{10pt}{\def\@optptsize{10pt}}
\DeclareOption{11pt}{\def\@optptsize{11pt}}
\DeclareOption{12pt}{\def\@optptsize{12pt}}

\DeclareOption{draft}{\PassOptionsToClass{draft}{report}}
\DeclareOption{final}{\PassOptionsToClass{final}{report}}

\ProcessOptions 

%\LoadClass[letterpaper,oneside,titlepage,onecolumn,openany,\@optptsize]{report}
\LoadClass[titlepage,oneside,onecolumn,openany,\@optptsize]{report}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set things that are determined permanently right after options
% are processed.

% make a box visible around out of bounds figures
\if@draftbox
  \setlength\overfullrule{5pt}
\fi

%WLC20110327 added boolean variable to control printing of SVN data in preface

%%%\newboolean{boShowSVNdata}% for showing SVN data in preface
%%%\setboolean{boShowSVNdata}{false} 
%%%\if@draftbox
%%%  \setlength\overfullrule{5pt}
%%%   \setboolean{boShowSVNdata}{true}
%%%\fi

%WLC20110318 added way to print draft headers
% new commands are used below for pagestyle
% requires inclusion of package header, maybe include it here?
% Set WlcHeaderStyle to either "fancy" or "plain".
%%%\if@draftbox%
\renewcommand{\ps@plain}{\pagestyle{fancy}} 
%%%\else%
%%%\fi%

\if@proposal
  \@noprelimtrue
  \@simplereftrue
  \@wantchapterreffalse
  \@sequentialtrue
\fi

\if@libraryrightspage
  \@noprelimtrue
  \@simplereftrue
  \@wantchapterreffalse
  \@sequentialtrue
  \@nobibtrue
  \def\@include#1 {}%
\fi

%%%MILSTD498%%%\def\@refbstfile{uriref}
%%%KNEAD%%%%%%%\def\@refbstfile{MILSTD498_ref}
\def\@refbstfile{KNEAD_ref}
\if@wantapalike
  % from apalike.sty
  \def\@cite#1#2{(#1\if@tempswa , #2\fi)}
  \def\citepunct{; }
  \def\@biblabel#1{}
  %%%MILSTD498%%%\def\@refbstfile{uriapa}
  %%%KNEAD%%%%%%%\def\@refbstfile{MILSTD498_apa}
  \def\@refbstfile{KNEAD_apa}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define functions for user to set things.

\def\dept#1{\gdef\@dept{#1}}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\reffile#1{\gdef\@reffile{#1}}
\def\abstract#1{\gdef\@abstract{#1}}
\def\doccontrol#1{\gdef\@doccontrol{#1}}


\newcommand{\KNEADtitlepagelogo}{KNEAD_UnderConstruction_CKPllc_300dpi_6.5inchesWide.eps}
\newcommand{\KNEADauthor}{Author Undefined}
\newcommand{\KNEADtitle}{Title Undefined}

\def\KNEADtitlepage#1{\gdef\@KNEADtitlepage{#1}}

\def\dochistory#1{\gdef\@dochistory{#1}}
\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
\def\preface#1{\gdef\@preface{#1}}
\def\dedication#1{\gdef\@dedication{#1}}
\def\titledisclaimer#1{\gdef\@titledisclaimer{#1}}
\def\docapprovalpage#1{\gdef\@docapprovalpage{#1}}

\def\signature#1{
  \@ifundefined{@signatureA}{%
    \gdef\@signatureA{#1}}{
  \@ifundefined{@signatureB}{%
    \gdef\@signatureB{#1}}{
  \@ifundefined{@signatureC}{%
    \gdef\@signatureC{#1}}{
  \@ifundefined{@signatureD}{%
    \gdef\@signatureD{#1}}{
  \gdef\@signatureE{#1}}}}}
}

\def\newpart#1{%
  \if@gotfirstchapter\else
    \@gotfirstchaptertrue
    \initialstuff
  \fi
	\part{#1}
}

\def\newchapter#1{%
  \if@gotfirstchapter\else
    \@gotfirstchaptertrue
    \initialstuff
  \fi
  \include{#1}
}

\def\newappendix#1{%
  \if@gotfirstappendix
    \immediate\write\@mainaux{\string\gdef\string\@multappendix{Y}}
  \else
    \@gotfirstappendixtrue
    \@sequentialfalse % figures and tables in appendix must not be sequential
    \startappendix
    \immediate\write\@auxout{\string\@writefile{toc}{{\vskip 1.0ex plus\p@ 
                     {\string\bfseries  \noindent APPENDIX \hfill}}}}
    \immediate\write\@auxout{\string\@writefile{toc}{ }} 
  \fi
  \include{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Set page dimensions.  These values give us 1.6in on the left margin,
% and 1.1in on the other margins, as well as placing the page numbers 
% correctly.

\newlength{\@realheadsep}
\newlength{\@realtextheight}

\makeatletter



\if@dobindprt% set margins to 1.5" on left (leave room for binding) and 1.0" right
  \setlength{\voffset}{-.15in}
  \setlength{\oddsidemargin}{.5in}
  \setlength{\evensidemargin}{.5in}  
  \setlength{\textwidth}{6.0in}
  \setlength{\marginparsep}{.2in}
  \setlength{\marginparwidth}{1in}
\else%!dobindprt so set margins to 1.0" on left and right sides
  \setlength{\voffset}{-.15in}
  \setlength{\oddsidemargin}{0in}
  \setlength{\evensidemargin}{0in}
  \setlength{\textwidth}{6.5in}
  \setlength{\marginparsep}{.2in}
  \setlength{\marginparwidth}{1in}
\fi%dobindprt
  
\setlength{\topmargin}{-0.5in}
\setlength{\headheight}{0.5in} %{0.25in}
\setlength{\@realheadsep}{.15in} %{0.35in}
\setlength{\@realtextheight}{9.0in} %11-1"tm-.15"sep-1"bm-.15"sep
\setlength{\footskip}{0.42in} %{.5in} {WLC20210907} increased from 0.35 so footnotes cleared top line of footer

\setlength{\paperheight}{11.0in}
\setlength{\paperwidth}{8.5in}

\setlength{\headsep}{\@realheadsep}
\setlength{\textheight}{\@realtextheight}

% set paragraph indentation to 2em
\parindent 2em

% Lengths used by capheadings where we expand the header and shrink 
% the text body to allow the heading on each page within original margins.
\newlength{\@headerextra}
\setlength{\@headerextra}{0in} %{0.35in}

\newlength{\@altheadsep}
\setlength{\@altheadsep}{\@realheadsep}
\addtolength{\@altheadsep}{\@headerextra}

\newlength{\@alttextheight}
\setlength{\@alttextheight}{\@realtextheight}
\addtolength{\@alttextheight}{-\@headerextra}

\newlength{\@fullheadheight}
\setlength{\@fullheadheight}{\headheight}
\addtolength{\@fullheadheight}{\@realheadsep}

\newlength{\@headtofootheight}
\setlength{\@headtofootheight}{\@alttextheight}
\addtolength{\@headtofootheight}{\@realheadsep}
\addtolength{\@headtofootheight}{\@headerextra}

 %Set double spacing command for 12pt font.
\def\doublespace{%
  \renewcommand{\baselinestretch}{1.66} %%%%%original version for true double spacing 
  \renewcommand{\arraystretch}{0.602} %%%%%original version for true double spacing 
  %\renewcommand{\baselinestretch}{1.42} %%% set to tighten up to about 1.5 spacing
  %\renewcommand{\arraystretch}{0.602} %%% set to tighten up to about 1.5 spacing  
  \normalsize%
}

% Set double spacing command for 11pt font.
\def\@tmppt{11pt}
\ifx\@optptsize\@tmppt
  \def\doublespace{%
    \renewcommand{\baselinestretch}{1.62}
    \renewcommand{\arraystretch}{0.617}
    \normalsize%
  }
\fi

% Set double spacing command for 10pt font.
\def\@tmppt{10pt}
\ifx\@optptsize\@tmppt
  \def\doublespace{%
    \renewcommand{\baselinestretch}{1.67}%
    \renewcommand{\arraystretch}{0.599}%
    \normalsize%
  }
\fi

% Set 1.5 space spacing command.
\def\oneptfivespace{%
  \renewcommand{\baselinestretch}{1.35}%
  \renewcommand{\arraystretch}{1.35}%
	%\setlength{\parskip}{12.0pt}
	\setlength{\parskip}{6.0pt}
	\normalsize%
}

% Set single spacing command.
\def\singlespace{%
  \renewcommand{\baselinestretch}{1.0}%
  \renewcommand{\arraystretch}{1.0}%
	%\setlength{\parskip}{12.0pt}
	\setlength{\parskip}{0.0pt}
  \normalsize%
}

% Do double spacing by default.
\doublespace
%%% set to single spacing if that is desired
\if@makesinglespace
  \renewcommand{\baselinestretch}{1.0}%
  \renewcommand{\arraystretch}{1.0}%
	%\setlength{\parskip}{12.0pt}
	\setlength{\parskip}{6.0pt}
	\normalsize%
\fi%makesinglespace

%%% set of 1.5 spacing if that is desired, with priority over single spacing
\if@makeoneptfivespace
  \renewcommand{\baselinestretch}{1.35}%
  \renewcommand{\arraystretch}{1.35}%
  \setlength{\parskip}{3.0pt}
  \normalsize%
\fi%makeoneptfivespace
  


% fixes hyperref warning
\providecommand*{\toclevel@chapterx}{0}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Basic definitions.


% Set some default values for certain things.
\def\@title{Title is Undefined}
\def\@author{Author is Undefined}
\def\@dept{COMPUTER SCIENCE}
\def\@copyrightyear{\number\the\year}
\def\@reffile{references}
\def\@titledisclaimer{}
\newcommand{\customer}{UNDEFINED CUSTOMER}
\newcommand{\project}{UNDEFINED PROJECT}

\newcommand{\TitlePageDistributionStatement}{This document contains proprietary data or information pertaining to items, or components, or processes or other matter developed or acquired at the private expense KNEAD.}

\newcommand{\TitlePageProprietaryBanner}{KNEAD Proprietary Information}


% Sets name of bibliography file to thesisbib.bbl assuming the
% thesis.tex file was not renamed.
\def\@bibliofileext{bib}
\def\@bibliofile{\jobname\@bibliofileext}

% Set some names used as chapter headings.
\renewcommand\contentsname{TABLE OF CONTENTS}
\renewcommand\listtablename{LIST OF TABLES}
\renewcommand\listfigurename{LIST OF FIGURES}
\newcommand{\listusecasename}{LIST OF USE CASES}
\newcommand{\listspecificationsname}{LIST OF SPECIFICATIONS}
\newcommand{\listexpectationsname}{LIST OF EXPECTATIONS}
\newcommand{\listtestproceduresname}{LIST OF TEST PROCEDURES}
\newcommand{\listchecklistsname}{LIST OF CHECK LISTS}
\newcommand{\listoperproceduresname}{LIST OF OPERATION PROCEDURES}

\newcommand\biblioname{BIBLIOGRAPHY}
\if@wantmanuscript 
  \renewcommand\chaptername{MANUSCRIPT}
\else
  \renewcommand\chaptername{CHAPTER}
\fi

% This is used to print the lead pages before the first chapter.
\newif\if@gotfirstchapter \@gotfirstchapterfalse

% This is used to convert over to appendices from chapters,
% and to print a list of references if using oneref format.
\newif\if@gotfirstappendix \@gotfirstappendixfalse

% Counts the number of references in each chapter to determine if there
% is a list of references for that chapter when using chapterref format.
\newcounter{chaptercitecount}

% These two are called from the main aux file if we need a list of figures 
% page and/or a list of tables.  They are put in the aux file from the
% enddocumenthook using totaltablecount and totalfigurecount.
\def\myusefigurespage{\gdef\@myusefigurespage{true}}
\def\myusetablespage{\gdef\@myusetablespage{true}}

%%%MILSTD498%%% specifications stuff
\def\myusespecificationspage{\gdef\@myusespecificationspage{true}}
\def\myusetestprocedurespage{\gdef\@myusetestprocedurespage{true}}
\def\myuseoperprocedurespage{\gdef\@myuseoperprocedurespage{true}}
\def\myusechecklistspage{\gdef\@myusechecklistspage{true}}

% These are used to determine if there are any figures and/or tables
% in the thesis, because if there aren't any, we don't want a 
% list of figures and/or list of tables.
\newcounter{totaltablecount}
\newcounter{totalfigurecount}


% Local mirror of \@myusefigurespage and \@myusetablespage.
\newif\if@usefigurespage \@usefigurespagefalse
\newif\if@usetablespage \@usetablespagefalse


% used to make correct pdf index for hyperref
\def\addcustomcontentsline{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This function adds a file name to \@biblist, which will be printed to
% console with a message telling the user to run bibtex on these files.
\def\add@biblist#1{\@ifundefined{@biblist}{%
  \edef\@biblist{ bibtex #1}}{%
  \edef\@tmpbl{\@biblist^^J bibtex #1}\let\@biblist=\@tmpbl}
}

\if@wantchapterref

% These are taken right from chapterbib.sty, and needed in the 
% redefinition of \@include.
\def\@CB@writeContext{\if@filesw\begingroup
  \edef\@tempa{\string\gdef\string\@extra@binfo{\@extra@b@citeb}}%
  \immediate\write\@auxout{\@tempa\@CB@wtoc{toc}\@CB@wtoc{lof}\@CB@wtoc{lot}}%
  \endgroup\fi}
\def\@CB@wtoc#1{\string\@writefile{#1}{\gdef
  \string\the@ipfilectr{\@extra@b@citeb}}}%

% Need to include chapter references before the \clearpage and
% make some modifications from chapterbib package. This definition 
% was taken from latex.ltx with some code from chapterbib.sty.
\def\@include#1 {%
  \clearpage
  % The next three lines are from chapterbib.
  \global\advance\c@inputfile\@ne \xdef\the@ipfilectr{@-\the\c@inputfile}%
  \@CB@writeContext%
  \xdef\@currentipfile{#1}%
  \if@filesw
    \immediate\write\@mainaux{\string\@input{#1.aux}}%
  \fi
  \@tempswatrue
  \if@partsw
    \@tempswafalse
    \edef\reserved@b{#1}%
    \@for\reserved@a:=\@partlist\do
      {\ifx\reserved@a\reserved@b\@tempswatrue\fi}%
  \fi
  \if@tempswa
    \let\@auxout\@partaux
    \if@filesw
      \immediate\openout\@partaux #1.aux
      \immediate\write\@partaux{\relax}%
    \fi
    \@input@{#1.tex}%
    % the stuff before the \clearpage was addded
    \if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi%
    \if@filesw\immediate\write\@auxout{\string\bibdata{\@reffile}}\fi%
    \ifnum\value{chaptercitecount}>0
      \if@nobib\else%
%%%%%MILSTD498%%%%%      \def\addcustomcontentsline{\addcontentsline{toc}{section}{\listrefname}}
      \@input{\@currentipfile.bbl}
      \add@biblist{\@currentipfile}
      \fi%
    \fi
    \clearpage
    \@writeckpt{#1}%
    \if@filesw
      \immediate\closeout\@partaux
    \fi
  \else
    \deadcycles\z@
    \@nameuse{cp@#1}%
  \fi
  \let\@auxout\@mainaux%
  % The next three lines are from chapterbib.
  \global\let\@currentipfile\@savedjobname%
  \gdef\the@ipfilectr{}%
  \@CB@writeContext%
}

% This comes from chapterbib.sty.
\@ifundefined{@extra@binfo}{%
  \def\bibcite#1#2{\global\@namedef{b@#1\@extra@binfo}{#2}}%
}{}

% This comes from chapterbib.sty.
\@ifundefined{@extra@b@citeb}{% if not defined by compatible package
 \def\@citex[#1]#2{%  Add \@extra@b@citeb to \cite
   \let\@citea\@empty
   \@cite{\@for\@citeb:=#2\do
     {\@citea\let\@citea\citepunct
      \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
      \stepcounter{chaptercitecount}% count references
      \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
      \if@filesw\immediate\write12{\string\citation{\@citeb}}\fi%
      \@ifundefined{b@\@citeb \@extra@b@citeb}{\mbox{\reset@font\bf ?}%
         \@warning{Citation `\@citeb' in file `\@currentipfile'
             on page \thepage \space undefined}\G@refundefinedtrue}%
      {\hbox{\citeform{\csname b@\@citeb \@extra@b@citeb\endcsname}}}}}{#1}}

  \@ifundefined{citeform}{\let\citeform\@empty}{}
  \@ifundefined{citepunct}{\def\citepunct{,\penalty\@m\ }}{}
}{}%

% These lines come from chapterbib.sty.
\xdef\@savedjobname{\jobname}% save root file name as a macro
\let\@currentipfile\@savedjobname
\gdef\the@ipfilectr{}
\def\@extra@b@citeb{\the@ipfilectr}
\newcount\c@inputfile \global\c@inputfile=0
\gdef\@extra@binfo{}  % in case .aux files are left from old run.

\else%\if@wantchapterref

% This comes from latex.ltx, and is modified to add bibliography
% entries as well as reference entries.
\def\@citex[#1]#2{%
  \let\@citea\@empty
  \@cite{\@for\@citeb:=#2\do
    {\if@wantapalike%
       \@citea\def\@citea{; }%
     \else%
       \@citea\def\@citea{,\penalty\@m\ }%
     \fi%
     \edef\@citeb{\expandafter\@firstofone\@citeb\@empty}%
     \if@filesw\immediate\write\@auxout{\string\citation{\@citeb}}\fi
     \if@filesw\immediate\write12{\string\citation{\@citeb}}\fi
     \@ifundefined{b@\@citeb}{\mbox{\reset@font\bfseries ?}%
       \G@refundefinedtrue
       \@latex@warning
         {Citation `\@citeb' on page \thepage \space undefined}}%
       {\hbox{\csname b@\@citeb\endcsname}}}}{#1}}

\fi%\if@wantchapterref

% These two things must be done after all other packages are included,
% specifically cite and/or overcite.
\AtBeginDocument{
% Redefine nocite so it writes to the bibliography only, and
% doesn't complain about undefined references since bibtex
% will complain anyway.  It came from latex.ltx.
\def\nocite#1{\@bsphack
  \@for\@citeb:=#1\do{%
    \edef\@citeb{\expandafter\@firstofone\@citeb}%
    \if@filesw\immediate\write12{\string\citation{\@citeb}}\fi
  }\@esphack}

% Redefine these to do nothing because they should not be used 
% beacuse they are done on the users behalf by this class.
%\def\bibliography#1{}
\def\bibliographystyle#1{}

% This is used by cite.sty for the actual citations.  It is modified
% to add entries to the bibliography, and count entries.
\@ifundefined{@extra@b@citeb}{}{
  \def\@nocite#1{\begingroup\let\protect\string% normalize active chars
    \xdef\@no@sparg{\expandafter\@ignsp#1 \: }\endgroup% and remove ALL spaces
    \if@filesw \immediate\write\@auxout {\string\citation {\@no@sparg}}\fi%
    \stepcounter{chaptercitecount}% count references in chapters
    \if@filesw \immediate\write12 {\string\citation {\@no@sparg}}\fi}
}
}

% For compatibility with the old urithesis.sty command.
\def\bibliocite#1{\nocite{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Style for references. This came from report.cls.
\renewenvironment{thebibliography}[1]
     {\if@proposal%
        %%%%%MILSTD498%%%%%\section*{\listrefname}%
      \else%
        \if@wantchapterref%
          %%%%%MILSTD498%%%%%\section*{\listrefname}%
        \else%
          %%%%%MILSTD498%%%%%\chapter*{\listrefname}%
        \fi%
      \fi%
      \singlespace\vspace{2ex}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
	    \if@wantapalike%
              \setlength{\leftmargin}{2.0em}
	      \addtolength{\leftmargin}{-\labelsep}
              \setlength{\itemindent}{-2.0em}
	    \fi
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m} {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

% Style for bibliography.  This came from report.cls.
\newenvironment{thesisbib}[1]
     {\chapter*{\biblioname}%
      \singlespace\vspace{2ex}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\leftmargin}{2.0em}
	    \addtolength{\leftmargin}{-\labelsep}
            \setlength{\itemindent}{-2.0em}
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m} {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Chapter headings

% This is used to replace ps@plain when we have numbers on the top for the
% body of the thesis.  It will only be one sided so evenhead is empty.
\def\ps@plaintop{%
  \let\@mkboth\@gobbletwo%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty%
  \let\@evenhead\@empty%
  \def\@oddhead{\reset@font\hfil\thepage}%
}

% This is the heading used for list of figures and list of tables.
% The header actually generates both the header and the page number
% on the bottom of the page because \textheight may be incorrect on
% the last page of the list if there is a single entry that gets pushed
% to the next page.
\def\ps@capheadings{%
  \let\@mkboth\@gobbletwo%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty%
  \let\@evenhead\@empty%
  \def\@oddhead{%
     \settoheight{\@tmpheighta}{\rightmark}%
     \settoheight{\@tmpheightb}{\thepage}%
     \shortstack{%
        \rule{0in}{\@fullheadheight}\rule{\textwidth}{0in}\\%
        \rightmark\\%
        \rule{0in}{\@headtofootheight}%
          \vspace{-\@tmpheighta}\vspace{-\@tmpheightb}\\%
        \thepage}}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% This creates the chapter and appendix header text.
\def\@makechapterhead#1{{%
   \renewcommand{\baselinestretch}{1.0}\bfseries%
   \begin{center}
   \rule{0in}{0.5in}%
   \MakeUppercase{\@chapapp}
   \@ifundefined{@usesingappend}{\space\thechapter}{}\vspace{2.0ex}\\%
   #1
   \vskip 2.0ex
   \end{center}
}}

% Make table of contents entries for numbered chapter headers.
\renewcommand*\l@chapter[2]{%
    \vskip 1.0ex \@plus\p@
  {\@dottedtocline{0}{1.5em}{1.5em}{\bfseries\noindent#1}{#2}}%
}

% Make table of contents entries for unnumbered chapter headers.
\newcommand*\l@chapterx[2]{%
    \vskip 1.0ex \@plus\p@
  {\@dottedtocline{0}{0em}{1.5em}{\bfseries\noindent#1}{#2}}%
}

% Redefined from report.cls to change left offset.
\renewcommand*\l@section{\@dottedtocline{1}{3.0em}{4.0em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5.3em}{4.9em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{8.5em}{5.6em}}
\renewcommand*\l@paragraph{\@dottedtocline{4}{10.7em}{20.6em}}
\renewcommand*\l@subparagraph{\@dottedtocline{5}{12.9em}{20.6em}}

% Undid 1.7 em indentation for first line in table of contents.
% From latex.ltx.
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}\hspace{-1.7em}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}


% It adds extra 1.7em of indentation, which is undone for the first 
% line in \@caption.
% This is from report.cls.
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{4.0em}}
\let\l@table\l@figure

% This has been modified so that the first line has -1.7em of negative
% space to allow multiple line captions to be indented on the runover
% lines.
% This is from latex.ltx.
\long\def\@caption#1[#2]#3{%
  \par
  \if@gotfirstappendix\else % dont want appendix figures and tables in list
    \addcontentsline{\csname ext@#1\endcsname}{#1}%
      {\protect\numberline{\csname the#1\endcsname}{\hspace{-1.7em}%
          \ignorespaces #2}}%
  \fi
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}


% This creates the headers for the unnumbered chapters (abstract,
% bibliography, etc.).
\def\@schapteroffset{0.0in}
\def\@makeschapterhead#1{{%
   \renewcommand{\baselinestretch}{1.0}\bfseries%
   \begin{center}
   \rule{0in}{\@schapteroffset}%
   #1
   \vskip 2.0ex
   \end{center}
  }}

\def\cl@chapter{%
  \setcounter{chaptercitecount}{0}%
  \if@sequential%
    \@elt{section}\@elt{footnote}%
  \else%
    \@elt{equation}\@elt{figure}\@elt{footnote}\@elt{section}\@elt{table}%
  \fi}

% These commands define the format of the headers for section,
% subsection, and subsubsection commands.
%\@startsection{<name>}{<level>}{<indent>}{<beforeskip>}{<afterskip>}{<style>}*[<altheading>]{<heading>}
\renewcommand\section{%
  \@startsection {section}{1}{\z@}{1.5ex}{0.01ex}% 4th arg was 4.0ex
    {\renewcommand{\baselinestretch}{1.0}\normalfont\normalsize\bfseries}}
\renewcommand\subsection{%
  \@startsection {subsection}{2}{\z@}{1.5ex}{0.01ex}% 4th arg was 4.0ex
    {\renewcommand{\baselinestretch}{1.0}\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{%
  \@startsection {subsubsection}{3}{\z@}{1.5ex}{0.01ex}% 4th arg was 4.0ex
    {\renewcommand{\baselinestretch}{1.0}\normalfont\normalsize\bfseries}}




% These commands generate the figure/table/equation name, and records
% if we have any figures or tables and need a list page for them.
\renewcommand\thefigure{%
  \addtocounter{totalfigurecount}{1}%
  \if@sequential\else\thechapter.\fi\@arabic\c@figure}
\renewcommand\thetable{%
  \addtocounter{totaltablecount}{1}%
  \if@sequential\else\thechapter.\fi\@arabic\c@table}
\renewcommand\theequation{%
  \if@sequential\else\thechapter.\fi\@arabic\c@equation}


% Set single spacing in figures, tables, etc.  This is from latex.ltx.
\def \@floatboxreset {%
        \singlespace
        \reset@font
        \normalsize
        \@setminipage
}

% Set single spacing in footnotes.
\let\ele@footnotetext\@footnotetext
\def\@footnotetext#1{{\singlespace%
                      \ele@footnotetext{#1}}}

% Set single spacing in quote and quotation environment. 
% These are from report.cls.
\renewenvironment{quotation}
                 {\list{}{\singlespace%
                          \listparindent 1.5em%
                          \itemindent    \listparindent
                          \rightmargin   \leftmargin
                          \parsep        \z@ \@plus\p@}%
                  \item\relax}
                 {\endlist}
\renewenvironment{quote}
                 {\list{}{\singlespace%
                          \rightmargin\leftmargin}%
                  \item\relax}
                 {\endlist}

% Set single spacing in the verbatim environment.
% This is from latex.ltx.
\def\verbatim{\singlespace%
      \@verbatim \frenchspacing\@vobeyspaces \@xverbatim}

% Change caption to have period instead of colon.
% This is from report.cls.
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

% Make first paragraph indented.
% this is from report.cls.
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \global\@topnum\z@
                    \@afterindenttrue
                    \secdef\@chapter\@schapter}

% This came from report.cls, and is used to exclude the appendix
% number in the table of contents if there is only one appendix.
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \refstepcounter{chapter}%
                       \typeout{\@chapapp\space\thechapter.}%
                       \if@gotfirstappendix 
                         \@ifundefined{@usesingappend}{
                             \addcontentsline{toc}{chapter}%
                                  {\protect\numberline{\thechapter}#1}%
                         }{%
           		   \addcontentsline{toc}{chapter}{#1}}%
		       \else
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                        \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Create pages of the document.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Create document title page, uncounted, unnumbered.
\def\titlepage{\@ifundefined{@KNEADtitlepage}{}{
	\pagenumbering{gobble}
	\input{\@KNEADtitlepage}
	\newpage
	%\clearpage
	}
}

% Create the signature approval page.
\def\signaturepage{%
}

% Create abstract page(s), counted, not numbered.
\def\abstractpages{\@ifundefined{@abstract}{}{
  \newpage
  \sloppy
  \chapter*{ABSTRACT}
  \addcontentsline{toc}{chapterx}{ABSTRACT}
  \input{\@abstract}
}}


% Create document control page, counted, numbered.
\def\historypages{\@ifundefined{@dochistory}{}{
  \newpage
  \chapter*{DOCUMENT CHANGE HISTORY}
  \addcontentsline{toc}{chapterx}{DOCUMENT CHANGE HISTORY}
  \input{\@dochistory}
	}
}


% Create anknowledgement page, counted, numbered.
\def\acknowledgementpage{\@ifundefined{@acknowledgements}{}{
  \newpage
  \chapter*{ACKNOWLEDGMENTS}
  \addcontentsline{toc}{chapterx}{ACKNOWLEDGMENTS}
  \input{\@acknowledgements}
}}

% Create dedication page, not counted, not numbered.
\def\dedicationpage{\@ifundefined{@dedication}{}{
  \newpage
  \chapter*{DEDICATION}
  \addcontentsline{toc}{chapterx}{DEDICATION}
  \mbox{}
  \vfill
  \input{\@dedication}
  \vfill
}}

% Create document approval page, not counted, not numbered.
\def\approvalpage{\@ifundefined{@docapprovalpage}{}{
  \newpage
  \chapter*{APPROVALS}
  \addcontentsline{toc}{chapterx}{APPROVALS}
  \mbox{}
  %\vfill
  \input{\@docapprovalpage}
  \vfill
}}

% Create preface page(s), counted, numbered.
\def\prefacepages{\@ifundefined{@preface}{}{
  \newpage
  \chapter*{PREFACE}
  \addcontentsline{toc}{chapterx}{PREFACE}
  \input{\@preface}
}}

% Create table of contents pages.
% Need double brackets to keep singlespace and parskip local.
\def\contentspages{%
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    \singlespace%
    \setlength{\parskip}{0em}
    \chapter*{\contentsname}%
    \addcontentsline{toc}{chapterx}{\contentsname}
    %%%\pagestyle{capheadings}%
    \markboth{}{{\bf \hfill Page}}%
    \@starttoc{toc}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
    %\thispagestyle{capheadings}%
  \fi%
}%

% Create list of tables page.
\def\tablespage{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    \singlespace%
    \setlength{\parskip}{0em}%
    \chapter*{\listtablename}%
    \addcontentsline{toc}{chapterx}{\listtablename}%
    \markboth{}{{\bf Table \hfill Page}}%
    {\bf \noindent Table \hfill Page}\\\vspace{-1em}%
    \@starttoc{lot}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
    %\thispagestyle{capheadings}%
  \fi%
}

% Create list of figures page.
\def\figurespage{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    \singlespace%
    \setlength{\parskip}{0em}%
    \chapter*{\listfigurename}%
    \addcontentsline{toc}{chapterx}{\listfigurename}%
    %\pagestyle{capheadings}%
    \markboth{}{{\bf Figure \hfill Page}}%
    {\bf \noindent Figure \hfill Page}\\\vspace{-1em}%
    \@starttoc{lof}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
		
  \fi%
}
 
% Create list of specifications page.
\def\specificationspage{{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    %\singlespace%
    \setlength{\parskip}{0em}%
    \chapter*{\listspecificationsname}%
    \addcontentsline{toc}{chapterx}{\listspecificationsname}%
    %\pagestyle{capheadings}%
    \markboth{}{{\bf Specification \hfill Page}}%
    {\bf \noindent Specification \hfill Page}\\\vspace{-1em}%
       \@starttoc{aux_spec}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
  \fi%
}}

% Create list of test descriptions page.
\def\testprocedurespage{{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    %\singlespace%
    \setlength{\parskip}{0em}%
    \chapter*{\listtestproceduresname}%
    \addcontentsline{toc}{chapterx}{\listtestproceduresname}%
    %\pagestyle{capheadings}%
    \markboth{}{{\bf Test Procedures \hfill Page}}%
    {\bf \noindent Test Procedures \hfill Page}\\\vspace{-1em}%
       \@starttoc{aux_tproc}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
  \fi%
}}


% Create list of check lists page.
\def\checklistspage{{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    %\singlespace%
    \setlength{\parskip}{0em}%
    \chapter*{\listchecklistsname}%
    \addcontentsline{toc}{chapterx}{\listchecklistsname}%
    %\pagestyle{capheadings}%
    \markboth{}{{\bf Check Lists \hfill Page}}%
    {\bf \noindent Check Lists \hfill Page}\\\vspace{-1em}%
       \@starttoc{aux_cklst}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
  \fi%
}}


% Create list of operation procedures page.
\def\operprocedurespage{{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    %\singlespace%
    \setlength{\parskip}{0em}%
    \chapter*{\listoperproceduresname}%
    \addcontentsline{toc}{chapterx}{\listoperproceduresname}%
    %\pagestyle{capheadings}%
    \markboth{}{{\bf Operation Procedures \hfill Page}}%
    {\bf \noindent Operation Procedures \hfill Page}\\\vspace{-1em}%
       \@starttoc{aux_oproc}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
  \fi%
}}

% Create list of expectations page.
\def\expectationspage{
  \setcounter{@tmppage}{\value{page}}
  {\addvspace{10pt}%
    \let\saveaddvspace=\addvspace%
    \def\addvspace##1{}%
    \singlespace%
    \setlength{\parskip}{1em}%
    \chapter*{\listexpectationsname}%
    \addcontentsline{toc}{chapterx}{\listexpectationsname}%
    %\pagestyle{capheadings}%
    \markboth{}{{\bf Expectation \hfill Page}}%
    {\bf \noindent Expectation \hfill Page}\\\vspace{-1em}%
       \@starttoc{aux_xpctn}%
    \let\addvspace=\saveaddvspace%
  }
  \ifnum \value{@tmppage} < \value{page}%
  \fi%
}

% Produce all of the pages up to the start of chapter 1.
\def\startingpages{%

	  \pagestyle{fancy}



    %%% put page(s) of document control stuff that is not included in final but is helpful for CM tracking
    \@ifundefined{@doccontrol}{}{
	   \input{\@doccontrol}
			\clearpage
    }


	\if@showtpg
		\titlepage
	\fi%showtpg
	

  \pagenumbering{roman}
  
	\approvalpage
  %\signaturepage
	\historypages
  \abstractpages
  \acknowledgementpage
  \dedicationpage
  \prefacepages
  %
  \setlength{\textheight}{\@alttextheight}%
  \newpage
  \setlength{\headsep}{\@altheadsep}%
	
  \if@showtoc
     \contentspages
     \setlength{\textheight}{\@realtextheight}%
  \fi%showtoc
	
   \if@showlot
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
    \tablespage
    \setlength{\textheight}{\@realtextheight}%
  \fi%showlot
	
  \if@showlof
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
    \figurespage
    \setlength{\textheight}{\@realtextheight}%
  \fi%showlof
	
  \if@showlos
	{
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
		{
		  \renewcommand{\baselinestretch}{1.0}%
			\renewcommand{\arraystretch}{1.0}%
			\normalsize%
			\begin{singlespace}
				\specificationspage
			\end{singlespace}
		}
    \setlength{\textheight}{\@realtextheight}%
	  \setlength{\textheight}{\@alttextheight}%
	}
  \fi%showlos
	
  \if@showloe
  	\setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
    \expectationspage
    \setlength{\textheight}{\@realtextheight}% 
  \fi%showloe

  \if@showlod
	{
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
		{
		  \renewcommand{\baselinestretch}{1.0}%
			\renewcommand{\arraystretch}{1.0}%
			\normalsize%
			\begin{singlespace}
				\testprocedurespage
			\end{singlespace}
		}
    \setlength{\textheight}{\@realtextheight}%
	  \setlength{\textheight}{\@alttextheight}%
	}
  \fi%showlod
  
  
	
	\if@showlop
	{
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
		{
		  \renewcommand{\baselinestretch}{1.0}%
			\renewcommand{\arraystretch}{1.0}%
			\normalsize%
			\begin{singlespace}
				\operprocedurespage
			\end{singlespace}
		}
    \setlength{\textheight}{\@realtextheight}%
	  \setlength{\textheight}{\@alttextheight}%
	}
  \fi%showlop
  
  \if@showlol
	{
    \setlength{\textheight}{\@alttextheight}%
    \newpage
    \setlength{\headsep}{\@altheadsep}%
		{
		  \renewcommand{\baselinestretch}{1.0}%
			\renewcommand{\arraystretch}{1.0}%
			\normalsize%
			\begin{singlespace}
				\checklistspage
			\end{singlespace}
		}
    \setlength{\textheight}{\@realtextheight}%
	  \setlength{\textheight}{\@alttextheight}%
	}
  \fi%showlol
	
  \addtocontents{toc}{{\vskip 1.0ex \@plus\p@
    {\bfseries\noindent \chaptername \hfill}}}%
  \addtocontents{toc}{ }
  \newpage
  \setlength{\headsep}{\@realheadsep}%
}

% Create the proposal title.
\def\proposaltitle{%
\begin{center}
  \bfseries\@title\\
  by\\
  \@author
  \vspace{2ex}
\end{center}
}

% Stuff that is done at the startup.
\def\initialstuff{%
  % open the aux file for the bibliography
  \immediate\openout12=\@bibliofile.aux
  \immediate\write12{\string\bibstyle{uribib}}
  \immediate\write12{\string\bibdata{\@reffile}}
  %
  \@ifundefined{@myusefigurespage}{}{\@usefigurespagetrue}
  \@ifundefined{@myusetablespage}{}{\@usetablespagetrue}
  %
  \newcounter{@tmppage}
  \newlength{\@tmpheighta}
  \newlength{\@tmpheightb}
  \if@proposal\else
    \if@libraryrightspage
      %%%wlc not used for article \libraryrightspage
    \fi
    \if@noprelim\else
      \startingpages
    \fi
  \fi
  \pagenumbering{arabic}
  \if@topnumbers
    \def\ps@plain{\ps@plaintop}
  \fi
  \def\@schapteroffset{0.5in}
  \if@proposal
    \proposaltitle
  \fi  
}

\AtBeginDocument{
  \if@proposal
    \pagenumbering{arabic}
    \if@topnumbers
      \def\ps@plain{\ps@plaintop}
    \fi
    \proposaltitle
  \fi  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\startappendix{%
  \@ifundefined{@multappendix}{\def\@usesingappend{Y}}{}%
  \if@wantchapterref\else
    %%%%%MILSTD498%%%%%\def\addcustomcontentsline{\addcontentsline{toc}{chapterx}{\listrefname}}
    %%%%%MILSTD498%%%%%\if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi
    \if@simpleref\else
      %%%%%MILSTD498%%%%%\if@filesw\immediate\write\@auxout{\string\bibdata{\@reffile}}\fi
      %%%%%MILSTD498%%%%%\@input{\jobname.bbl}
      %%%%%MILSTD498%%%%%\add@biblist{\jobname}
    \fi
    \newpage
  \fi

  \appendix
}

% This function will add the "List of Figures" and "List of Tables" and "List of Requirements"
% if there are any figures or tables in the thesis.
\def\@addfigtbl{%
  \ifnum\value{totalfigurecount}>0
    \if@filesw\immediate\write\@auxout{\string\myusefigurespage}\fi
  \fi
  \ifnum\value{totaltablecount}>0
    \if@filesw\immediate\write\@auxout{\string\myusetablespage}\fi
  \fi
}

% This function is called at \end{document} to create the bibliography.
\def\biblio{%
  \if@nobib\else%
    \if@simpleref
      \if@filesw\immediate\write\@auxout{\string\bibdata{\@reffile}}\fi
      \if@proposal
        \if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi
      \else
        \if@noprelim
          \if@filesw\immediate\write\@auxout{\string\bibstyle{\@refbstfile}}\fi
        \else
          \@addfigtbl
        \fi
      \fi
      \@input{\jobname.bbl}
      \add@biblist{\jobname}
    \else
      \if@gotfirstappendix\else
        \startappendix
      \fi
      \@addfigtbl
      \@input{\@bibliofile.bbl}
      \add@biblist{\@bibliofile}
    \fi%
  \fi
}

%%%%%%%% This will add a call to the biblio function when \end{document} is reached.
%%%%%%%%%%%%MILSTD498%%%%%\let\@enddocumenthook\biblio
%%%%%%%\let\@enddocumenthook\biblio
%%%%%%%
%%%%%%%% This is from latex.ltx to allow us to print the message about bibtex
%%%%%%%% after the final clearpage so it will not be buried in a lot of
%%%%%%%% other messages.
%%%%%%%\def\enddocument{%
   %%%%%%%\let\AtEndDocument\@firstofone
   %%%%%%%\@enddocumenthook
   %%%%%%%\@checkend{document}%
   %%%%%%%\clearpage
   %%%%%%%\begingroup
     %%%%%%%\if@filesw
       %%%%%%%\immediate\closeout\@mainaux
       %%%%%%%\let\@setckpt\@gobbletwo
       %%%%%%%\let\@newl@bel\@testdef
       %%%%%%%\@tempswafalse
       %%%%%%%\makeatletter \input\jobname.aux
     %%%%%%%\fi
     %%%%%%%\@dofilelist
     %%%%%%%\ifdim \font@submax >\fontsubfuzz\relax
       %%%%%%%\@font@warning{Size substitutions with differences\MessageBreak
                  %%%%%%%up to \font@submax\space have occurred.\@gobbletwo}%
     %%%%%%%\fi
     %%%%%%%\@defaultsubs
     %%%%%%%\@refundefined
     %%%%%%%\if@filesw
       %%%%%%%\ifx \@multiplelabels \relax
         %%%%%%%\if@tempswa
           %%%%%%%\@latex@warning@no@line{Label(s) may have changed.
               %%%%%%%Rerun to get cross-references right}%
         %%%%%%%\fi
       %%%%%%%\else
         %%%%%%%\@multiplelabels
       %%%%%%%\fi
     %%%%%%%\fi
     %%%%%%%\@ifundefined{@biblist}{}{
       %%%%%%%\immediate\write16{ }
       %%%%%%%\immediate\write16{BibTeX Info: The commands to generate the %
                          %%%%%%%bibliography and references are: }
       %%%%%%%\immediate\write16{\@biblist}
       %%%%%%%\immediate\write16{ }
       %%%%%%%\immediate\openout13=genbib.bat
       %%%%%%%\immediate\write13{\@biblist}
       %%%%%%%\immediate\closeout13
     %%%%%%%}
   %%%%%%%\endgroup 
   %%%%%%%\deadcycles\z@\@@end}
   


%%%%% Manually numbered requirement
%%%%% table for requirements


%%%\newlength{\RqmtMiniPageWidth}
%%%\if@dobindprt % set margins to 1.5" on left (leave room for binding) and 1.0" right
%%%\setlength{\RqmtMiniPageWidth}{4.7in}
%%%\else%!dobindprt so set margins to 1.0" on left and right sides
%%%\setlength{\RqmtMiniPageWidth}{5.2in}
%%%\fi%dobindprt


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% commands to define an \hline that won't allow a page break, ala \\* in longtable
% http://tex.stackexchange.com/questions/6350/how-to-disable-pagebreak-on-hline-in-longtable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
\makeatletter
\def\nobreakhline{%
\noalign{\ifnum0=`}\fi
 \penalty\@M
\futurelet\@let@token\LT@@nobreakhline}
\def\LT@@nobreakhline{%
\ifx\LT@next\hline
  \global\let\LT@next\@gobble
 \ifx\CT@drsc@\relax
   \gdef\CT@LT@sep{%
     \noalign{\penalty\@M\vskip\doublerulesep}}%
 \else
   \gdef\CT@LT@sep{%
     \multispan\LT@cols{%
       \CT@drsc@\leaders\hrule\@height\doublerulesep\hfill}\cr}%
 \fi
\else
 \global\let\LT@next\empty
 \gdef\CT@LT@sep{%
   \noalign{\penalty\@M\vskip-\arrayrulewidth}}%
\fi
\ifnum0=`{\fi}%
\multispan\LT@cols
 {\CT@arc@\leaders\hrule\@height\arrayrulewidth\hfill}\cr
\CT@LT@sep
\multispan\LT@cols
 {\CT@arc@\leaders\hrule\@height\arrayrulewidth\hfill}\cr
\noalign{\penalty\@M}%
\LT@next}

\makeatother


%% Stuff to make biblatex work, see
%%https://tex.stackexchange.com/questions/343856/biblatex-produces-incomplete-bcf-with-biber-backend

%%%\makeatletter
%%%\usepackage{patchcmd}
%%%\patchcommand\enddocument
  %%%{\deadcycles}
  %%%{\let\AfterEndDocument\@firstofone    
   %%%\@afterenddocumenthook
   %%%\deadcycles}
  %%%{}
  %%%{\AtEndDocument{%
     %%%\let\etb@@end\@@end
     %%%\def\@@end{%
       %%%\let\AfterEndDocument\@firstofone
       %%%\@afterenddocumenthook
       %%%\etb@@end}}}
%%%\makeatother
			
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% end \nobreakhline
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

