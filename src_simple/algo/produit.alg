<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="POUR i ALLANT_DE 3 A n" texte="Calcul du produit des n premiers entiers impairs"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#produit" algoitem="produit EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#lecture de n" algoitem="//lecture de n"/>
        <item code="2#n#pasliste" algoitem="LIRE n"/>
        <item code="4#Calcul du produit des entiers impairs entre 1 et #0" algoitem="AFFICHER &quot;Calcul du produit des entiers impairs entre 1 et &quot;"/>
        <item code="3#n#1#pasliste" algoitem="AFFICHER n"/>
        <item code="19#initialisation" algoitem="//initialisation"/>
        <item code="5#produit#1#pasliste" algoitem="produit PREND_LA_VALEUR 1"/>
        <item code="12#i#3#n" algoitem="POUR i ALLANT_DE 3 A n">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#i % 2 == 1" algoitem="SI (i % 2 == 1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#produit#produit * i#pasliste" algoitem="produit PREND_LA_VALEUR produit * i"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#affichage du résultat" algoitem="//affichage du résultat"/>
        <item code="4#Résultat = #0" algoitem="AFFICHER &quot;Résultat = &quot;"/>
        <item code="3#produit#1#pasliste" algoitem="AFFICHER produit"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
