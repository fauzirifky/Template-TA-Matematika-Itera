# Template Tugas Akhir — Matematika ITERA

**Pengembangan, penyusunan ulang, dan pemeliharaan template: Dr. Rifky Fauzi, S.Si., M.Si.**

Template ini merupakan perangkat penulisan laporan Tugas Akhir (skripsi) Matematika ITERA. Isi dan hasil penelitian tetap menjadi tanggung jawab mahasiswa penyusun.

## Langsung digunakan di Overleaf
1. Pilih **New Project → Upload Project** dan unggah ZIP tanpa diekstrak.
2. Pilih `main.tex` sebagai *Main document*, compiler **pdfLaTeX**.
3. Ubah identitas, pembimbing, NIP, tanggal dan judul pada awal `main.tex`.
4. Tulis isi di folder BabI–BabV; isi pustaka di `Referensi.bib`.
5. Pilih **Recompile**; `latexmkrc` mengurus daftar simbol.

## Kompilasi di komputer
- Perlu distribusi LaTeX dengan `pdflatex`, BibTeX, `makeindex`, paket LaTeX yang digunakan, dan sebaiknya `latexmk` (TeX Live/MacTeX/MiKTeX).
- Linux/macOS: jalankan `bash compile.sh` atau `latexmk -pdf main.tex` dari folder proyek.
- Windows: gunakan terminal yang mendukung Bash untuk `compile.sh`, atau jalankan `latexmk -pdf main.tex` dari PowerShell jika distribusi LaTeX mendukungnya.
- `compile.sh` hanya alat bantu lokal, **tidak perlu dijalankan di Overleaf**. `latexmkrc` tetap disertakan untuk pemrosesan otomatis daftar simbol.

## Perintah identitas (di `main.tex`)
| Tujuan | Perintah |
|---|---|
| Judul Indonesia | `\JudulTA{...}` |
| Judul Inggris | `\Title{...}` |
| Nama mahasiswa | `\NamaMahasiswa{...}` |
| Nama kapital | `\NamaKapital{...}` |
| NIM | `\NIMMahasiswa{...}` |
| Program studi | `\ProgramStudi{...}` |
| Fakultas | `\NamaFakultas{...}` |
| Tahun | `\TahunTA{...}` |
| Pembimbing 1/2/3 | `\PB1{...}`, `\PB2{...}`, `\PB3{...}` |
| NIP pembimbing | `\NIPPB1{...}`, `\NIPPB2{...}`, `\NIPPB3{...}` |
| Koordinator prodi | `\KoorProdi{...}` |
| NIP koordinator | `\NIPKoorProdi{...}` |
| Tanggal pengesahan | `\TanggalPengesahan{...}` |

## Susunan dokumen
Gunakan `\MulaiBagianDepan`, `\HalamanSampul`, `\HalamanPengesahan{Gambar/placeholder-foto.png}`, `\PernyataanOrisinalitas`, `\PersetujuanPublikasi`, `\begin{Abstrak}...\end{Abstrak}`, `\begin{Abstract}...\end{Abstract}`, kemudian `\MulaiIsiTA`, `\CetakReferensi{Referensi}` dan `\MulaiLampiranTA{...}`.

**Placeholder foto adalah file PNG nyata** pada `Gambar/placeholder-foto.png`, yang bisa diganti dengan foto mahasiswa. Gambar ilmiah bisa diimpor dengan `\includegraphics` atau dibuat dalam TikZ. `Gambar/logoITERA.png` adalah logo sampul.

## Pedoman acuan
- Keputusan Rektor ITERA Nomor 2076/IT9/KR.00.00/2025.
- Pedoman Tugas Akhir Fakultas Sains ITERA 2026 (Nota Dinas 3850/IT9.3.1/PK.03.08/2026), terutama Lampiran 1.

Kertas A4, teks 12 pt keluarga Times kompatibel, spasi isi utama 1,5 dan abstrak 1,0. Font Times dari pdfLaTeX belum terverifikasi identik dengan Times New Roman Microsoft. Caption gambar 10 pt, tabel 11 pt; referensi IEEE numerik. Nilai dummy wajib diganti sebelum naskah disahkan.


## Versi GitHub — alur kerja lokal
Repository: https://github.com/fauzirifky/Template-TA-Matematika-Itera

- Installer awal: jalankan `bash install-template-ta.sh` dari dalam folder kerja `Folder Itera`; installer membuat `Template-TA-Matematika-Itera` dan melakukan commit/push menggunakan autentikasi GitHub lokal milik `fauzirifky`.
- Perubahan berikutnya: edit berkas di folder proyek, lalu `bash push.sh "Perbaikan format halaman pengesahan"`. Skrip ini compile lebih dahulu dan hanya push bila berhasil.
- Kompilasi tanpa push: `bash compile.sh`. PDF lokal: `main.pdf` (diabaikan Git agar repository hanya berisi sumber).
- Overleaf: unggah ZIP proyek atau hubungkan ke GitHub dari akun Overleaf yang mendukung GitHub Sync.
