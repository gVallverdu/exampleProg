<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Calcul du périmètre d'un cercle" courant="AFFICHER rayon"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="rayon EST_DU_TYPE NOMBRE" code="1#NOMBRE#rayon"/>
        <item algoitem="perimetre EST_DU_TYPE NOMBRE" code="1#NOMBRE#perimetre"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="// lecture du rayon" code="19# lecture du rayon"/>
        <item algoitem="LIRE rayon" code="2#rayon#pasliste"/>
        <item algoitem="AFFICHER &quot;rayon = &quot;" code="4#rayon = #0"/>
        <item algoitem="AFFICHER rayon" code="3#rayon#1#pasliste"/>
        <item algoitem="// calcul du périmètre" code="19# calcul du périmètre"/>
        <item algoitem="perimetre PREND_LA_VALEUR 2 * Math.PI * rayon" code="5#perimetre#2 * Math.PI * rayon#pasliste"/>
        <item algoitem="// affichage du résutlat" code="19# affichage du résutlat"/>
        <item algoitem="AFFICHER &quot;périmètre = &quot;" code="4#périmètre = #0"/>
        <item algoitem="AFFICHER perimetre" code="3#perimetre#1#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
