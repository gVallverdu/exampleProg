<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Calcul de l'aire d'un rectangle" courant="AFFICHER &quot;Aire du rectangle : &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#largeur" algoitem="largeur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#longueur" algoitem="longueur EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19# Lecture des variables" algoitem="// Lecture des variables"/>
        <item code="2#largeur#pasliste" algoitem="LIRE largeur"/>
        <item code="2#longueur#pasliste" algoitem="LIRE longueur"/>
        <item code="19#Affiche le résultat" algoitem="//Affiche le résultat"/>
        <item code="4#Aire du rectangle : #0" algoitem="AFFICHER &quot;Aire du rectangle : &quot;"/>
        <item code="20#largeur * longueur#0" algoitem="AFFICHERCALCUL largeur * longueur"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
