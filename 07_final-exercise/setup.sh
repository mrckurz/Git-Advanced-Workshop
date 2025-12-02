#!/usr/bin/env bash
set -e

DEMO_DIR="repo-final-demo"

rm -rf "$DEMO_DIR"
mkdir "$DEMO_DIR"
cd "$DEMO_DIR"

git init -q

echo "Mini Webapp" > app.txt
git add app.txt
git commit -qm "Initial commit on main"

echo "Base login page" >> app.txt
git commit -am "Add login page" -q

git checkout -b feature/auth -q
echo "Auth: basic checks" >> app.txt
git commit -am "WIP auth 1" -q

echo "Auth: add password length check" >> app.txt
git commit -am "WIP auth 2" -q

echo "Auth: TODO cleanup" >> app.txt
git commit -am "fix" -q

git checkout main -q
git checkout -b feature/ui -q
echo "UI: new header" >> app.txt
git commit -am "UI header" -q

echo "UI: add footer" >> app.txt
git commit -am "UI footer" -q

git checkout main -q
echo "Refactor login handler" >> app.txt
git commit -am "Refactor login handler" -q

git checkout -b hotfix/login-bug -q
echo "HOTFIX: fix login null pointer" >> app.txt
git commit -am "Fix login bug" -q

git checkout main -q

cat <<EOF > README.md
# Final Demo Repo

Branches:

- main
- feature/auth  (unsaubere History, ideal für interactive rebase)
- feature/ui    (soll auf aktuellen main-Stand gebracht werden)
- hotfix/login-bug (enthält einen Bugfix-Commit)

Siehe Aufgaben in ../tasks.md.
EOF

git add README.md
git commit -am "Add repo README" -q

cat <<EOF

Repository '$DEMO_DIR' wurde erstellt.

Wechsle nun in dieses Verzeichnis:

  cd 07_final-exercise/$DEMO_DIR

Lies die Aufgaben in:

  ../tasks.md

EOF
