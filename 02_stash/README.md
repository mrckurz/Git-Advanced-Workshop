# 02 – `git stash`

In diesem Block üben wir, wie man Work-in-Progress (WIP) schnell weglegen und wieder hervorholen kann.

## Setup

Dieses Verzeichnis enthält ein Script `setup.sh`, das ein Demo-Repository erzeugt.

Ausführen:

```bash
cd 02_stash
./setup.sh
```

Dadurch entsteht ein Ordner `repo-stash-demo/` mit ungesicherten Änderungen.

## Aufgaben

1. Wechsle in das Demo-Repository:

   ```bash
   cd repo-stash-demo
   ```

2. Sieh dir den Status an:

   ```bash
   git status
   ```

   - Welche Dateien sind geändert?
   - Was ist noch nicht committet?

3. Du musst **kurz auf `main` einen Hotfix machen**, willst aber deine WIP Arbeit nicht verlieren.

   - Lege deinen aktuellen Stand auf den Stash-Stack:
     ```bash
     git stash push -m "WIP: refactor app"
     ```

   - Prüfe den Stash-Stack:
     ```bash
     git stash list
     git stash show -p stash@{0}
     ```

4. Spiele jetzt einen Hotfix auf `main` ein:

   ```bash
   git checkout main
   echo "HOTFIX" >> app.txt
   git commit -am "Hotfix on main"
   ```

5. Kehre zurück auf den Feature-Branch und hole deine Änderungen zurück:

   ```bash
   git checkout feature-change
   git stash apply stash@{0}
   # oder
   # git stash pop
   ```

6. Überprüfe das Ergebnis:

   - Sind deine WIP-Änderungen wieder da?
   - Ist der Stash-Eintrag noch vorhanden (`apply`) oder verschwunden (`pop`)?

## Bonusaufgaben

- Erzeuge zwei verschiedene Stashes und spiele sie in anderer Reihenfolge wieder ein.
- Probiere `git stash push -p` (interaktiv nur Teile stashen).
- Probiere `git stash branch wip-feature stash@{0}` aus.

Weitere Hinweise findest du in `solutions.md`.
