<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Intégration par la méthode de Simpson. L'intégration analytique de la fonction (x^2 - 3x - 6) e^-x entre 1 et 3 donne comme application numérique -2.525369" courant="npas EST_DU_TYPE NOMBRE"/>
    <extension extnom="inactif"/>
    <fonction fctetat="actif" fctcode="(x * x - 3 * x - 6) * exp(-x)"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#npas" algoitem="npas EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#integrale" algoitem="integrale EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#analytique" algoitem="analytique EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pas" algoitem="pas EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#valeur exacte" algoitem="//valeur exacte"/>
        <item code="5#analytique#-2.525369#pasliste" algoitem="analytique PREND_LA_VALEUR -2.525369"/>
        <item code="19#Lecture de l'intervalle" algoitem="//Lecture de l'intervalle"/>
        <item code="2#a#pasliste" algoitem="LIRE a"/>
        <item code="2#b#pasliste" algoitem="LIRE b"/>
        <item code="19#Nombre de segments" algoitem="//Nombre de segments"/>
        <item code="2#npas#pasliste" algoitem="LIRE npas"/>
        <item code="19#initialisation" algoitem="//initialisation"/>
        <item code="5#integrale#0#pasliste" algoitem="integrale PREND_LA_VALEUR 0"/>
        <item code="5#pas#(b - a) / npas#pasliste" algoitem="pas PREND_LA_VALEUR (b - a) / npas"/>
        <item code="5#x#a#pasliste" algoitem="x PREND_LA_VALEUR a"/>
        <item code="19#calcul de l'integrale" algoitem="//calcul de l'integrale"/>
        <item code="15#x &lt; b" algoitem="TANT_QUE (x &lt; b) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#integrale#integrale + pas / 3 * (F1(x) + 4 * F1(x + pas) + F1(x + 2 * pas))#pasliste" algoitem="integrale PREND_LA_VALEUR integrale + pas / 3 * (F1(x) + 4 * F1(x + pas) + F1(x + 2 * pas))"/>
            <item code="5#x#x + 2 * pas#pasliste" algoitem="x PREND_LA_VALEUR x + 2 * pas"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="19#résultat" algoitem="//résultat"/>
        <item code="4#Résultat = #0" algoitem="AFFICHER &quot;Résultat = &quot;"/>
        <item code="3#integrale#1#pasliste" algoitem="AFFICHER integrale"/>
        <item code="4#Résidu = #0" algoitem="AFFICHER &quot;Résidu = &quot;"/>
        <item code="20#analytique - integrale#1" algoitem="AFFICHERCALCUL analytique - integrale"/>
        <item code="4#Précision = #0" algoitem="AFFICHER &quot;Précision = &quot;"/>
        <item code="20#(analytique - integrale) / analytique * 100#0" algoitem="AFFICHERCALCUL (analytique - integrale) / analytique * 100"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
