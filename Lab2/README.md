# Software deployment Lab2
(Die geforderten Screenshots befinden sich in ./Screenshots)

## Link zur node JS App
https://github.com/DerSkillBaumApfel/SwDepLab2

## Link zum dev deploy
https://softwaredeploymentlab2dev.azurewebsites.net/

## Link zum production deploy
https://softwaredeploymentlab2release.azurewebsites.net/

## Wie werden releases freigegeben? 
Über einen händischen Trigger mit Mailinfo innerhalb der Release pipeline. Normalerweise mit dem letzten Build, kann aber auch geändert werden.

### Anmerkungen:
Hoffentlich funktioniert die dev website, weil ich hab am 12.11 den ganzen Tag nur "503 Service Temporarily Unaivalable" bekommen, obwohl der Release funktioniert hat. Im Endeffekt ist aber die gleiche App wie beim release deployed (auch annähernd gleich). Ich konnte diesen Fehler aufgrund der Kuriosen Meldung leider auch nicht beheben, allerdings ist beim build&deployment selbst alles durchgegangen/positiv.