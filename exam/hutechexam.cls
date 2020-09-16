% !TEX program = xelatex
\LoadClass[11pt]{article}
\RequirePackage{geometry}
\RequirePackage{unicode-math}
\RequirePackage{etoolbox}
\RequirePackage{fontspec}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{indentfirst}
\RequirePackage{setspace}

\setmainfont{Source Serif Pro}
\setmathfont{STIX Two Math}[Scale=MatchLowercase]
\setmonofont{Consolas}[Scale=MatchLowercase]
%\setlist[itemize]{noitemsep, topsep=0.5em}
\geometry{
    a4paper,
    left=15mm,
    right=10mm,
    top=15mm,
    bottom=15mm,
    includefoot=true
}
\fancypagestyle{style}{
    \fancyhf{}
    \fancyfoot[C]{\textit{Cán bộ coi thi không giải thích gì thêm}}
    \fancyfoot[R]{Trang \thepage/\pageref*{LastPage}}
    \renewcommand{\headrulewidth}{0pt}  
    \renewcommand{\footrulewidth}{1pt}}
\pagestyle{style}

\makeatletter
\newcommand*{\@exam}{}%
\newcommand*{\@faculty}{\textbf{{KHOA HỆ THỐNG THÔNG TIN QUẢN LÝ}}}%
\newcommand*{\@course}{}%
\newcommand*{\@code}{}%
\newcommand*{\@credit}{\textbf{03}}%
\newcommand*{\@examtime}{90}%
\newcommand*{\@examcode}{\textbf{01}}%
\newcommand*{\@examdoc}{CÓ ✓\hspace{1em} KHÔNG ☐}%

\newcommand{\exam}[3]{\renewcommand{\@exam}{\textbf{HỌC KỲ {#1} LẦN {#2} NĂM HỌC {#3}}}}%
\newcommand{\faculty}[1]{\renewcommand{\@faculty}{#1}}%
\newcommand{\course}[1]{\renewcommand{\@course}{\textbf{#1}}}%
\newcommand{\code}[1]{\renewcommand{\@code}{\textbf{#1}}}%
\newcommand{\credit}[1]{\renewcommand{\@creadit}{\textbf{#1}}}%
\newcommand{\examtime}[1]{\renewcommand{\@examtime}{#1}}%
\newcommand{\examcode}[1]{\renewcommand{\@examcode}{\textbf{#1}}}%
\newcommand{\noexamdoc}{\renewcommand{\@examdoc}{CÓ ☐\hspace{1em} KHÔNG ✓}}%

\newcommand*{\examhead}{
    \begin{center}
        \begin{tabular*}{\linewidth}{@{\extracolsep{\fill}}p{0.3\linewidth} p{0.7\linewidth}}
            \begin{center}
                \includegraphics[height=1.5cm]{hutech.png} \\
                \@faculty \\
                \textit{(Đề thi có \pageref*{LastPage}\ trang)}
            \end{center}
            &
            \begin{center}
                \begin{tabular}[t]{l l}
                    \textbf{ĐỀ THI:} &\@exam \\
                    Ngành/Lớp: &\@faculty \\
                    Tên học phần: &\@course \\
                    Mã học phần: &\@code \hspace{4em} Số tín chỉ: \@credit \\
                    Thời gian làm bài: &\@examtime\ phút \\
                    Mã đề (nếu có): &\@examcode \\
                    \multicolumn{2}{l}{\textbf{SỬ DỤNG TÀI LIỆU: \hspace{1em} \@examdoc}}\\
                \end{tabular}
            \end{center}
            \\
            \hline
        \end{tabular*}
    \end{center}
    \vspace{0.5em}
}
\makeatother

\newcounter{question}
\newenvironment{question}[1]{
    \stepcounter{question}\textbf{Câu \thequestion\ (#1 điểm).}
    \ \ignorespaces
}{\vspace{0.5em}}

\onehalfspacing