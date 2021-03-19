# SNK-dl: Bash script for downloading Attack On Titan scans (VF)

Ce script bash permet de télécharger automatiquement tous les scans de l'Attaque des Titans en français.

## Dépendances

- [curl](https://linux.die.net/man/1/curl)
- [xmllint](https://linux.die.net/man/1/xmllint)



## Usage

1. Choisir le dossier où doivent être téléchargés les scans en éditant la variable `dest_dir` (ligne 2 du script `download.sh`)

2. Choisir les chapitres à télécharger (par défaut 1 à 138 inclus) en modifiant la ligne 6 du script `download.sh`

3. Ouvrir un terminal et exécuter le script

   ```sh
   bash download.sh
   ```

Si le téléchargement est interrompu, il peut être repris en relançant directement le script, pas besoin de tout retélécharger depuis le début.

