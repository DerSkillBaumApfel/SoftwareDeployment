# Software deployment Lab2
(Die geforderten Screenshots befinden sich in ./Screenshots)

## Link zur node JS App
https://github.com/DerSkillBaumApfel/SwDepLab2

## Link zum dev deploy
https://softwaredeploymentlab2dev.azurewebsites.net/

## Link zum production deploy
https://softwaredeploymentlab2release.azurewebsites.net/

## Wie werden releases freigegeben? 
Über einen händischen Trigger mit Mailinfo innerhalb der Release pipeline. Normalerweise mit dem letzten Build, kann aber auch geändert werden. Insights ist gleich mit eingebunden und die Tests finden bereits nach jedem Build statt.

### Anmerkungen:
Bei meiner Dev Website gibts eine kleine Unregelmäßigkeit: Am 12.11 habe ich auf der Dev Seite den ganzen Tag nur "503 Service Temporarily Unaivalable" bekommen, obwohl die Releaseseite funktioniert hat. Im Endeffekt ist aber die gleiche App wie beim Release deployed, was das ganze ein bisschen random macht. Ich konnte diesen Fehler aufgrund der kuriosen Meldung leider auch nicht beheben, allerdings ist beim build&deployment selbst alles durchgegangen/positiv. Zum besseren Verständnis habe ich zwei extra Screenshots in ./Screenshots abgelegt.