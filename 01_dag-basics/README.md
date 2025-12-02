# 01 – DAG Basics & Mental Model

Ziel dieses Blocks: Alle haben wieder ein gemeinsames Bild davon, wie Git intern denkt.

## Live-Demo-Ideen (für Lehrende)

- Einige Commits auf `main` machen.
- Einen Branch `feature` erstellen, dort Commits machen.
- `git log --oneline --graph --all` zeigen.
- An der Tafel den Graphen zeichnen (Knoten = Commits, Pfeile = Eltern, Labels = Branches).

## Übung für Studierende

1. Initialisiere ein neues Repository:

   ```bash
   mkdir dag-demo
   cd dag-demo
   git init
   echo "v1" > file.txt
   git add file.txt
   git commit -m "Initial commit"
   ```

2. Erstelle einen Branch und mache dort Änderungen:

   ```bash
   git checkout -b feature
   echo "change on feature" >> file.txt
   git commit -am "Change on feature"
   ```

3. Wechsel zurück auf `main` und mache dort eine andere Änderung:

   ```bash
   git checkout main
   echo "change on main" >> file.txt
   git commit -am "Change on main"
   ```

4. Führe aus:

   ```bash
   git log --oneline --graph --all
   ```

5. Zeichne den Graphen auf Papier:  
   - Markiere `HEAD`  
   - Markiere die Position von `main` und `feature`.

## Diskussionsfragen

- Was passiert mit den Commits, wenn wir `git branch -d feature` ausführen?
- Wann „verschwinden“ Commits wirklich?
- Wie kann man gelöschte Commits oft noch mit `git reflog` retten?
