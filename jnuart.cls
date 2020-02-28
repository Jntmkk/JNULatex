% Author: Dongsheng Deng
% Homepage: https://ddswhu.me/
% Email: elegantlatex2e@gmail.com
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

% --- Class structure: identification part
\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{jnuart}[2019/10/17 v0.01 jnuart Paper class]

% 工具宏
\RequirePackage{kvoptions}      % 键值对
\RequirePackage{ifthen}         % if else 扩展
\RequirePackage{ifxetex}        % 判断文件是否是xelatex编译
\RequirePackage{etoolbox}       % 强大的工具包
\RequirePackage{calc}           % 数值计算包

% ---------------------------------------------------------------%
% ->> Declare options
% ---------------------------------------------------------------%

\newcommand{\stypath}{}
\newcommand{\thisclassname}{jnuart}
\newcommand{\githubaddr}{'https://github.com'}
\newcommand{\githubguideaddr}{'https://github.com'}

\SetupKeyvalOptions{family=JNU, prefix=JNU@, setkeys=\kvsetkeys}
\newcommand{\ekv}[1]{\kvsetkeys{JNU}{#1}}

\DeclareStringOption[cn]{lang}
\DeclareVoidOption{cn}{\ekv{lang = cn}}
\DeclareVoidOption{en}{\ekv{lang = en}}



\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessKeyvalOptions*\relax
\LoadClass{ctexart}

\ifdefstring{\JNU@lang}{cn}{
    \IfFileExists{\stypath jnucn.cfg}{
        \input{\stypath jnucn.cfg}}{
        \ClassError{\thisclassname}{the file 'jnucn.cfg' does not exist at path '\stypath' specified by 'cn' option.More details \githubguideaddr}
    }}{}


\ifdefstring{\JNU@lang}{en}{
    \IfFileExists{\stypath jnueng.cfg}{
      \input{\stypath jnueng.cfg}}{
      \ClassError{\thisclassname}{the file 'jnueng.cfg' does not exist at path '\stypath' specified by 'eng' option.More details \githubguideaddr}}
}{}


% hook
\newif\ifsetabsnumstyle \setabsnumstyletrue
\apptocmd{\maketitle}{\emptypagestylewrapper}{}{}
% \apptocmd{\tableofcontents}{\thispagestyle{plain}\clearpage}{}{}
% \pretocmd{\tableofcontents}{\clearpage\phantomsection}{}{}

\BeforeBeginEnvironment{abstract}{\ifsetabsnumstyle \pagenumbering{Roman}\pagestyle{plain}\fi \setabsnumstylefalse}
\AfterEndEnvironment{abstract}{\setabsnumstylefalse\clearpage}
\AtBeginEnvironment{abstract}{\phantomsection\addcontentsline{toc}{section}{\abstractname}}
\AfterPreamble{\pagestyle{empty}}
\IfFileExists{\stypath jnucom.cfg}{
    \input{\stypath jnucom.cfg}}{
    \ClassError{\thisclassname}{the file 'jnuzh.cfg' does not exist at path '\stypath'.More details '\githubguideaddr'}}

\newcommand{\makedeclaretion}{
  \newpage
  \datitle{\jnudltitle}
  \vspace{15pt}
  \jnudlcontent\jnudlsig
  \vspace{45pt}
  \datitle{\jnuattitle}
  \vspace{15pt}
  \jnuatcontent\jnuatsig
  \vspace{55pt}
  \jnudasig
}
\newcommand{\makehome}{
  \newpage
  \begin{center}
    \textbf{\ehs\schoolName\degree 学位毕业论文}
  \end{center}
  \vspace{25pt}
  \begin{flushleft}
  \hometextfont
  {\homeitemfont 题目（中英对照）：}\\
  \titleCn \\
  \titleEn \\[\homeitemsep] 
  {\homeitemfont 作者姓名：} \authorName \\[\homeitemsep]
  {\homeitemfont 指导老师姓名\\ 及学位职称：} \advisor \\[\homeitemsep]
  {\homeitemfont 学科、专业名称：} \disciplineName \\[\homeitemsep]
  {\homeitemfont 论文提交日期：} \commitDate \\[\homeitemsep]
  {\homeitemfont 论文答辩日期：} \replyDate \\[\homeitemsep]
  {\homeitemfont 答辩委员会主席：}\programCoChairs \\[\homeitemsep] 
  {\homeitemfont 论文评阅人：} \reviewer \\[\homeitemsep]
  {\homeitemfont 学位授予单位和日期：} \grantDate \\[\homeitemsep]
  \end{flushleft}
}

% 纸张尺寸设置
% settings for the hyperref and geometry
\RequirePackage[
  top=2.5cm,bottom=2.0cm,left=2.5cm,right=2.0cm,
  headheight=15pt,
  ]{geometry}
\setlength{\headsep}{25pt}
% \setlength{\marginparwidth}{0pt}
% \setlength{\marginparpush}{0pt}

\RequirePackage{hyperref}
\hypersetup{
  pdfborder={0 0 0},
  colorlinks=true,
  linkcolor={winered},
  urlcolor={winered},
  filecolor={winered},
  citecolor={winered},
  linktoc=all,
}

\RequirePackage{bookmark}
\bookmarksetup{
  numbered,
  addtohook={%
    \ifnum\bookmarkget{level}>1 %
      \bookmarksetup{numbered=false}%
    \fi
  },
}
\RequirePackage{titlesec}
\titleformat{\section}[hang]{\xss\htf}{\thesection}{1em}{}
\titleformat{\subsection}[hang]{\shs\htf}{\thesubsection}{0.5em}{}
\titleformat{\subsubsection}[hang]{\shs\htf}{\thesubsubsection}{0.5em}{}

\titlespacing{\section}{0pt}{*5}{*3}
\titlespacing{\subsection}{0pt}{*1}{*1}
\titlespacing{\subsubsection}{0pt}{*0.5}{*0.5}

\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amssymb}

\RequirePackage{tocbibind}% 目录自引用
\RequirePackage{tocloft}
\setlength{\cftsubsecindent}{0em}
\renewcommand{\cfttoctitlefont}{\centering\Large\bfseries}
\renewcommand{\cftaftertoctitle}{}
\renewcommand{\cftsecdotsep}{\cftsubsecdotsep}
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}}
\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftsecpagefont}{\normalfont (\ }
\renewcommand{\cftsecafterpnum}{\ )}
\renewcommand{\cftsubsecpagefont}{\normalfont (\ }
\renewcommand{\cftsubsecafterpnum}{\ )}



% 摘要
\RequirePackage{abstract}


% \newcommand{\}{\}
\linespread{1.5}                %行距
\ziju{0.065}                    %字间距


% 首页设置

% 摘要设置

% 目录设置

% 正文设置

% 参考文献设置

% 索引设置

% 论文清设置

% 致谢设置

% 数学环境样式设置

% 列表设置

% 图标样式设置

% 标题样式设置

% 页眉、页脚样式设置



