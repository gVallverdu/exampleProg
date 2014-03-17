<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR i ALLANT_DE 1 A n" texte="Remplissage et affichage d'une liste aléatoire de nombre entre -1 et 1"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#maListe" algoitem="maListe EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#Choix du nombre de valeurs" algoitem="//Choix du nombre de valeurs"/>
        <item code="5#n#15#pasliste" algoitem="n PREND_LA_VALEUR 15"/>
        <item code="19#Remplissage et affichage de la liste" algoitem="//Remplissage et affichage de la liste"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#x#2. * random() - 1.#pasliste" algoitem="x PREND_LA_VALEUR 2. * random() - 1."/>
            <item code="5#maListe#x#i" algoitem="maListe[i] PREND_LA_VALEUR x"/>
            <item code="3#x#1#pasliste" algoitem="AFFICHER x"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
