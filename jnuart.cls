% Author: Dongsheng Deng
% Homepage: https://ddswhu.me/
% Email: elegantlatex2e@gmail.com
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

% --- Class structure: identification part
\ProvidesClass{jnuart}[2019/10/17 v0.01 jnuart Paper class]
\NeedsTeXFormat{LaTeX2e} 



% 工具宏
\RequirePackage{kvoptions}      % 键值对
\RequirePackage{ifthen}         % if else 扩展
\RequirePackage{ifxetex}        % 判断文件是否是xelatex编译
\RequirePackage{etoolbox}       % 强大的工具包
\RequirePackage{calc}           % 数值计算包

% 默认载入 ctexart 宏包 继承默认属性，修改部分样式 适配不同论文格式要求
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessKeyvalOptions*\relax
\LoadClass{ctexart}  

% 新建命令

% 新建环境



% 纸张尺寸设置

% 字体、字号、行间距、字间距设置
\newcommand{\stf}{\songti}       %% 宋体h
\newcommand{\htf}{\heiti}        %% 黑体
\newcommand{\fsf}{\fangsong}     %% 仿宋
\newcommand{\ksf}{\kaishu}       %% 楷体
\newcommand{\lsf}{\lishu}        %% 隶书
\newcommand{\yyf}{\youyuan}      %% 幼圆
\newcommand{\yhf}{\yahei}        %% 雅黑

\newcommand{\xls}{\tiny}         %% 小六
\newcommand{\lhs}{\scriptsize}   %% 六号
\newcommand{\xws}{\footnotesize} %% 小五 
\newcommand{\whs}{\small}        %% 五号
% \newcommand{\xss}{\normalsize}   %% 小四 
\newcommand{\shs}{\fontsize{14pt}{21pt}\selectfont}  %% ctex缺少直接对应的字号  
\newcommand{\xss}{\large}        %% 小三
\newcommand{\xes}{\Large}        %% 小二
\newcommand{\ehs}{\LARGE}        %% 二号
\newcommand{\xys}{\huge}         %% 小一
\newcommand{\yhs}{\Huge}         %% 一号
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



