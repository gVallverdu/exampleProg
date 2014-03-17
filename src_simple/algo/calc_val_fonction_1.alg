<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5]" courant="//boucle sur les valeurs de x"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//boucle sur les valeurs de x" code="19#boucle sur les valeurs de x"/>
        <item algoitem="POUR x ALLANT_DE -5 A 5" code="12#x#-5#5">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHERCALCUL x * x" code="20#x * x#1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
