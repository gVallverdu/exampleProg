<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="pas PREND_LA_VALEUR 0.5" texte="calcule des valeurs de la fonction f(x) = x^2 pour x dans [-5 ; 5]"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#pas" algoitem="pas EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#initialisation" algoitem="//initialisation"/>
        <item code="5#x#-5#pasliste" algoitem="x PREND_LA_VALEUR -5"/>
        <item code="5#pas#0.5#pasliste" algoitem="pas PREND_LA_VALEUR 0.5"/>
        <item code="19#boucle sur les valeurs de x" algoitem="//boucle sur les valeurs de x"/>
        <item code="15#x &lt;= 5" algoitem="TANT_QUE (x &lt;= 5) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="20#x * x#1" algoitem="AFFICHERCALCUL x * x"/>
            <item code="5#x#x + pas#pasliste" algoitem="x PREND_LA_VALEUR x + pas"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
