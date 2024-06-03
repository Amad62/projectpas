{ #todo -oamad : programme non terminé }
program gestion_assurance_auto3;
uses CRT;

var
  nom_utilisateur, nom_utilisateur1: string[20];
  mot_de_passe, mot_de_passe1: string[20];
  i, j: integer;
   choix :char;
  corbeilleVide: boolean = true; // Variable globale pour suivre l'état de la corbeille

procedure SupprimerElement;
begin
  // Code pour supprimer un élément...
  corbeilleVide := false; // Mettez à jour l'état de la corbeille
end;

procedure AjouterElement;
begin
  // Code pour ajouter un élément...
  corbeilleVide := false; // Mettez à jour l'état de la corbeille
end;
 procedure OuvrirCorbeille;
begin
  if corbeilleVide then
    writeln('La corbeille est vide.')
  else
    writeln('Ouverture de la corbeille...');
    // Code pour afficher le contenu de la corbeille
end;


begin
  clrscr;
  writeln('Bonjour et bienvenue dans mon programme :');
  writeln('Gestion d''une entreprise d''assurance automobile.');
  writeln('Appuyez sur Entrée pour continuer :');
  readln;

  nom_utilisateur := 'AMD';
  mot_de_passe := '2004';

  writeln;
  gotoxy(15,4);writeln('+---------------------------------+');
  gotoxy(15,6);writeln('|                                 |');
  gotoxy(15,6);writeln('+---------------------------------+');
 gotoxy(15,7);writeln ('|nomutilisateur : |               |');
 gotoxy(15,8);WRITELN ('|---------------------------------+');
 gotoxy(15,9);writeln ('| mot de passe:   |               |');
 gotoxy(15,10);writeln('+---------------------------------+');
 gotoxy(19,12);writeln('Veuillez vous authentifier pour accéder au programme');
 gotoxy(24,5);writeln('CONNEXION');
  i := 0;
  repeat
   gotoxy(39,7);writeln('                 ');
   gotoxy(38,7); readln(nom_utilisateur1);
   gotoxy(19,13);writeln('                 ');
     if   (nom_utilisateur1 <>nom_utilisateur) then
      begin
      writeln('Nom d''utilisateur incorrect !');
      writeln('C''est votre dernière chance.');
      end;
      i := i + 1;
      until (nom_utilisateur1 = nom_utilisateur)or (i>=2);
      if   (nom_utilisateur1 <>nom_utilisateur) and (i = 2) then
      begin
        writeln('Accès refusé. Vous avez épuisé vos tentatives.');

        exit; // Quitte le programme

    end ;

    begin

     j:= 0;
 repeat
 gotoxy(38,9);    WRITELN('                ');
 gotoxy(38,9);    READln(mot_de_passe1);
 gotoxy(19,15);writeln('                     ');
      if (mot_de_passe1 <> mot_de_passe)  then
      begin

        writeln('Saisissez votre mot de passe correctement.');
        writeln('C''est votre dernière chance.');

      end;
      j:=j+1;
           until (mot_de_passe1 = mot_de_passe) or  (j>=2);
            if (mot_de_passe1 <> mot_de_passe) and (j=2) then
            begin
          writeln('Accès refusé. Vous avez épuisé vos tentatives.');
          readln;
          exit; // Quitte le programme
        end;
      end ;
  writeln;
  CLRSCR;
  writeln('Taper Entre pour continuer');

  readln;
  clrscr;
 textCOLOR(green);
   writeln('..........LISTES DES MEMBRES DU GROUPE................ ');
    writeln('+-----------------------------------------------------+');
    writeln('|NOM     |  PRENOM | MATRICULE  | NUMERO TELEPHONE    |');
    writeln('+-----------------------------------------------------+');
    writeln('| BAH    |AMADOU   |   MI2311   | 629-96-49-57        |');
    writeln('+-----------------------------------------------------+');
    writeln('| Sylla  | macire  |   MI 23018 | 610-45-41-70        |');
    writeln('|        | simbyah |            |                     |');
    writeln('+-----------------------------------------------------+');
    writeln('|        |         |            |                     |');
    writeln('+-----------------------------------------------------+');
 gotoxy(20,11);writeln('le chef du groupe : AMADOU BAH');
 writeln('Taper entrer pour continuer');
  readln;
  clrscr;
  begin
  TEXTcolor(RED);
 gotoxy(16,3);  writeln('...BIENVENUE AU MENU DE GESTION...');
 repeat
      clrscr;
      TEXTcolor(white);
 gotoxy(25,4); writeln('+--------------+');
 gotoxy(25,5); writeln('| MENU GENERAL |');
 gotoxy(25,6); writeln('+--------------+');
   gotoxy(18,6);writeln('+------------------------------+');
   gotoxy(18,8);writeln('|                              |');
   gotoxy(18,9);writeln('|       1-SAISIE               |');
   gotoxy(18,10);writeln('|                              |');
   gotoxy(18,11);writeln('|       2-AFFICHAGE            |');
   gotoxy(18,12);writeln('|                              |');
   gotoxy(18,13);writeln('|       3-CONSULTATION         |');
   gotoxy(18,14);writeln('|                              |');
   gotoxy(18,15);writeln('|       4-MODIFICATION         |');
   gotoxy(18,16);writeln('|                              |');
   gotoxy(18,17);writeln('|       5-INSERTION            |');
   gotoxy(18,18);writeln('|                              |');
   gotoxy(18,19);writeln('|       6-TRI                  |');
   gotoxy(18,20);writeln('|                              |');
   gotoxy(18,21);writeln('|       7-SUPPRESSION          |');
   gotoxy(18,22);writeln('|                              |');
   gotoxy(18,23);writeln('|       8-CORBEILLE            |');
   gotoxy(18,24);writeln('|                              |');
   gotoxy(18,25);writeln('|       9-QUITTER              |');
   gotoxy(18,26);writeln('+------------------------------+');
  gotoxy(18,27); writeln('Entrez votre choix');
 choix := readkey;
 clrscr;
   case choix of
    '1':writeln('SAISIE');
    '2':writeln('AFFICHAGE');
    '3':writeln('CONSULATION');
    '4':writeln('MODIFICATION');
    '5':writeln('INSERTION');
    '6':writeln('TRI');
    '7':writeln('SUPPRESSION');
    '8':OuvrirCorbeille ;
    '9': begin
       writeln('QUITTER');
         exit;
         end;
     else
      writeln('CHOIX INVALIDE');
       readln;
    end;
    if (choix <> '9') then
    begin
     writeln('taper une touche pour continuer');
     readKEY;
    end;
    until choix = '9';
    end;




  readln;
end.


