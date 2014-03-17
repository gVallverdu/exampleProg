<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Procédé d'orthogonalisation de Gram-Schimdt.&#xa;Soit u et v deux vecteurs. On cherche le vecteur vp le plus proche de v orthogonal à u." courant="AFFICHERCALCUL u[1] * vp[1] + u[2] * vp[2] + u[3] * vp[3]"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#u" algoitem="u EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#v" algoitem="v EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#vp" algoitem="vp EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#scalaire" algoitem="scalaire EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#normu" algoitem="normu EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#vecteur u" algoitem="//vecteur u"/>
        <item code="5#u#1#1" algoitem="u[1] PREND_LA_VALEUR 1"/>
        <item code="5#u#0#2" algoitem="u[2] PREND_LA_VALEUR 0"/>
        <item code="5#u#0#3" algoitem="u[3] PREND_LA_VALEUR 0"/>
        <item code="5#normu#sqrt(u[1]*u[1] + u[2]*u[2] + u[3]*u[3])#pasliste" algoitem="normu PREND_LA_VALEUR sqrt(u[1]*u[1] + u[2]*u[2] + u[3]*u[3])"/>
        <item code="19#vecteur v" algoitem="//vecteur v"/>
        <item code="5#v#1#1" algoitem="v[1] PREND_LA_VALEUR 1"/>
        <item code="5#v#2#2" algoitem="v[2] PREND_LA_VALEUR 2"/>
        <item code="5#v#3#3" algoitem="v[3] PREND_LA_VALEUR 3"/>
        <item code="19#calcul du produit scalaire" algoitem="//calcul du produit scalaire"/>
        <item code="5#scalaire#u[1] * v[1] + u[2] * v[2] + u[3] * v[3] #pasliste" algoitem="scalaire PREND_LA_VALEUR u[1] * v[1] + u[2] * v[2] + u[3] * v[3] "/>
        <item code="4#u.v = #0" algoitem="AFFICHER &quot;u.v = &quot;"/>
        <item code="3#scalaire#1#pasliste" algoitem="AFFICHER scalaire"/>
        <item code="19#orthogonalisation de schmidt" algoitem="//orthogonalisation de schmidt"/>
        <item code="6#scalaire != 0" algoitem="SI (scalaire != 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="12#i#1#3" algoitem="POUR i ALLANT_DE 1 A 3">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="5#vp#v[i] - scalaire / normu * u[i]#i" algoitem="vp[i] PREND_LA_VALEUR v[i] - scalaire / normu * u[i]"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="19#verification" algoitem="//verification"/>
            <item code="4#u.vp = #0" algoitem="AFFICHER &quot;u.vp = &quot;"/>
            <item code="20#u[1] * vp[1] + u[2] * vp[2] + u[3] * vp[3]#1" algoitem="AFFICHERCALCUL u[1] * vp[1] + u[2] * vp[2] + u[3] * vp[3]"/>
            <item code="4#vp = #0" algoitem="AFFICHER &quot;vp = &quot;"/>
            <item code="12#i#1#3" algoitem="POUR i ALLANT_DE 1 A 3">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="3#vp#0#i" algoitem="AFFICHER vp[i]"/>
                <item code="4#  #0" algoitem="AFFICHER &quot;  &quot;"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
