#!/usr/bin/env bash
set -e

DEMO_DIR="repo-rerere-demo"

rm -rf "$DEMO_DIR"
mkdir "$DEMO_DIR"
cd "$DEMO_DIR"

# Stelle sicher, dass der Default-Branch main ist
git init -q -b main 2>/dev/null || git init -q

cat <<EOF > story.txt
Once upon a time, there was a shared file.
Line that both branches will modify.
EOF

git add story.txt
git commit -qm "Initial story"

# Falls git init -b main nicht unterstützt wurde: Branch nachträglich auf main setzen
git branch -M main >/dev/null 2>&1 || true

# Portable "in-place replace"
replace_in_file () {
  local search="$1"
  local repl="$2"
  local file="$3"

  if sed --version >/dev/null 2>&1; then
    # GNU sed
    sed -i "s/${search}/${repl}/" "$file"
  else
    # BSD/macOS sed
    sed -i '' "s/${search}/${repl}/" "$file"
  fi
}

git checkout -b feature-a -q
replace_in_file "Line that both branches will modify\." "Line changed by feature A." story.txt
git commit -am "Change line in feature A" -q

git checkout main -q
git checkout -b feature-b -q
replace_in_file "Line that both branches will modify\." "Line changed by feature B." story.txt
git commit -am "Change line in feature B" -q

git checkout feature-a -q
git tag before-merge

cat <<EOF

Repository '$DEMO_DIR' wurde erstellt.

Wechsle nun in dieses Verzeichnis:

  cd 05_rerere/$DEMO_DIR

Starte dort mit:

  git config rerere.enabled true

Dann:
  git checkout feature-a
  git merge feature-b   # erzeugt Konflikt

Nach dem ersten Merge kannst du mit

  git reset --hard before-merge

zum Ausgangszustand zurückkehren und den Merge erneut durchführen.
EOF
