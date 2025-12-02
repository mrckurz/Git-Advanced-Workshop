# 05 – `rerere` (reuse recorded resolution)

Ziel: Git soll sich Merge-Konflikt-Lösungen merken und beim nächsten Mal automatisch anwenden.

## Setup

```bash
cd 05_rerere
./setup.sh
```

Dadurch entsteht ein Repo `repo-rerere-demo/` mit zwei Branches, die denselben Konflikt mehrfach erzeugen können.

## Aufgaben

1. Wechsle ins Demo-Repo:

   ```bash
   cd repo-rerere-demo
   ```

2. Aktiviere `rerere` global oder lokal:

   ```bash
   git config rerere.enabled true
   ```

3. Erzeuge den ersten Merge-Konflikt:

   ```bash
   git checkout feature-a
   git merge feature-b
   ```

   - Löse den Konflikt in `story.txt` manuell.
   - Committe den Merge.

4. Rolle auf den Ausgangszustand zurück (Hinweis steht im Setup-Script, z. B. über Tag `before-merge`).

5. Erzeuge denselben Konflikt erneut:

   ```bash
   git checkout feature-a
   git merge feature-b
   ```

   - Beobachte, dass Git die Konfliktlösung automatisch anwendet (oder fast automatisch, je nach Version).
   - Prüfe das Ergebnis in `story.txt`.

Hinweise und Details in `solutions.md`.
