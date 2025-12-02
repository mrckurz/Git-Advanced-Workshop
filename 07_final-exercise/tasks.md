# Aufgaben – Abschlussübung

Wir haben ein Repository mit:
- `main`
- `feature/auth`
- `feature/ui`
- `hotfix/login-bug`

### Aufgabe 1 – History anschauen

- Zeichne den Graphen der Branches (`git log --oneline --graph --all`).
- Markiere, welche Branches von welchem Commit aus gestartet sind.

### Aufgabe 2 – Merge vs Rebase

- Bringe `feature/ui` auf den aktuellen Stand von `main`. Nutze dafür **Rebase**.
- Führe anschließend einen Fast-Forward-Merge von `feature/ui` nach `main` durch.

### Aufgabe 3 – Interactive Rebase

- Auf `feature/auth` gibt es mehrere unsaubere Commits.
- Räume die Historie so auf, dass 2–3 klar benannte Commits übrig bleiben.

### Aufgabe 4 – Bugfix cherry-picken

- Im Branch `hotfix/login-bug` gibt es einen Commit, der einen Bugfix enthält.
- Dieser Bugfix soll auch in `main` landen, aber **ohne** den ganzen Branch zu mergen.
- Nutze `git cherry-pick`, um nur den relevanten Commit auf `main` zu übernehmen.

### Aufgabe 5 – Fehler retten

- Mach absichtlich einen falschen `reset` oder verwerf eine Änderung.
- Nutze anschließend `git reflog`, um den Commit oder Zustand wiederzufinden.
- Erstelle daraus einen neuen Branch `recovered-work`.
