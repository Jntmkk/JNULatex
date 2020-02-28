% Author: Dongsheng Deng
% Homepage: https://ddswhu.me/
% Email: elegantlatex2e@gmail.com
% Lastest Version: https://github.com/ElegantLaTeX/ElegantPaper

% --- Class structure: identification part
\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{jnuart}[2019/10/17 v0.01 jnuart Paper class]
% ---------------------------------------------------------------%
% ->> Declare options
% ---------------------------------------------------------------%
%
\newcommand{\stypath}{}
\newcommand{\thisclassname}{jnuart}
\IfFileExists{\stypath jnucom.cfg}{
    \input{\stypath jnucom.cfg}
}{
    \PackageError{\thisclassname}{the file 'jnuzh.cfg' does not exist at path '\stypath'.More details '\githubguideaddr'}
}
\DeclareOption{eng}{
    \AtEndOfPackage{% class cfg loaded after package to make preamble commands take effect
    \IfFileExists{\stypath jnueng.cfg}{
        \input{\stypath jnuzh.cfg}
    }{
        \PackageError{\thisclassname}{the file 'jnueng.cfg' does not exist at path '\stypath' specified by 'eng' option.More details \githubguideaddr}
    }
    }
}
\DeclareOption{zh}{
    \AtEndOfPackage{% class cfg loaded after package to make preamble commands take effect
    \IfFileExists{\stypath jnuzh.cfg}{
        \input{\stypath jnuzh.cfg}
    }{
        \PackageError{\thisclassname}{the file 'jnuzh.cfg' does not exist at path '\stypath' specified by 'zh' option.More details \githubguideaddr}
    }
    }
}
\ExecuteOptions{zh,a4paper,zihao=-4}
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{ctexart}
}
\ProcessOptions\relax
\LoadClass{ctexart}



% 工具宏
\RequirePackage{kvoptions}      % 键值对
\RequirePackage{ifthen}         % if else 扩展
\RequirePackage{ifxetex}        % 判断文件是否是xelatex编译
\RequirePackage{etoolbox}       % 强大的工具包
\RequirePackage{calc}           % 数值计算包

% \ProcessKeyvalOptions*\relax

% 新建命令

% 新建环境



% 纸张尺寸设置


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



