# 06.02 – `git bisect`

Ziel: Einen Commit finden, der einen Bug eingeführt hat, ohne jeden Commit manuell testen zu müssen.

## Setup

```bash
cd 06_advanced/02_bisect
./setup.sh
```

Es entsteht ein Ordner `repo-bisect-demo/` mit mehreren Commits und einem kleinen Testscript `test.sh`, das fehlschlägt, wenn der Bug vorhanden ist.

## Aufgaben

1. Wechsle ins Demo-Repo:

   ```bash
   cd repo-bisect-demo
   ```

2. Schaue dir kurz das Script an:

   ```bash
   cat test.sh
   ```

3. Starte `git bisect`:

   ```bash
   git bisect start
   git bisect bad     # aktueller Commit ist buggy
   git bisect good <hash-eines-guten-commits>   # z. B. den Commit laut README
   ```

4. Lass Git automatisch testen:

   ```bash
   git bisect run ./test.sh
   ```

5. Notiere dir den Commit, den `bisect` als „first bad commit“ meldet.

6. Beende `bisect` wieder:

   ```bash
   git bisect reset
   ```

Hinweise in `solutions.md`.
