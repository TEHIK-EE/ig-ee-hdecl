## Tervisedeklaratsiooni juurutusjuhend

Juurutusjuhend on kättesaadav siit: https://github.tehik.ee/ig-ee-hdecl/ (build master harust)

https://github.tehik.ee/ig-ee-hdecl/branches/branch_name/ - build branch_name harust

Juurutusjuhendile saab lisada MarkDown (*.md) vormingus lehti. Lehed lisatakse kausta input/pagecontent. 
Lehtede nimed peavad olema viidatud sushi-config.yaml failis pages sektsioonis, näiteks:

```yaml
pages:
  index.md:
    title: Sissejuhatus
  download.md:
    title: Download
  hdecl-api.md:
    title: Healthdeclaration API
```

Juurutusjuhendi menüü kirjeldatakse sushi-config.yaml failis menu sektsioonis, näiteks:

```yaml
menu:
  Home: index.html
  Guides:
    Healthdeclaration API: hdecl-api.html
  Artifacts: artifacts.html
  Download: download.html
  ```

Juurutusjuhendi ehitamiseks sobib docker-build.sh või docker-build.bat.

docker-build.sh / docker-build.bat  käivitamiseks on vajalik, et docker oleks installeeritud ja käivitatud.

docker-build.sh käivitab vajadusel esimesel korral buildi tehes _updatePublisher.sh_ skripti, mis laeb alla vajalikud
sõltuvused. Windows keskkonnas vakab see esimesel korral käsitsi käivitamist.

Juurutusjuhendi ehitamiseks võib kuluda aega kuni paarkümmend minutit. Kui build on lõppenud, siis juurutusjuhend 
asub kaustas output.

