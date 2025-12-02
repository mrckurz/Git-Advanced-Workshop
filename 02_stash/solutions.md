# Lösungen & Hinweise – `git stash`

## Grundidee

- `git stash` legt deinen aktuellen Working Directory + Staging Area Zustand auf einen Stack.
- Du kannst später diesen Zustand wieder zurückholen.

## Typischer Ablauf für die Übung

1. WIP sichern:

   ```bash
   git stash push -m "WIP: refactor app"
   ```

2. Auf `main` wechseln und Hotfix machen:

   ```bash
   git checkout main
   echo "HOTFIX" >> app.txt
   git commit -am "Hotfix on main"
   ```

3. Zurück auf Feature-Branch:

   ```bash
   git checkout feature-change
   ```

4. Stash wiederherstellen:

   ```bash
   git stash apply stash@{0}
   # oder
   git stash pop
   ```

- `apply` lässt den Stash in der Liste.
- `pop` entfernt ihn nach erfolgreichem Anwenden.

## Checkliste

- `git status` vor und nach `stash` ausführen, um die Unterschiede zu sehen.
- `git stash show -p stash@{0}` hilft, sich daran zu erinnern, was drin war.
