<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="//Affichage des résultats" texte="Calcul du nombre pi par Monte Carlo.&#xa;Principe : La probabilité qu'un point de coordonnées (x,y) avec x et y dans l'intervalle [0;1] soit dans le quart de cercle de centre (0,0) et de rayon 1 est égal au rapport des aires du quart de cercle de rayon 1 et du carré de largeur 1 soit pi/4."/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="actif" repcode="-0.2#1.2#-0.2#1.2#0.2#0.2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#y" algoitem="y EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#n" algoitem="n EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#ntirage" algoitem="ntirage EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#Lecture du nombre de tirage" algoitem="//Lecture du nombre de tirage"/>
        <item code="2#ntirage#pasliste" algoitem="LIRE ntirage"/>
        <item code="19#initialisation" algoitem="//initialisation"/>
        <item code="5#n#0#pasliste" algoitem="n PREND_LA_VALEUR 0"/>
        <item code="19#calcul du nombre pi" algoitem="//calcul du nombre pi"/>
        <item code="12#i#1#ntirage" algoitem="POUR i ALLANT_DE 1 A ntirage">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="19#tirage d'un point dans le carré de coté 1" algoitem="//tirage d'un point dans le carré de coté 1"/>
            <item code="5#x#random()#pasliste" algoitem="x PREND_LA_VALEUR random()"/>
            <item code="5#y#random()#pasliste" algoitem="y PREND_LA_VALEUR random()"/>
            <item code="6#x*x + y*y &lt; 1" algoitem="SI (x*x + y*y &lt; 1) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#n#n + 1#pasliste" algoitem="n PREND_LA_VALEUR n + 1"/>
                <item code="50#x#y#Rouge" algoitem="TRACER_POINT (x,y)"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#Affichage des résultats" algoitem="//Affichage des résultats"/>
        <item code="4#pi = #0" algoitem="AFFICHER &quot;pi = &quot;"/>
        <item code="20#4.0 * n / ntirage#1" algoitem="AFFICHERCALCUL 4.0 * n / ntirage"/>
        <item code="4#% d'erreur = #0" algoitem="AFFICHER &quot;% d'erreur = &quot;"/>
        <item code="20#(Math.PI - 4.0 * n / ntirage) / Math.PI * 100.#0" algoitem="AFFICHERCALCUL (Math.PI - 4.0 * n / ntirage) / Math.PI * 100."/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
