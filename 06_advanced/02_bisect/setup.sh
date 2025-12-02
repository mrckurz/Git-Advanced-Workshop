#!/usr/bin/env bash
set -e

DEMO_DIR="repo-bisect-demo"

rm -rf "$DEMO_DIR"
mkdir "$DEMO_DIR"
cd "$DEMO_DIR"

git init -q

echo "def add(a, b):" > calc.py
echo "    return a + b" >> calc.py

cat <<EOF > test.sh
#!/usr/bin/env bash
python3 - <<'PY'
from calc import add
assert add(1, 1) == 2
assert add(2, 2) == 4
print("OK")
PY
EOF
chmod +x test.sh

git add .
git commit -qm "Initial correct add() implementation"

# weiterer Commit ohne Bug
echo "# some comment" >> calc.py
git commit -am "Add comment" -q

GOOD_COMMIT=$(git rev-parse HEAD)

# Commit mit Bug
sed -i 's/return a + b/return a - b/' calc.py || perl -pi -e 's/return a \+ b/return a - b/' calc.py
git commit -am "Introduce subtle bug" -q

# weiterer Commit nach dem Bug
echo "# more changes" >> calc.py
git commit -am "More changes after bug" -q

cat <<EOF > README.md
# Bisect Demo

- \`good\` Commit: $GOOD_COMMIT
- aktueller HEAD ist buggy (Test schlägt fehl).

Nutze \`git bisect\`, um den fehlerhaften Commit zu finden.
EOF

git add README.md
git commit -am "Add README with hint" -q

cat <<EOF

Repository '$DEMO_DIR' wurde erstellt.

Guter Commit (laut README): $GOOD_COMMIT

Wechsle in dieses Verzeichnis:

  cd 06_advanced/02_bisect/$DEMO_DIR

EOF
