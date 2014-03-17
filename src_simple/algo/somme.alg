<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="somme PREND_LA_VALEUR somme + i" texte="Calcul de la somme des n premiers entiers"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#Lecture de n" algoitem="//Lecture de n"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="4#Calcul de la somme des entiers de 1 à #0" algoitem="AFFICHER &quot;Calcul de la somme des entiers de 1 à &quot;"/>
        <item code="3#n#1#pasliste" algoitem="AFFICHER n"/>
        <item code="19#initialisation de la somme" algoitem="//initialisation de la somme"/>
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#somme#somme + i#pasliste" algoitem="somme PREND_LA_VALEUR somme + i"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#affichage du résultat" algoitem="//affichage du résultat"/>
        <item code="4#Résultat = #0" algoitem="AFFICHER &quot;Résultat = &quot;"/>
        <item code="3#somme#1#pasliste" algoitem="AFFICHER somme"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
