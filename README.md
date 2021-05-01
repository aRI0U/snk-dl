# SNK-dl: Bash script for downloading Attack On Titan scans (VF)

Ce script bash permet de télécharger automatiquement tous les scans de l'Attaque des Titans en français.

## Dépendances

- [curl](https://linux.die.net/man/1/curl)
- [xmllint](https://linux.die.net/man/1/xmllint)



## Usage

1. Choisir le dossier où doivent être téléchargés les scans en éditant la variable `dest_dir` (ligne 2 du script `download.sh`)

2. Choisir les chapitres à télécharger (par défaut 1 à 139 inclus) en modifiant la ligne 6 du script `download.sh`

3. Ouvrir un terminal et exécuter le script `download.sh` :

   ```sh
   bash download.sh
   ```

Si le téléchargement est interrompu, il peut être repris en relançant directement le script, pas besoin de tout retélécharger depuis le début.

4. Dans le script `organize.sh`, indiquer l'emplacement où ont été téléchargés les scans en modifiant la variable `dest_dir` (ligne 1 du script `organize.sh`). Cette variable doit être égale à la variable `dest_dir` du script `download.sh`.

5. Exécuter le script `organize.sh` :

   ```bash
   bash organize.sh
   ```

Les scans sont maintenant organisés selon le format : `Volume <numéro de volume>/Chapitre <numéro de chapitre> : <titre du chapitre>/<numéro de page>.jpg`.