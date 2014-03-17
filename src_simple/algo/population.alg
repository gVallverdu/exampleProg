<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Une population est réduite de 40% tous les 3 ans. Au bout de combien d'années la population est négligeable (inférireure à 0.1% de la population initiale) ?w" courant="seuil PREND_LA_VALEUR 0.1 / 100 * population"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#population" algoitem="population EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#an" algoitem="an EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#perte" algoitem="perte EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#seuil" algoitem="seuil EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#initialisation" algoitem="//initialisation"/>
        <item code="5#population#100#pasliste" algoitem="population PREND_LA_VALEUR 100"/>
        <item code="5#an#0#pasliste" algoitem="an PREND_LA_VALEUR 0"/>
        <item code="19#paramètres" algoitem="//paramètres"/>
        <item code="5#perte#0.4#pasliste" algoitem="perte PREND_LA_VALEUR 0.4"/>
        <item code="5#seuil#0.1 / 100 * population#pasliste" algoitem="seuil PREND_LA_VALEUR 0.1 / 100 * population"/>
        <item code="19#boucle sur les années" algoitem="//boucle sur les années"/>
        <item code="15#population > seuil" algoitem="TANT_QUE (population > seuil) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#an#an + 3#pasliste" algoitem="an PREND_LA_VALEUR an + 3"/>
            <item code="5#population#population * (1 - perte)#pasliste" algoitem="population PREND_LA_VALEUR population * (1 - perte)"/>
            <item code="3#an#0#pasliste" algoitem="AFFICHER an"/>
            <item code="4#  #0" algoitem="AFFICHER &quot;  &quot;"/>
            <item code="3#population#1#pasliste" algoitem="AFFICHER population"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="19#résultats" algoitem="//résultats"/>
        <item code="4#Au bout de #0" algoitem="AFFICHER &quot;Au bout de &quot;"/>
        <item code="3#an#0#pasliste" algoitem="AFFICHER an"/>
        <item code="4# ans, la population est inférieure à 0.1% de la population initiale.#1" algoitem="AFFICHER &quot; ans, la population est inférieure à 0.1% de la population initiale.&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
