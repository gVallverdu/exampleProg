<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Intégration par la méthode des trapèzes. L'intégration analytique de la fonction (x^2 - 3x - 6) e^-x entre 1 et 3 donne comme application numérique -2.525369" courant="//calcul de l'integrale"/>
    <extension extnom="inactif"/>
    <fonction fctetat="actif" fctcode="(x * x - 3 * x - 6) * exp(-x)"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="b EST_DU_TYPE NOMBRE" code="1#NOMBRE#b"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="npas EST_DU_TYPE NOMBRE" code="1#NOMBRE#npas"/>
        <item algoitem="integrale EST_DU_TYPE NOMBRE" code="1#NOMBRE#integrale"/>
        <item algoitem="analytique EST_DU_TYPE NOMBRE" code="1#NOMBRE#analytique"/>
        <item algoitem="pas EST_DU_TYPE NOMBRE" code="1#NOMBRE#pas"/>
        <item algoitem="x EST_DU_TYPE NOMBRE" code="1#NOMBRE#x"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//valeur exacte" code="19#valeur exacte"/>
        <item algoitem="analytique PREND_LA_VALEUR -2.525369" code="5#analytique#-2.525369#pasliste"/>
        <item algoitem="//Lecture de l'intervalle" code="19#Lecture de l'intervalle"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="LIRE b" code="2#b#pasliste"/>
        <item algoitem="//Nombre de segments" code="19#Nombre de segments"/>
        <item algoitem="LIRE npas" code="2#npas#pasliste"/>
        <item algoitem="//initialisation" code="19#initialisation"/>
        <item algoitem="integrale PREND_LA_VALEUR 0" code="5#integrale#0#pasliste"/>
        <item algoitem="pas PREND_LA_VALEUR (b - a) / npas" code="5#pas#(b - a) / npas#pasliste"/>
        <item algoitem="//calcul de l'integrale" code="19#calcul de l'integrale"/>
        <item algoitem="POUR i ALLANT_DE 1 A npas" code="12#i#1#npas">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="x PREND_LA_VALEUR a + (i - 1) * pas" code="5#x#a + (i - 1) * pas#pasliste"/>
            <item algoitem="integrale PREND_LA_VALEUR integrale + pas * (F1(x) + F1(x + pas)) / 2" code="5#integrale#integrale + pas * (F1(x) + F1(x + pas)) / 2#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="//résultat" code="19#résultat"/>
        <item algoitem="AFFICHER &quot;Résultat = &quot;" code="4#Résultat = #0"/>
        <item algoitem="AFFICHER integrale" code="3#integrale#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Résidu = &quot;" code="4#Résidu = #0"/>
        <item algoitem="AFFICHERCALCUL analytique - integrale" code="20#analytique - integrale#1"/>
        <item algoitem="AFFICHER &quot;Précision = &quot;" code="4#Précision = #0"/>
        <item algoitem="AFFICHERCALCUL (analytique - integrale) / analytique * 100" code="20#(analytique - integrale) / analytique * 100#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
