# 06.01 – `git reflog`

Ziel: Zeigen, dass Git fast nichts „wirklich“ verliert, solange der Garbage Collector nicht gelaufen ist.

## Vorschlag für Live-Demo

1. Neues Repo anlegen, ein paar Commits machen.
2. `git reset --hard HEAD~1` ausführen – ein Commit „verschwindet“ aus `git log`.
3. Mit `git reflog` den Commit wiederfinden und eine neue Branch darauf erstellen:

   ```bash
   git reflog
   git checkout -b recovered <hash>
   ```

## Kleine Übung für Studierende

- Erstelle selbst ein Mini-Repo mit 3–4 Commits.
- Lösche einen Commit mit `git reset --hard`.
- Benutze `git reflog`, um den Commit wiederzufinden.
- Stelle einen Branch auf diesen Commit wieder her.
