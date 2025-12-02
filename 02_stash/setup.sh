#!/usr/bin/env bash
set -e

DEMO_DIR="repo-stash-demo"

rm -rf "$DEMO_DIR"
mkdir "$DEMO_DIR"
cd "$DEMO_DIR"

git init -q

echo "Simple App v1" > app.txt
cat <<EOF > README.md
# Stash Demo

Dieses Repository wird im Git-Advanced-Workshop verwendet, um \`git stash\` zu üben.
EOF

git add .
git commit -qm "Initial commit"

git checkout -b feature-change -q

echo "" >> app.txt
echo "Refactoring idea 1" >> app.txt
echo "Refactoring idea 2" >> app.txt
echo "TODO: more changes..." >> app.txt

# absichtlich nicht committen -> WIP-Zustand
cat <<EOF

Repository '$DEMO_DIR' wurde erstellt.

Wechsle nun in dieses Verzeichnis und arbeite dort weiter:

  cd 02_stash/$DEMO_DIR

EOF
