<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER diviseur" texte="Calcul du reste de la division de deux entiers"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#dividende" algoitem="dividende EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#diviseur" algoitem="diviseur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#reste" algoitem="reste EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#Lecture des valeurs" algoitem="//Lecture des valeurs"/>
        <item code="2#dividende#pasliste" algoitem="LIRE dividende"/>
        <item code="4#dividende = #0" algoitem="AFFICHER &quot;dividende = &quot;"/>
        <item code="3#dividende#0#pasliste" algoitem="AFFICHER dividende"/>
        <item code="2#diviseur#pasliste" algoitem="LIRE diviseur"/>
        <item code="4#diviseur = #0" algoitem="AFFICHER &quot;diviseur = &quot;"/>
        <item code="3#diviseur#0#pasliste" algoitem="AFFICHER diviseur"/>
        <item code="19#Calcul du reste" algoitem="//Calcul du reste"/>
        <item code="5#reste#dividende % diviseur#pasliste" algoitem="reste PREND_LA_VALEUR dividende % diviseur"/>
        <item code="19#Affichage du resultat" algoitem="//Affichage du resultat"/>
        <item code="4#reste = #0" algoitem="AFFICHER &quot;reste = &quot;"/>
        <item code="3#reste#1#pasliste" algoitem="AFFICHER reste"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
