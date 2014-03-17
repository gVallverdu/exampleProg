<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER x[i]" texte="Remplissage et affichage d'une liste des 20 premiers entiers impmairs"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#x" algoitem="x EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#Nombre d'entier" algoitem="//Nombre d'entier"/>
        <item code="5#n#20#pasliste" algoitem="n PREND_LA_VALEUR 20"/>
        <item code="19#Remplissage de la liste" algoitem="//Remplissage de la liste"/>
        <item code="12#i#0#n - 1" algoitem="POUR i ALLANT_DE 0 A n - 1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#x#2 * i + 1#i" algoitem="x[i] PREND_LA_VALEUR 2 * i + 1"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#Affichage de la liste" algoitem="//Affichage de la liste"/>
        <item code="4#Liste des 20 premiers nombres impaires#1" algoitem="AFFICHER &quot;Liste des 20 premiers nombres impaires&quot;"/>
        <item code="12#i#0#n - 1" algoitem="POUR i ALLANT_DE 0 A n - 1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#x#1#i" algoitem="AFFICHER x[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
