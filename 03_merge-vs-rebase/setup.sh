#!/usr/bin/env bash
set -e

BASE="repo-merge-rebase-demo"

# Bei mehrfacher Ausführung unterschiedliche Ordner erzeugen
i=1
while [ -d "${BASE}-${i}" ]; do
  i=$((i+1))
done
DEMO_DIR="${BASE}-${i}"

mkdir "$DEMO_DIR"
cd "$DEMO_DIR"

git init -q

# sicherstellen, dass wir einen 'main' Branch haben
git checkout -b main

echo "Version 1" > app.txt
git add app.txt
git commit -qm "Initial commit on main"

echo "Version 2 on main" >> app.txt
git commit -am "Second commit on main" -q

git checkout -b feature -q
echo "Feature change A" >> app.txt
git commit -am "Add feature A" -q

echo "Feature change B" >> app.txt
git commit -am "Add feature B" -q

git checkout main -q
echo "Main change C" >> app.txt
git commit -am "Change on main (C)" -q

cat <<EOF

Repository '$DEMO_DIR' wurde erstellt.

Wechsle nun in dieses Verzeichnis:

  cd 03_merge-vs-rebase/$DEMO_DIR

EOF
