#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) belum tersedia. Instal: brew install gh; lalu gh auth login" >&2; exit 1
fi
if ! gh auth status >/dev/null 2>&1; then
  echo "Login akun GitHub dulu: gh auth login" >&2; exit 1
fi
LOGIN="$(gh api user --jq '.login')"
if [[ "${LOGIN,,}" != 'fauzirifky' ]]; then
  echo "BERHENTI: akun aktif '$LOGIN' bukan fauzirifky." >&2; exit 1
fi
REMOTE="$(git remote get-url origin)"
case "$REMOTE" in
  'https://github.com/fauzirifky/Template-TA-Matematika-Itera.git'|'https://github.com/fauzirifky/Template-TA-Matematika-Itera'|'git@github.com:fauzirifky/Template-TA-Matematika-Itera.git') ;;
  *) echo "BERHENTI: remote GitHub tidak sesuai: $REMOTE" >&2; exit 1;;
esac
if [[ "$(git branch --show-current)" != 'main' ]]; then
  echo "BERHENTI: checkout branch main terlebih dahulu." >&2; exit 1
fi
if ! command -v latexmk >/dev/null 2>&1; then
  echo "MacTeX/latexmk belum tersedia. Instal MacTeX dan buka Terminal baru." >&2; exit 1
fi

bash compile.sh
if [[ ! -s main.pdf ]]; then
  echo "Gagal: hasil compile main.pdf tidak ditemukan" >&2; exit 1
fi

git add -A
if git diff --cached --quiet; then
  echo "Tidak ada perubahan untuk dikirim."
  exit 0
fi
if git ls-remote --exit-code --heads origin main >/dev/null 2>&1; then
  git fetch origin main
  if ! git merge-base --is-ancestor origin/main HEAD; then
    echo "BERHENTI: ada commit baru di GitHub. Jalankan git pull --rebase origin main dahulu." >&2; exit 1
  fi
fi
COMMIT_MESSAGE="${1:-Update template TA Matematika ITERA}"
git commit -m "$COMMIT_MESSAGE"
git push -u origin main
printf '\nPush berhasil. Repository: https://github.com/fauzirifky/Template-TA-Matematika-Itera\n'
