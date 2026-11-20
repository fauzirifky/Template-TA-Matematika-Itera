% Template TA Matematika ITERA -- pengembangan dan pemeliharaan: Dr. Rifky Fauzi, S.Si., M.Si.

\ProvidesClass{TA-Rifky-Matematika}[2026/11/20 v2.0 Template Tugas Akhir Matematika ITERA]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[12pt,twoside,openright,final]{book}
\RequirePackage[indonesian]{babel}
\RequirePackage{times}
\RequirePackage{setspace}
\RequirePackage[a4paper,left=3.5cm,right=2.5cm,top=3cm,bottom=3cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage[export]{adjustbox}
\RequirePackage{amssymb,amsmath,amsthm,amsfonts,enumerate,tabularx,ifthen} 
\RequirePackage{fancyhdr}
\RequirePackage{parskip}
\RequirePackage[format=hang,font=small,labelfont=bf,labelsep=quad]{caption}
\DeclareCaptionFont{gambarFS}{\fontsize{10}{12}\selectfont}
\DeclareCaptionFont{tabelFS}{\fontsize{11}{13}\selectfont}
\captionsetup[figure]{font=gambarFS}
\captionsetup[table]{font=tabelFS}

\numberwithin{equation}{chapter}

\theoremstyle{plain}
\newtheorem{teorem}{Teorema}[section]
\newtheorem{prop}[teorem]{Proposisi}
\newtheorem{lemma}[teorem]{Lemma}
\newtheorem{coro}{Akibat}[teorem]
\newtheorem*{bukti}{Bukti}

\theoremstyle{remark}
\newtheorem*{remark}{Catatan}

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]

\renewcommand{\qedsymbol}{$ \blacksquare $}
\theoremstyle{definition}
\newtheorem{defi}{Definisi}[section]

\RequirePackage{datetime}
\newdateformat{tanggalbulantahun}{\THEDAY~\monthname[\THEMONTH]~\THEYEAR}

\RequirePackage{multirow}
\RequirePackage[table]{xcolor}
\newlength{\Oldarrayrulewidth}
\newcommand{\Cline}[2]{
	\noalign{\global\setlength{\Oldarrayrulewidth}{\arrayrulewidth}}
	\noalign{\global\setlength{\arrayrulewidth}{#1}}\cline{#2}
	\noalign{\global\setlength{\arrayrulewidth}{\Oldarrayrulewidth}}
}

\lhead{}\chead{}\rhead{}
\lfoot{}\cfoot{\thepage}\rfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\newcommand{\@thesisJudul}{Judul TA Bahasa Indonesia}
\DeclareRobustCommand{\JudulTA}[1]{
    \renewcommand{\@thesisJudul}{#1}
}
\newcommand{\@thesisTitle}{Judul TA Bahasa Inggris}
\DeclareRobustCommand{\Title}[1]{
    \renewcommand{\@thesisTitle}{#1}
}
\newcommand{\@mahasiswaNama}{Nama Mahasiswa}
\DeclareRobustCommand{\NamaMahasiswa}[1]{
   \renewcommand{\@mahasiswaNama}{#1}
}
\newcommand{\@mahasiswaNamaKapital}{Nama Mahasiswa}
\DeclareRobustCommand{\NamaKapital}[1]{
   \renewcommand{\@mahasiswaNamaKapital}{#1}
}
\newcommand{\@mahasiswaNim}{NIM mahasiswa}
\DeclareRobustCommand{\NIMMahasiswa}[1]{
   \renewcommand{\@mahasiswaNim}{#1}
}
\newcommand\@prodiNama{Matematika}
\DeclareRobustCommand\ProgramStudi[1]{
   \renewcommand\@prodiNama{#1}
}
\newcommand\@dept{Mathematics}
\DeclareRobustCommand\Department[1]{
   \renewcommand\@dept{#1}
}
\newcommand\@bidstudi{Bidang Studi}
\DeclareRobustCommand\BidangStudi[1]{
   \renewcommand\@bidstudi{#1}
}
\newcommand\@tahunTA{Tahun}
\DeclareRobustCommand\TahunTA[1]{
   \renewcommand\@tahunTA{#1}
}
\newcommand\@fakultasNama{Fakultas}
\DeclareRobustCommand\NamaFakultas[1]{
   \renewcommand\@fakultasNama{#1}
}
\newcommand\@fac{Faculty}
\DeclareRobustCommand\Faculty[1]{
   \renewcommand\@fac{#1}
}
\newcommand\@koorProdiNama{Koordinator Prodi}
\DeclareRobustCommand\KoorProdi[1]{
	\renewcommand\@koorProdiNama{#1}
}
\newcommand\@koorProdiNip{NIP Kaprodi}
\DeclareRobustCommand\NIPKoorProdi[1]{
	\renewcommand\@koorProdiNip{#1}
}
\newcommand\@pembimbingSatu{Nama Pembimbing 1}
\newcommand\@pembimbingDua{Nama Pembimbing 2}
\newcommand\@pembimbingTiga{Nama Pembimbing 3}
\DeclareRobustCommand\PB[2]{%
  \ifcase#1\relax
  \or \renewcommand{\@pembimbingSatu}{#2}%
  \or \renewcommand{\@pembimbingDua}{#2}%
  \or \renewcommand{\@pembimbingTiga}{#2}%
  \else \PackageError{TA-Rifky-Matematika}{Nomor PB hanya 1, 2, atau 3}{}%
  \fi
}
\newcommand\@nipPembimbingSatu{12345678 123456 1 01}
\newcommand\@nipPembimbingDua{12345678 123456 1 02}
\newcommand\@nipPembimbingTiga{12345678 123456 1 03}
\DeclareRobustCommand\NIPPB[2]{%
  \ifcase#1\relax
  \or \renewcommand{\@nipPembimbingSatu}{#2}%
  \or \renewcommand{\@nipPembimbingDua}{#2}%
  \or \renewcommand{\@nipPembimbingTiga}{#2}%
  \else \PackageError{TA-Matematika}{Nomor NIPPB hanya 1, 2, atau 3}{}%
  \fi
}
\newcommand\@pujsatu{Nama Penguji Pertama}
\newcommand\@pujdua{Nama Penguji Ke-dua}
\newcommand\@pujtiga{Nama Penguji Ke-tiga}
\DeclareRobustCommand\Penguji[3]{
   \renewcommand{\@pujsatu}{#1}
   \renewcommand{\@pujdua}{#2}
   \renewcommand{\@pujtiga}{#3}
}
\newcommand\@NIPpujsatu{NIP Penguji Pertama}
\newcommand\@NIPpujdua{NIP Penguji Kedua}
\newcommand\@NIPpujtiga{NIP Penguji Ke-tiga}
\DeclareRobustCommand\NIPPenguji[3]{
   \renewcommand{\@NIPpujsatu}{#1}
   \renewcommand{\@NIPpujdua}{#2}
   \renewcommand{\@NIPpujtiga}{#3}
}
\newcommand\@tanggalPengesahan{Tanggal}
\DeclareRobustCommand\TanggalPengesahan[1]{
	\renewcommand\@tanggalPengesahan{#1}
}
\newcommand\MulaiBagianDepan{
    \frontmatter
    \onehalfspacing
    \@twosidefalse
}
\newcommand\HalamanSampul{
    \thispagestyle{empty}
    \enlargethispage{1cm}
    \begin{center}
	    \large\textbf{\MakeUppercase{\@thesisJudul}}\\
	    \vfill\noindent{
			\textbf{LAPORAN TUGAS AKHIR}\\[15ex]
	    	{\@mahasiswaNamaKapital}\\
	    	\@mahasiswaNim\\[15ex]
            \includegraphics[width=3cm,height=3.3cm]{Gambar/logoITERA.png}\\[15ex]
		    {\textbf{PROGRAM STUDI~\MakeUppercase{\@prodiNama}}}\\
		    {\textbf{FAKULTAS~\MakeUppercase{\@fakultasNama}}}\\
		    {\textbf{INSTITUT TEKNOLOGI SUMATERA}}\\
		    {\textbf{\@tahunTA}}\\[5ex]
		}
    \end{center}
	\phantomsection
    \addcontentsline{toc}{chapter}{HALAMAN JUDUL}
    
	\pagebreak   
	\enlargethispage{1cm} 
    \newpage\thispagestyle{empty}\setcounter{page}{1}
   	\begin{center}
		\large\textbf{\MakeUppercase{\@thesisJudul}}\\
		\vfill\noindent{
			\textbf{LAPORAN TUGAS AKHIR}\\
			Diajukan sebagai syarat untuk memperoleh gelar Sarjana \\[5ex]
			{\@mahasiswaNamaKapital}\\
			\@mahasiswaNim\\[15ex]
            \includegraphics[width=3cm,height=3.3cm]{Gambar/logoITERA.png}\\[10ex]
			{\textbf{PROGRAM STUDI~\MakeUppercase{\@prodiNama}}}\\
			{\textbf{FAKULTAS~\MakeUppercase{\@fakultasNama}}}\\
			{\textbf{INSTITUT TEKNOLOGI SUMATERA}}\\
			{\textbf{\@tahunTA}}\\[5ex]
		}
	\end{center} 
	\pagebreak
}
 
\RequirePackage{setspace}
\newcommand{\HalamanPengesahan}[1]{
	\cleardoublepage
	\centerline{\large\bfseries LEMBAR PENGESAHAN}
	\phantomsection
	\addcontentsline{toc}{chapter}{LEMBAR PENGESAHAN}
	\vspace*{20pt}

  	Tugas Akhir dengan judul “{\@thesisJudul}” adalah benar dibuat oleh saya sendiri dan belum pernah dibuat dan diserahkan sebelumnya, baik sebagian ataupun seluruhnya, baik oleh saya ataupun orang lain, baik di Institut Teknologi Sumatera maupun di institusi pendidikan lainnya.

	\begin{table}[htbp]
		\begin{tabular}{p{7cm}p{4cm}}
			& \multirow{3}{*}{{\ifthenelse{\equal{#1}{}}{}{\includegraphics[width=3cm,height=4cm]{#1}}}} \\
			{Lampung Selatan,~\@tanggalPengesahan} & \\
			Penulis, & \\[8ex]
			\@mahasiswaNama   & \\
			{NIM~\@mahasiswaNim} &                                                                
		\end{tabular}
	\end{table}
	\vfill
	\ifthenelse{\equal{\@pembimbingTiga}{}\OR\equal{\@pembimbingTiga}{ }}
	{
		\ifthenelse{\equal{\@pembimbingDua}{}\OR\equal{\@pembimbingDua}{ }}
		{
			\begin{center}
				{Pembimbing}\\[9ex]
				{\@pembimbingSatu} \\
				{\@nipPembimbingSatu}\\
			\end{center}
		}
		{
			\begin{center}
			\begin{tabularx}{\textwidth}{c@{}lXc@{}}
				Pembimbing I & & & Pembimbing II \\ [9ex]
				{\@pembimbingSatu} & & & {\@pembimbingDua} \\ 
				{\@nipPembimbingSatu} & & & {\@nipPembimbingDua}
			\end{tabularx}
			\end{center}
		}
	}
	{
		\begin{center}
			{Pembimbing I} \\ [9ex]
			{\@pembimbingSatu} \\
			{\@nipPembimbingSatu} 
	\\ [2ex]
		\begin{tabularx}{\textwidth}{c@{}lXc@{}}
			Pembimbing II & & & Pembimbing III \\ [9ex]
			{\@pembimbingDua} & & & {\@pembimbingTiga} \\ 
			{\@nipPembimbingDua} & & & {\@nipPembimbingTiga}
		\end{tabularx}
		\end{center}
	}
	\vfill
	\begin{center}			
		{Disahkan oleh,} 	\\
		{Koordinator Program Studi~\@prodiNama}\\
		{Fakultas~\@fakultasNama} \\
		Institut Teknologi Sumatera\\[9ex]	
		{\@koorProdiNama}\\
		{\@koorProdiNip}	
	\end{center}
}

\newcommand{\PernyataanOrisinalitas}{
	\cleardoublepage
	\centerline{\large\bfseries HALAMAN PERNYATAAN ORISINALITAS}
	\phantomsection
	\addcontentsline{toc}{chapter}{HALAMAN PERNYATAAN ORISINALITAS}
	\vspace*{20pt}
\begin{spacing}{1}
	\begin{center}\bf
		Tugas akhir ini adalah karya saya sendiri, dan semua sumber baik yang dikutip maupun dirujuk telah saya nyatakan benar.
		\vspace*{120pt}
		\begin{spacing}{1.5}
			\begin{tabular}{lcl}
					Nama &:&~\@mahasiswaNama\\
					NIM &:&~\@mahasiswaNim\\
					Tanda Tangan &:&\\
					Tanggal &:&~\@tanggalPengesahan
			\end{tabular}
		\end{spacing}
	\end{center}
\end{spacing}
}

\newcommand{\PersetujuanPublikasi}{
	\cleardoublepage
	\centerline{\large\bfseries HALAMAN PERSETUJUAN PUBLIKASI}
	\vspace*{1ex}
	\centerline{\large\bfseries TUGAS AKHIR UNTUK KEPENTINGAN AKADEMIS}
	\phantomsection
	\addcontentsline{toc}{chapter}{HALAMAN PERSETUJUAN PUBLIKASI}
	\vspace*{20pt}
Sebagai civitas akademik Institut Teknologi Sumatera, saya yang bertanda tangan di bawah ini:
\begin{spacing}{1.15}
	\begin{tabular}{lcl}
		Nama 			&:&~\@mahasiswaNama \\
		NIM 			&:&~\@mahasiswaNim  \\
		Program Studi 	&:&~\@prodiNama  \\
		Fakultas 		&:&~\@fakultasNama \\
		Jenis Karya 	&:&~Laporan Tugas Akhir
	\end{tabular}
\end{spacing}
mendukung perkembangan ilmu pengetahuan, memberikan izin kepada Institut Teknologi Sumatera untuk memperoleh \textbf{Hak Bebas Royalti Noneksklusif \textit{(Non-exclusive Royalty-Free Right)}} atas karya ilmiah saya yang berjudul:
\begin{center} \textbf{~\@thesisJudul}\end{center}
beserta perangkat terkait (jika diperlukan). Dengan adanya Hak Bebas Royalti Noneksklusif ini, Institut Teknologi Sumatera berhak untuk menyimpan, mengubah format, mengelola dalam bentuk pangkalan data (database), merawat, dan memublikasikan tugas akhir saya, dengan tetap mencantumkan nama saya sebagai penulis/pencipta dan pemilik Hak Cipta.\\
Demikian pernyataan ini saya buat dengan sebenarnya.\\
\begin{center}
\begin{tabular}{rcl}
	Dibuat di 		&:&~Lampung Selatan\\
	Pada tanggal 	&:&~\@tanggalPengesahan \\
\end{tabular}
\\[2ex]
Yang menyatakan,\\[5ex]
\@mahasiswaNama
\end{center}
}

\newcommand{\KataKunci}[1]{
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        {\textbf{Kata kunci:}} & {#1}
    \end{tabularx}
}
\newcommand{\Keywords}[1]{
    \vspace*{1ex}
    \noindent
    \begin{tabularx}{\textwidth}{@{}lX@{}}
        {\textbf{Keywords:}} & {#1}
    \end{tabularx}
}
\newenvironment*{Abstrak}{
\cleardoublepage

\begin{center}
	{\bfseries{\@thesisJudul}}
	\par \vskip 1.5ex
	\par
		\@mahasiswaNama~(\@mahasiswaNim)\\
		\ifthenelse{\equal{\@pembimbingTiga}{}\OR\equal{\@pembimbingTiga}{ }}
			{\ifthenelse{\equal{\@pembimbingDua}{}\OR\equal{\@pembimbingDua}{ }}
				{\@pembimbingSatu\\}
				{~\@pembimbingSatu\\ ~\@pembimbingDua\\}
			}
			{\@pembimbingSatu\\
				~\@pembimbingDua\\ ~\@pembimbingTiga}

\end{center}
\vskip 2ex
\centerline{\large\bfseries ABSTRAK}
\phantomsection
\addcontentsline{toc}{chapter}{ABSTRAK}
\vskip 1.5ex
\setstretch{1}
\par}{\normalfont\normalsize}

\newenvironment*{Abstract}{
	\cleardoublepage
	\begin{center}
		{\bfseries{\@thesisTitle}}
		\par \vskip 1.5ex
		\par
		\@mahasiswaNama~(\@mahasiswaNim)\\
		\ifthenelse{\equal{\@pembimbingTiga}{}\OR\equal{\@pembimbingTiga}{ }}
		{\ifthenelse{\equal{\@pembimbingDua}{}\OR\equal{\@pembimbingDua}{ }}
			{\@pembimbingSatu\\}
			{~\@pembimbingSatu\\ ~\@pembimbingDua\\}
		}
		{\@pembimbingSatu\\
			~\@pembimbingDua\\ ~\@pembimbingTiga}
	\end{center}
	\vskip 2ex
	\centerline{\large\bfseries ABSTRACT}
	\phantomsection
	\addcontentsline{toc}{chapter}{ABSTRACT}
	\vskip 1.5ex
	\par
	\setstretch{1}
}{\normalfont\normalsize}

\newcommand{\HalamanMottoTA}{
	\cleardoublepage
	\centerline{\large\bfseries MOTTO}
	\phantomsection
	\addcontentsline{toc}{chapter}{MOTTO}
	\vspace*{20pt}
}
\newcommand{\HalamanPersembahanTA}{
    \cleardoublepage
    \centerline{\large\bfseries PERSEMBAHAN}
    \phantomsection
    \addcontentsline{toc}{chapter}{PERSEMBAHAN}
    \vspace*{20pt}
}
\newcommand{\HalamanTerimaKasih}{
    \cleardoublepage
    \centerline{\large\bfseries UCAPAN TERIMA KASIH}
    \phantomsection
    \addcontentsline{toc}{chapter}{UCAPAN TERIMA KASIH}
    \vspace*{20pt}
}
\newcommand{\HalamanKataPengantar}{
	\cleardoublepage
	\centerline{\large\bfseries KATA PENGANTAR}
	\phantomsection
	\addcontentsline{toc}{chapter}{KATA PENGANTAR}
	\vspace*{20pt}
}
\newcommand{\CetakDaftarIsi}{
	\cleardoublepage
	\pagestyle{myheadings}
	\phantomsection
	\addcontentsline{toc}{chapter}{DAFTAR ISI}
	\tableofcontents
}
\newcommand{\CetakDaftarTabel}{
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{DAFTAR TABEL}
	\listoftables
}
\newcommand{\CetakDaftarGambar}{
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{DAFTAR GAMBAR}
	\listoffigures
}
\RequirePackage{nomencl}
\renewcommand{\nomlabel}[1]{#1\hfil\hspace{\labelsep}$:$}
\newlength{\nomwidest}
\makenomenclature
\newcommand{\CetakDaftarSimbol}{
	\cleardoublepage
	\phantomsection
	\addcontentsline{toc}{chapter}{DAFTAR SIMBOL}
	\settowidth{\nomwidest}{\nomlabel{that other one}}
	\printnomenclature[\nomwidest]	
}
\newcommand\MulaiIsiTA{
	\cleardoublepage
	\setstretch{1.5}
	\mainmatter
	\@twosidetrue
	\pagestyle{plain}
}
\renewcommand\chapter{
	\setstretch{1.5}
	\if@openright\cleardoublepage\else\clearpage\fi
	\global\@topnum\z@
	\@afterindentfalse
	\secdef\@chapter\@schapter
}
\gdef\@chapter[#1]#2{
	\ifnum \c@secnumdepth >\m@ne
	\if@mainmatter
	\refstepcounter{chapter}
	\typeout{\@chapapp\space\thechapter.}
	\addcontentsline{toc}{chapter}
	{\protect\numberline{\@chapapp\space\thechapter}#1}
	\else
	\addcontentsline{toc}{chapter}{\@chapapp\space#1}
	\fi
	\else
	\addcontentsline{toc}{chapter}{#1}
	\fi
	\chaptermark{#1}
	\addtocontents{lof}{\protect\addvspace{0\p@}}
	\addtocontents{lof}{\protect\addvspace{0\p@}}
	\if@twocolumn
	\@topnewpage[\@makechapterhead{#2}]
	\else
	\@makechapterhead{#2}
	\@afterheading
	\fi
}
\gdef\@makechapterhead#1{
	{\parindent \z@ \centering\normalfont
	\ifnum \c@secnumdepth >\m@ne
	\if@mainmatter
	\large\bfseries \MakeUppercase\@chapapp\space \thechapter
	\par
	\fi
	\fi
	\large\bfseries\MakeUppercase{#1}\par\nobreak
	\vskip 10\p@
	}	
}
\gdef\@schapter#1{
	\@makeschapterhead{#1}
	\@afterheading
}
\gdef\@makeschapterhead#1{
	{\parindent \z@ \centering
	\normalfont
	\interlinepenalty\@M
	\large\bfseries\MakeUppercase{#1}\par\nobreak
	\vskip 10\p@
	}
}

\renewcommand\section{\@startsection {section}{1}{\z@}
{-1.5ex \@plus -1ex \@minus -.2ex}
{.01ex \@plus.2ex}
{\normalfont\normalsize\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}
{-1.5ex\@plus -1ex \@minus -.2ex}
{.01ex \@plus .2ex}
{\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{2}{\z@}
{-.25ex\@plus -1ex \@minus -.2ex}
{.01ex \@plus.2ex}
{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}
{.15ex \@plus1ex \@minus.1ex}
{-1.0em}

{\normalfont\normalsize\bfseries}}
\renewcommand*\thechapter{\@Roman\c@chapter}
\renewcommand*\thesection{\@arabic\c@chapter.\@arabic\c@section}
\renewcommand*\thesubsection{\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection}
\renewcommand*\thesubsubsection{\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection.\@arabic\c@subsubsection}


\RequirePackage{float}
\RequirePackage{hyperref}
\hypersetup{
	colorlinks=true,
	linktoc=all,
	linkcolor=black,
	filecolor=black,urlcolor=black,citecolor=black,
	pdftitle={Tugas Akhir Matematika ITERA}
}
\setcounter{tocdepth}{2}
\renewcommand\@dotsep{2}
\renewcommand*\l@chapter[2]{
\ifnum \c@tocdepth >\m@ne
\addpenalty{-\@highpenalty}
\vskip 0.5em \@plus\p@
\setlength\@tempdima{5em}
\begingroup
\parindent \z@ \rightskip \@pnumwidth
\parfillskip -\@pnumwidth
\leavevmode
\advance\leftskip\@tempdima
\hskip -\leftskip
#1\nobreak\hfil \nobreak
\hb@xt@\@pnumwidth{\hss #2}
\par
\penalty\@highpenalty
\endgroup
\fi}

\renewcommand*\l@chapter{\@dottedtocline{1}{0em}{5em}}
\renewcommand*\l@section{\@dottedtocline{1}{2.8em}{2.2em}}
\renewcommand*\l@subsection{\@dottedtocline{2}{5em}{2.75em}}
\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.8em}{4.1em}}
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{6em}}
\renewcommand*\l@table{\@dottedtocline{1}{1.5em}{5em}}

\renewcommand\theequation
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@equation}
\renewcommand\thefigure{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@figure}
\renewcommand\thetable{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@table}



\RequirePackage{cite}
\newcommand\CetakReferensi[1]{
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{DAFTAR PUSTAKA}
    \bibliographystyle{IEEEtran}
    \bibliography{#1}
}

\newif\ifLampiranInit
\LampiranInitfalse
\newcommand\MulaiLampiranTA[1]{
    \cleardoublepage
    \@twosidefalse

    \gdef\@chapapp{\appendixname}
    \renewcommand\thechapter{\Alph{chapter}}
    \renewcommand\theHchapter{lampiran.\Alph{chapter}}

    \ifLampiranInit\else
        \setcounter{chapter}{0}
        \LampiranInittrue
    \fi

    \refstepcounter{chapter}

    \setcounter{section}{0}
    \setcounter{table}{0}
    \setcounter{figure}{0}
    \setcounter{equation}{0}

    \renewcommand\thesection{\thechapter.\arabic{section}}
    \renewcommand\theequation{\thechapter.\arabic{equation}}

    \renewcommand\thetable{\thechapter.\arabic{table}}
    \renewcommand\thefigure{\thechapter.\arabic{figure}}


    \pagestyle{plain}
    \phantomsection
    \addcontentsline{toc}{chapter}{\thechapter\space #1}

    \null
    \begin{center}
        \large\bfseries
        \MakeUppercase\appendixname\space\thechapter
        \par#1
    \end{center}
    \vskip 20pt\par
}


\renewcommand\contentsname{DAFTAR ISI}
\renewcommand\listfigurename{DAFTAR GAMBAR}
\renewcommand\listtablename{DAFTAR TABEL}
\renewcommand\bibname{DAFTAR PUSTAKA}
\addto\captionsindonesian{\renewcommand\bibname{DAFTAR PUSTAKA}}
\renewcommand{\nomname}{DAFTAR SIMBOL}
\renewcommand\indexname{INDEKS}
\renewcommand\figurename{Gambar}
\renewcommand\tablename{Tabel}
\renewcommand\chaptername{BAB}
\renewcommand\appendixname{Lampiran}

\lefthyphenmin=5
\righthyphenmin=5
\sloppy

