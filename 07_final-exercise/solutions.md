# Lösungen (Beispiel) – Abschlussübung

Dies ist nur ein möglicher Lösungsweg – es gibt viele Varianten.

## Aufgabe 2 – Rebase von `feature/ui`

```bash
git checkout feature/ui
git rebase main
git checkout main
git merge --ff-only feature/ui
```

## Aufgabe 3 – Interactive Rebase auf `feature/auth`

```bash
git checkout feature/auth
git rebase -i main
```

- Mehrere WIP/„fix“-Commits zu 1–2 sinnvollen Commits zusammenfassen.
- Commit-Messages umbenennen.

## Aufgabe 4 – Bugfix cherry-picken

```bash
git checkout main
git log --oneline hotfix/login-bug
# Commit mit "Fix login bug" merken
git cherry-pick <hash-von-fix-login-bug>
```

## Aufgabe 5 – `reflog`

- Beispiel:

  ```bash
  git reset --hard HEAD~1
  git reflog
  git checkout -b recovered-work <hash-des-vorherigen-HEAD>
  ```

Wichtiger als die exakten Kommandos ist, dass du verstehst, **warum** du welches Werkzeug einsetzt.
