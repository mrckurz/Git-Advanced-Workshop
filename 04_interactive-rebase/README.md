# 04 – Interactive Rebase

Ziel: Mehrere unsaubere Commits in eine saubere, lesbare History umwandeln.

## Setup

```bash
cd 04_interactive-rebase
./setup.sh
```

Dadurch entsteht ein Ordner `repo-interactive-rebase/` mit einem Branch `feature/payment`, der mehrere „unschöne“ Commits besitzt.

## Aufgaben

1. Wechsle ins Demo-Repo und sieh dir die History an:

   ```bash
   cd repo-interactive-rebase
   git log --oneline
   ```

   - Du wirst u. a. Commits wie „WIP“, „fix“, „really final“ sehen.

2. Starte ein Interactive Rebase für die letzten z. B. 6 Commits:

   ```bash
   git rebase -i HEAD~6
   ```

3. Ziele:

   - Fasse mehrere WIP/fixt-Kommentare zu einem sinnvollen Commit zusammen (`squash` / `fixup`).
   - Benenne Commit-Messages um (`reword`), z. B. in:
     - „Add basic payment model“
     - „Implement payment service“
     - „Add validation for payment amount“
   - Entferne unnötige Commits (`drop`).

4. Optional: Splitte einen Commit

   - Wähle bei einem Commit `edit`.
   - Führe aus:
     ```bash
     git reset HEAD^
     git add -p
     git commit -m "Teil 1"
     git add -p
     git commit -m "Teil 2"
     ```
   - Danach mit `git rebase --continue` fortsetzen.

5. Vergleiche anschließend die neue History mit der ursprünglichen (Screenshot oder Notiz).

Hinweise und Beispiellösung siehe `solutions.md`.
