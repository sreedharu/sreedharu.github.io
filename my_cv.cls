%%Identification
%%The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2020/06/12 My custom CV class]
\listfiles
\LoadClass{article}


%-----------------------------------------------------------------
%                class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-----------------------------------------------------------------


%-----------------------------------------------------------------
%                required packages
%-----------------------------------------------------------------   
\RequirePackage{titlesec}
\RequirePackage{titling}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{enumitem}
\RequirePackage{hyperref}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{xcolor}
\RequirePackage{fontawesome}
\definecolor{darkblue}{rgb}{0,0,.5} % defines link colour
\definecolor{mygray}{gray}{0.4}
\RequirePackage{dashrule}
\RequirePackage{tikz}
\RequirePackage{tikzpagenodes}
\usetikzlibrary{calc,positioning,backgrounds,matrix}
\RequirePackage{bibentry}
\RequirePackage{natbib}
\RequirePackage{multicol}
 %----------------------Page setup--------------------------------
\geometry{
   paperwidth=216mm, paperheight=300mm,
   left=15mm,  %% or inner=23mm
   right=15mm, %% or outer=18mm
   top=20mm, bottom=20mm,
   headheight=\baselineskip,
   headsep=7mm,
   footskip=7mm
}
 %----------------------------Hypersetup--------------------------
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    filecolor=black,      
    urlcolor=black,
}
 %----------------------Font Family-------------------------------
%\renewcommand{\familydefault}{\sffamily}
%\renewcommand{\rmdefault}{\sffamily}
% load external fonts

 %----------------------------------------------------------------
\renewcommand{\maketitle}{
{\Huge\raggedright\bfseries
\theauthor}

\vspace{.5em}

{\large\bfseries Postdoctoral Fellow, Indian institute of Technology Madras}

\vspace{.4em}

{\footnotesize \faMapMarker \hspace{0.6em} \bfseries 11, 1st cross, RBI colony, 3rd Block, Jayanagar East, Bangalore, India} 

{\footnotesize \faEnvelope \hspace{0.3em} \bfseries sreedhar.aie@gmail.com}  \hspace{0.5em}   \faPhone \hspace{0.2em} {\footnotesize\bfseries +91-9074577823}

{\footnotesize \faChain \hspace{0.4em} \href{https://sites.google.com/site/sreedharunnikrishnakurup/home}{\bfseries https://sites.google.com/site/sreedharunnikrishnakurup/home}}

{\footnotesize \faLinkedin \hspace{0.5em} \href{https://www.linkedin.com/in/sreedhar-unnikrishnakurup-1a318866}{\bfseries https://www.linkedin.com/in/sreedhar-unnikrishnakurup-1a318866}}

{\footnotesize \faGraduationCap \hspace{0.1em} \href{https://scholar.google.com/citations?user=rgeu6SAAAAAJ\&hl=en}{\bfseries https://scholar.google.com/citations?user=rgeu6SAAAAAJ\&hl=en}}
}
%----------------------------Section------------------------
\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright\bfseries\uppercase} % Make the \section headers large (\Large),
  {}        % small capitals (\scshape) and left aligned (\raggedright)
  {0em} % Can be used to give a prefix to all sections, like 'Section ...'
  {}                    % Can be used to insert code before the heading
 [{\titlerule[1.5pt]}]
   \titlespacing{\section}
  {0em}{0.25em}{0em}
%--------------------------Subsection --------------------------
  \titleformat{\subsection}
  {\Large\raggedright}
  {}
  {0em}
  {}
  \titlespacing{\subsection}
  {0em}{0.25em}{0.5em}
%-----------------------------Subsubsection---------------
  \titleformat{\subsubsection}
  {\normalsize\raggedright\bfseries}
  {}
  {0em}
  {}
  \titlespacing{\subsubsection}
  {0em}{0.25em}{0.5em}
%-----------------------------Subsubsubsection---------------
  \titleformat{\paragraph}
  {\raggedright}
  {$\bullet$}
  {0.5em}
  {}
  \titlespacing{\subsubsubsection}
  {0em}{0em}{0em}
  %-----------------------------Subsubsubsection---------------
  \titleformat{\subparagraph}
  {}
  {$\bullet$}
  {0.5em}
  {}
  \titlespacing{\subsubsubsubsection}
  {0em}{0em}{0em}
%--------------------------Data to subsection--------------------
\newcommand{\datedsubsection}[2]{%
  \paragraph{\color{mygray} \faCalendar \hspace{0.2em} #1 \hfill \faMapMarker \hspace{0.2em} #2}}%
%----------------------Language----------------------------------
\colorlet{languagecolor}{black}
\colorlet{nolanguagecolor}{gray}
\newcount\languagecount
\newcommand\languageknowledge[2]
  {%
    \hbox
      {%
        \makebox[2cm][l]{#1}%
        \languagecount=0
        \loop\ifnum\languagecount<#2
          \advance\languagecount1
          \textcolor{languagecolor}{$\bullet$}%
        \repeat
        \loop\ifnum\languagecount<5
          \advance\languagecount1
          \textcolor{nolanguagecolor}{$\bullet$}%
        \repeat
      }%
  }
%-----------------------------------------------------------------
% Define an environment for cvskill
\makeatletter
\newcount\my@repeat@count
\newcommand{\cvSkill}[1]{%
  \begingroup
  \my@repeat@count=\z@
  \@whilenum\my@repeat@count<#1\do{\faCircle\advance\my@repeat@count\@ne}%
  \my@repeat@count=\numexpr5-\z@\relax
  \@whilenum\my@repeat@count>#1\do{\faCircleO\advance\my@repeat@count\m@ne}%
  \endgroup
}
\makeatother
%-----------------------------------------------------------------

 