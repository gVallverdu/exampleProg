<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Calcul de factorielle n" courant="//Calcul de la factorielle"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="n EST_DU_TYPE NOMBRE" code="1#NOMBRE#n"/>
        <item algoitem="factorielle EST_DU_TYPE NOMBRE" code="1#NOMBRE#factorielle"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//lecture de n" code="19#lecture de n"/>
        <item algoitem="LIRE n" code="2#n#pasliste"/>
        <item algoitem="AFFICHER &quot;Calcul de factorielle &quot;" code="4#Calcul de factorielle #0"/>
        <item algoitem="AFFICHER n" code="3#n#1#pasliste"/>
        <item algoitem="//initialisation" code="19#initialisation"/>
        <item algoitem="factorielle PREND_LA_VALEUR 1" code="5#factorielle#1#pasliste"/>
        <item algoitem="//Calcul de la factorielle" code="19#Calcul de la factorielle"/>
        <item algoitem="POUR i ALLANT_DE 2 A n" code="12#i#2#n">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="factorielle PREND_LA_VALEUR factorielle * i" code="5#factorielle#factorielle * i#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="//affichage du résultat" code="19#affichage du résultat"/>
        <item algoitem="AFFICHER &quot;Résultat = &quot;" code="4#Résultat = #0"/>
        <item algoitem="AFFICHER factorielle" code="3#factorielle#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
