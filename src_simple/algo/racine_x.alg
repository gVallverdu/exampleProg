<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;x est négatif&quot;" texte="Calcul de la racine carré de x si x est positif."/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19# Lecture de x" algoitem="// Lecture de x"/>
        <item code="2#x#pasliste" algoitem="LIRE x"/>
        <item code="4#x = #0" algoitem="AFFICHER &quot;x = &quot;"/>
        <item code="3#x#1#pasliste" algoitem="AFFICHER x"/>
        <item code="19# test de la valeur de x et calcul de sqrt(x)" algoitem="// test de la valeur de x et calcul de sqrt(x)"/>
        <item code="6# x >= 0" algoitem="SI ( x >= 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#RACINE(x) = #0" algoitem="AFFICHER &quot;RACINE(x) = &quot;"/>
            <item code="20#sqrt(x)#0" algoitem="AFFICHERCALCUL sqrt(x)"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#x est négatif#0" algoitem="AFFICHER &quot;x est négatif&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
