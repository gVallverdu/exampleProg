<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Recherche du maximum et du minimum dans une liste pseudo-alétoire" courant="AFFICHER maListe[i]"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#maListe" algoitem="maListe EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#mini" algoitem="mini EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#maxi" algoitem="maxi EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#nombre de points" algoitem="//nombre de points"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="4#n = #0" algoitem="AFFICHER &quot;n = &quot;"/>
        <item code="3#n#1#pasliste" algoitem="AFFICHER n"/>
        <item code="19#Remplissage d'une liste pseudo-aléatoire de nombres entre 0 et 100" algoitem="//Remplissage d'une liste pseudo-aléatoire de nombres entre 0 et 100"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#maListe#100. * random()#i" algoitem="maListe[i] PREND_LA_VALEUR 100. * random()"/>
            <item code="3#maListe#1#i" algoitem="AFFICHER maListe[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#Recherche du minimum et du maximum" algoitem="//Recherche du minimum et du maximum"/>
        <item code="19#initialisation" algoitem="//initialisation"/>
        <item code="5#mini#maListe[1]#pasliste" algoitem="mini PREND_LA_VALEUR maListe[1]"/>
        <item code="5#maxi#maListe[1]#pasliste" algoitem="maxi PREND_LA_VALEUR maListe[1]"/>
        <item code="12#i#1#n" algoitem="POUR i ALLANT_DE 1 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="19#Recherche du minimum" algoitem="//Recherche du minimum"/>
            <item code="6#maListe[i] &lt; mini" algoitem="SI (maListe[i] &lt; mini) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#mini#maListe[i]#pasliste" algoitem="mini PREND_LA_VALEUR maListe[i]"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="19#Recherche maximum" algoitem="//Recherche maximum"/>
            <item code="6#maListe[i] > maxi" algoitem="SI (maListe[i] > maxi) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#maxi#maListe[i]#pasliste" algoitem="maxi PREND_LA_VALEUR maListe[i]"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#maximum = #0" algoitem="AFFICHER &quot;maximum = &quot;"/>
        <item code="3#maxi#1#pasliste" algoitem="AFFICHER maxi"/>
        <item code="4#minimum = #0" algoitem="AFFICHER &quot;minimum = &quot;"/>
        <item code="3#mini#0#pasliste" algoitem="AFFICHER mini"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
