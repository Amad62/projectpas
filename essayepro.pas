program essayepro;
uses Crt;

const
  MaxClients = 200; // Nombre maximum de clients

type
  Client = record
    numeroAssurance: string[6];
    nom: string[20];
    prenom: string[20];
    telClient: string[15];
    matriculeVoiture: string[15];
    marque: string[10];
    modele: string[10];
    nbMois: Integer;
    montant: Real;
  end;

var
  listeClients: array[1..MaxClients] of Client;
  nbClientsEnregistres: Integer;
  choixEntreprise: Char;

procedure SaisieClient(var c: Client; numClient: Integer);
begin
  with c do
  begin
    GotoXY(2, WhereY); numeroAssurance := 'NASS ' + Format('%02d', [numClient]);
    GotoXY(12, WhereY); ReadLn(nom);
    GotoXY(34, WhereY); ReadLn(prenom);
    GotoXY(48, WhereY); ReadLn(telClient);
    GotoXY(64, WhereY); ReadLn(matriculeVoiture);
    GotoXY(82, WhereY); ReadLn(marque);
    GotoXY(94, WhereY); ReadLn(modele);
    GotoXY(104, WhereY); ReadLn(nbMois);
    GotoXY(116, WhereY); ReadLn(montant);
  end;
end;

procedure AfficherTableauSaisie;
var
  i: Integer;
begin
  ClrScr;
  Writeln('+------------------------------------------------------------------------------------------------+');
  Writeln('|               SAISIE DES CLIENTS DE                    |');
  Writeln('+------------------------------------------------------------------------------------------------+');
  Writeln('|N ass| NOM    |PRENOM     |TEL CLIENTS  |N MATR VOITURE |MARQUE   |MODELE  | nbre mois |montant |');
  Writeln('+------------------------------------------------------------------------------------------------+');
  for i := 1 to nbClientsEnregistres do
  begin
    with listeClients[i] do
    begin
      GotoXY(1, WhereY); Write('|', numeroAssurance, '|');
      GotoXY(9, WhereY); Write(nom:8, '|');
      GotoXY(31, WhereY); Write(prenom:11, '|');
      GotoXY(45, WhereY); Write(telClient:13, '|');
      GotoXY(61, WhereY); Write(matriculeVoiture:15, '|');
      GotoXY(79, WhereY); Write(marque:9, '|');
      GotoXY(91, WhereY); Write(modele:8, '|');
      GotoXY(101, WhereY); Write(nbMois:10, '|');
      GotoXY(113, WhereY); Write(montant:8:2, '|');
      Writeln;
    end;
    Writeln('+------------------------------------------------------------------------------------------------+');
  end;
end;

procedure SaisiePourEntreprise;
begin
  Writeln('Choisissez une entreprise parmi les suivantes :');
  Writeln('1. UGAR');
  Writeln('2. SOGAM');
  Writeln('3. SUNU');
  Writeln('4. VISTA');
  Writeln('5. AMD assurances');
  Writeln('6. QUITTER');
  repeat
    choixEntreprise := ReadKey;
    case choixEntreprise of
      '1'..'5': begin
                  if nbClientsEnregistres < MaxClients then
                  begin
                    Inc(nbClientsEnregistres);
                    SaisieClient(listeClients[nbClientsEnregistres], nbClientsEnregistres);
                    AfficherTableauSaisie;
                  end
                  else
                  begin
                    Writeln('Nombre maximum de clients atteint.');
                  end;
                end;
      '6': Break; // Sortie de la procédure
      else
        Writeln('Choix invalide. Veuillez réessayer.');
    end;
  until choixEntreprise = '6';
end;

begin
  // Initialisation
  nbClientsEnregistres := 0;

  // Appel de la procédure pour la saisie selon l'entreprise choisie
  SaisiePourEntreprise;
end.

