program gestion_assurance_auto3;
uses CRT;

var
  nom_utilisateur, nom_utilisateur1: string[20];
  mot_de_passe, mot_de_passe1: string[20];
  choix: integer;
  c: char;
  i: integer;

procedure AfficherMenu;
begin
  clrscr;
  writeln('+--------------+');
  writeln('| MENU GENERAL |');
  writeln('+--------------+');
  writeln('| 1. SAISIE    |');
  writeln('| 2. AFFICHAGE |');
  writeln('| 3. CONSULTATION |');
  writeln('| 4. MODIFICATION |');
  writeln('| 5. INSERTION |');
  writeln('| 6. TRI       |');
  writeln('| 7. SUPPRESSION |');
  writeln('| 8. CORBEILLE |');
  writeln('| 9. QUITTER   |');
  writeln('+--------------+');
  writeln('Entrez votre choix : ');
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
  writeln('Veuillez vous authentifier pour accéder au programme :');

  i := 0;
  repeat
    write('Nom d''utilisateur : ');
    readln(nom_utilisateur1);

    write('Mot de passe : ');
    mot_de_passe1 := ''; // Initialise le mot de passe à vide
    repeat
      c := ReadKey; // Lit un caractère sans l'afficher
      if c = #13 then // Si la touche Entrée est pressée
        break; // Sort de la boucle
      mot_de_passe1 := mot_de_passe1 + c; // Ajoute le caractère au mot de passe
      write('*'); // Affiche un astérisque
    until false; // La condition est toujours fausse, donc la boucle s'exécute une fois

    writeln;
    if (nom_utilisateur1 = nom_utilisateur) and (mot_de_passe1 = mot_de_passe) then
    begin
      writeln('Authentification réussie !');
      AfficherMenu; // Appelle la procédure pour afficher le menu
      readln(choix);

      case choix of
        1: writeln('Option SAISIE sélectionnée.');
        2: writeln('Option AFFICHAGE sélectionnée.');
        3: writeln('Option CONSULTATION sélectionnée.');
        4: writeln('Option MODIFICATION sélectionnée.');
        5: writeln('Option INSERTION sélectionnée.');
        6: writeln('Option TRI sélectionnée.');
        7: writeln('Option SUPPRESSION sélectionnée.');
        8: writeln('Option CORBEILLE sélectionnée.');
        9: begin
             writeln('Merci d''avoir utilisé le programme.');
             exit; // Quitte le programme
           end;
      else
        writeln('Choix invalide. Veuillez réessayer.');
      end;

      writeln('Appuyez sur Entrée pour continuer.');
      readln;
    end
    else
    begin
      writeln('Nom d''utilisateur ou mot de passe incorrect !');
      if i < 2 then
      begin
        writeln('Veuillez réessayer.');
      end
      else
      begin
        writeln('C''est votre dernière chance.');
      end;
      i := i + 1;
    end;
  until (i >= 3) or (nom_utilisateur1 = nom_utilisateur) and (mot_de_passe1 = mot_de_passe);

  if (nom_utilisateur1 <> nom_utilisateur) or (mot_de_passe1 <> mot_de_passe) then
  begin
    writeln('Accès refusé. Vous avez épuisé vos tentatives.');
    readln; // Attends que l'utilisateur appuie sur Entrée pour quitter
  end;
end.

