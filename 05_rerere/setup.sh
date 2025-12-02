#!/usr/bin/env bash
set -e

DEMO_DIR="repo-rerere-demo"

rm -rf "$DEMO_DIR"
mkdir "$DEMO_DIR"
cd "$DEMO_DIR"

git init -q

cat <<EOF > story.txt
Once upon a time, there was a shared file.
Line that both branches will modify.
EOF

git add story.txt
git commit -qm "Initial story"

git checkout -b feature-a -q
sed -i 's/Line that both branches will modify./Line changed by feature A./' story.txt || perl -pi -e 's/Line that both branches will modify./Line changed by feature A./' story.txt
git commit -am "Change line in feature A" -q

git checkout main -q
git checkout -b feature-b -q
sed -i 's/Line that both branches will modify./Line changed by feature B./' story.txt || perl -pi -e 's/Line that both branches will modify./Line changed by feature B./' story.txt
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
