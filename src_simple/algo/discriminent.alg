<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Calcul des racines réelles d'un polynome de degré 2" courant="AFFICHER &quot;L'équation a deux solution complexes&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#c" algoitem="c EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#delta" algoitem="delta EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#On va résoudre l'équation a*x^2 + b*x + c = 0#0" algoitem="AFFICHER &quot;On va résoudre l'équation a*x^2 + b*x + c = 0&quot;"/>
        <item code="19#Lecture des variables" algoitem="//Lecture des variables"/>
        <item code="2#a#pasliste" algoitem="LIRE a"/>
        <item code="2#b#pasliste" algoitem="LIRE b"/>
        <item code="2#c#pasliste" algoitem="LIRE c"/>
        <item code="19#Calcul du discriminent" algoitem="//Calcul du discriminent"/>
        <item code="5#delta#b*b-4*a*c#pasliste" algoitem="delta PREND_LA_VALEUR b*b-4*a*c"/>
        <item code="4#Delta = #0" algoitem="AFFICHER &quot;Delta = &quot;"/>
        <item code="3#delta#1#pasliste" algoitem="AFFICHER delta"/>
        <item code="19#Test du discriminent" algoitem="//Test du discriminent"/>
        <item code="6#delta >= 0" algoitem="SI (delta >= 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="6#delta == 0" algoitem="SI (delta == 0) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#L'équation a une seule solution#1" algoitem="AFFICHER &quot;L'équation a une seule solution&quot;"/>
                <item code="20#-b / (2 * a)#0" algoitem="AFFICHERCALCUL -b / (2 * a)"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#L'équation a deux solutions réelles#1" algoitem="AFFICHER &quot;L'équation a deux solutions réelles&quot;"/>
                    <item code="20#(-b + sqrt(delta)) / (2 * a)#1" algoitem="AFFICHERCALCUL (-b + sqrt(delta)) / (2 * a)"/>
                    <item code="20#(-b - sqrt(delta)) / (2 * a)#0" algoitem="AFFICHERCALCUL (-b - sqrt(delta)) / (2 * a)"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#L'équation a deux solution complexes#1" algoitem="AFFICHER &quot;L'équation a deux solutions complexes&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
