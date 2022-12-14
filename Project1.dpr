﻿program Project1;
uses
  System.SysUtils,
  Windows;
const vowel = ['a', 'e', 'i', 'o', 'u','y'];
const numOfLetters = 128;
type
 Tletters = array[1..numOfLetters] of char;
var letters: Tletters;
i:integer;
procedure setLetters(var letters: Tletters);
var i,k:integer;
alphabet:char;
begin
k:=1;
for alphabet := 'a' to 'z' do
  begin
    if charInSet(alphabet,vowel) then
    begin
       for i := 1 to 8 do
       begin
         letters[k]:=alphabet;
         inc(k);
       end;
    end else
    begin
       for i := 1 to 4 do
       begin
         letters[k]:=alphabet;
         inc(k);
       end;
    end;
  end;
end;
begin
setLetters(letters);
for i := 1 to numOfLetters do
    write(letters[i],' ');
readln;
end.
