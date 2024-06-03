program GestionParcAutomobile;

uses crt;

type
  MarqueVoiture = (Peugeot, Renault, Citroen, Ford, Toyota, Honda, BMW, Mercedes, Audi, Autre);
  ModeleVoiture = string;
  NumeroAssurance = string;

var
  marque: MarqueVoiture;
  modele: ModeleVoiture;
  assurance: NumeroAssurance;
  choix: integer;

procedure AfficherMenuMarques;
begin
  writeln('1. Peugeot');
  writeln('2. Renault');
  writeln('3. Citroen');
  writeln('4. Ford');
  writeln('5. Toyota');
  writeln('6. Honda');
  writeln('7. BMW');
  writeln('8. Mercedes');
  writeln('9. Audi');
  writeln('10. Autre');
end;

function FormaterNumeroAssurance(num: integer): NumeroAssurance;
begin
  Str(num:3, assurance);
  FormaterNumeroAssurance := 'NASS ' + assurance;
end;

procedure SaisirMarque;
begin
  repeat
    clrscr;
    AfficherMenuMarques;
    writeln('Entrez le numero correspondant a la marque de la voiture :');
    readln(choix);
  until (choix >= 1) and (choix <= 10);
  marque := MarqueVoiture(choix - 1);
end;

procedure SaisirModele;
begin
  writeln('Entrez le modele de la voiture :');
  readln(modele);
end;

procedure SaisirAssurance;
var
  numAssurance: integer;
begin
  writeln('Entrez le numero d''assurance (sans le prefixe) :');
  readln(numAssurance);
  assurance := FormaterNumeroAssurance(numAssurance);
end;

begin
  SaisirMarque;
  SaisirModele;
  SaisirAssurance;
  gotoxy(10, 10); writeln('Marque choisie : ', MarqueVoiture(marque));
  gotoxy(10, 11); writeln('Modele : ', modele);
  gotoxy(10, 12); writeln('Numero d''assurance : ', assurance);
  readln;
end.

