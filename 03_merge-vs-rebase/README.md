# 03 – Merge vs Rebase

Ziel: Du sollst verstehen, wie sich `git merge` und `git rebase` auf die History auswirken und wann du welches Werkzeug verwendest.

## Setup

Dieses Verzeichnis enthält ein `setup.sh`, das ein Demo-Repository mit einem `main`- und einem `feature`-Branch erzeugt.

```bash
cd 03_merge-vs-rebase
./setup.sh
```

Danach gibt es einen Ordner `repo-merge-rebase-demo/`.

## Aufgaben

1. Wechsle in das Demo-Repository:

   ```bash
   cd repo-merge-rebase-demo
   ```

2. Sieh dir die aktuelle History an:

   ```bash
   git log --oneline --graph --all
   ```

   - Zeichne den Graphen auf Papier.
   - Markiere `HEAD`, `main`, `feature`.

3. **Variante 1 – Merge:**

   - Wechsle auf `main`:
     ```bash
     git checkout main
     ```

   - Führe einen Merge durch:
     ```bash
     git merge feature
     ```

   - Sieh dir die History an:
     ```bash
     git log --oneline --graph --all
     ```

   - Beobachtung: Es entsteht ein Merge-Commit.

4. Setze das Repository auf den Ausgangszustand zurück (siehe Hinweise im Setup-Script oder `git reset --hard` mit entsprechender Commit-ID).  
   Einfacher: Script erneut ausführen und einen neuen Ordner anlegen.

5. **Variante 2 – Rebase:**

   - Wechsle auf `feature`:
     ```bash
     git checkout feature
     ```

   - Rebase auf `main`:
     ```bash
     git rebase main
     ```

   - Sieh dir die History an:
     ```bash
     git log --oneline --graph --all
     ```

   - Wechsle auf `main` und mache einen Fast-Forward-Merge:
     ```bash
     git checkout main
     git merge --ff-only feature
     ```

6. Diskutiere die Unterschiede:

   - Welche Variante ist „schöner“ / lesbarer?
   - Welche erzeugt zusätzliche Commits?
   - Wann ist Rebase gefährlich?

Weitere Hinweise und Musterlösung: `solutions.md`.
