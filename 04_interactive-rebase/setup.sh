#!/usr/bin/env bash
set -e

DEMO_DIR="repo-interactive-rebase"

rm -rf "$DEMO_DIR"
mkdir "$DEMO_DIR"
cd "$DEMO_DIR"

git init -q

echo "Payment App" > app.txt
git add app.txt
git commit -qm "Initial commit"

git checkout -b feature/payment -q

echo "class Payment {}" > payment.py
git add payment.py
git commit -qm "WIP payment model"

echo "class PaymentService:" >> payment.py
echo "    pass" >> payment.py
git commit -am "WIP: add service" -q

echo "# TODO: validation" >> payment.py
git commit -am "fix" -q

sed -i 's/pass/print("processing")/' payment.py || perl -pi -e 's/pass/print("processing")/' payment.py
git commit -am "really final" -q

echo "def validate_amount(amount):" >> payment.py
echo "    return amount > 0" >> payment.py
git commit -am "another fix" -q

cat <<EOF

Repository '$DEMO_DIR' wurde erstellt.

Wechsle nun in dieses Verzeichnis:

  cd 04_interactive-rebase/$DEMO_DIR

Arbeitest du auf Windows ohne \`sed\`, ist das egal – der Commit ist bereits erstellt.
EOF
