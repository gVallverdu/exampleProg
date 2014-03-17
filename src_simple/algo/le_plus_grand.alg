<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;x et y sont égaux&quot;" texte="Lire x et y et dire lequel est le plus grand"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#x" algoitem="x EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#y" algoitem="y EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#lecture de x et y" algoitem="//lecture de x et y"/>
        <item code="2#x#pasliste" algoitem="LIRE x"/>
        <item code="2#y#pasliste" algoitem="LIRE y"/>
        <item code="4#x = #0" algoitem="AFFICHER &quot;x = &quot;"/>
        <item code="3#x#1#pasliste" algoitem="AFFICHER x"/>
        <item code="4#y = #0" algoitem="AFFICHER &quot;y = &quot;"/>
        <item code="3#y#1#pasliste" algoitem="AFFICHER y"/>
        <item code="19#test entre x et y" algoitem="//test entre x et y"/>
        <item code="6#x > y" algoitem="SI (x > y) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#x est plus grand#1" algoitem="AFFICHER &quot;x est plus grand&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#y > x" algoitem="SI (y > x) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#y est plus grand#1" algoitem="AFFICHER &quot;y est plus grand&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="4#x et y sont égaux#1" algoitem="AFFICHER &quot;x et y sont égaux&quot;"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
