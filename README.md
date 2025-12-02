# Git Advanced Workshop

Dieses Repository enthält das Material für einen ca. 5‑stündigen **„Git Advanced“** Workshop unter folgenden Prämissen:

- Keine Folien – alles wird **live im Terminal** und **an der Tafel** gezeigt.
- Die Studierenden kennen bereits die Grundlagen von Git (Commits, Branches, Remotes).
- Dieses Repo enthält:
  - Ablauf & Zeitplan
  - Übungs-Szenarien (teilweise mit `setup.sh` zum automatischen Erstellen von Demo-Repositories)
  - Tipps, Best Practices und Musterlösungen

## Inhalte

1. Wiederholung & Mental Model (DAG, Commits, Remotes)
2. `git stash`
3. Merge vs Rebase
4. Interactive Rebase
5. `rerere` – Konfliktlösungen wiederverwenden
6. Weitere Advanced-Themen:
   - `reflog`
   - `bisect`
   - `cherry-pick` / `revert`
   - `worktree` (optional)
7. Übung, die mehrere Konzepte kombiniert

## Verwendung

1. Klone oder forke dieses Repository auf deinen Rechner.
2. Für einzelne Blöcke findest du Ordner `01_...`, `02_...` etc.
3. In vielen Ordnern gibt es ein `setup.sh` Script, das ein **separates Demo-Repository** erzeugt.
   - Beispiel:
     ```bash
     cd 02_stash
     ./setup.sh
     ```
   - Danach kannst du im erzeugten Unterordner (z. B. `repo-stash-demo/`) mit Git arbeiten.
4. Lösungen / Hinweise stehen in den jeweiligen `README.md` oder `solutions.md` Dateien.
