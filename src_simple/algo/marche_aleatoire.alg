<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="Marche aléatoire dans une plan 2D" courant="POUR i ALLANT_DE 2 A npas"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="actif" repcode="ALGOBOX_MINIMUM(x,1,npas)#ALGOBOX_MAXIMUM(x,1,npas)#ALGOBOX_MINIMUM(y,1,npas)#ALGOBOX_MAXIMUM(y,1,npas)#amplitude#amplitude"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#npas" algoitem="npas EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#amplitude" algoitem="amplitude EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#x" algoitem="x EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#y" algoitem="y EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#wx" algoitem="wx EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#wy" algoitem="wy EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#paramètres de la marche" algoitem="//paramètres de la marche"/>
        <item code="2#npas#pasliste" algoitem="LIRE npas"/>
        <item code="2#amplitude#pasliste" algoitem="LIRE amplitude"/>
        <item code="19#initialisation" algoitem="//initialisation"/>
        <item code="5#x#0#1" algoitem="x[1] PREND_LA_VALEUR 0"/>
        <item code="5#y#0#1" algoitem="y[1] PREND_LA_VALEUR 0"/>
        <item code="19#marche aléatoire" algoitem="//marche aléatoire"/>
        <item code="12#i#2#npas" algoitem="POUR i ALLANT_DE 2 A npas">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#wx#2. * random() - 1.#pasliste" algoitem="wx PREND_LA_VALEUR 2. * random() - 1."/>
            <item code="5#wy#2. * random() - 1.#pasliste" algoitem="wy PREND_LA_VALEUR 2. * random() - 1."/>
            <item code="5#x#x[i - 1] + amplitude * wx#i" algoitem="x[i] PREND_LA_VALEUR x[i - 1] + amplitude * wx"/>
            <item code="5#y#y[i - 1] + amplitude * wy#i" algoitem="y[i] PREND_LA_VALEUR y[i - 1] + amplitude * wy"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#représentation de la marche" algoitem="//représentation de la marche"/>
        <item code="12#i#2#npas" algoitem="POUR i ALLANT_DE 2 A npas">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="51#x[i - 1]#y[i - 1]#x[i]#y[i]#Bleu" algoitem="TRACER_SEGMENT (x[i - 1],y[i - 1])->(x[i],y[i])"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
