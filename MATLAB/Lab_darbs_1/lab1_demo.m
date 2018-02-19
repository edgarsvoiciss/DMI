mkdir matlab
cd matlab
%% Merijumu datu apstrade
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7];
plot(Um,Im,'o-')
% Mēģināsim atminēt sakarību, kas sasaista x(Um) un y(Im)
% Sakarību meklēsim kā otrās kārtas polinomu
% Koeficientus 2.kārtas polinomam atradīsim ar POLYFIT funkciju
% Poly - polynomial Fit - Fitting
% C = polyfit(x,y,N) kur N - polinoma kārta
C = (Um,Im,2)
 C = (Um,Im,2)
        ↑
Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
 
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

% noformēšu "x" ar sīkāku soli
U = -1:0.01:3.2;
% aprēķināsim y
I = C(1)*U.^2+C(2)*U+C(3);
% zimesim grafiku
plot(Um,Im,'o',U,I)
% atkartojam to pašu ar 3.kārtas polinomu
C = polyfit(Um,Im,3)

C =

    0.1838   -0.4328    0.3391    2.0688

I = C(1)*U.^3+C(2)*U.x^2+C(3)*U+C(4);
Struct contents reference from a non-struct array object.
 
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
plot(Um,Im,'o',U,I)
% nākamais atkārtosim 4.kāŗtas polinomam
% bet pašas izteiksmes sastādīšana ir laikietilpīga
% Tāpēc to automatizēsim
% izmantojot POLYVAL funkciju POLY- polynomial VAL - value
% y = polyval(C,x);
C = polyfit(Um,Im,4)

C =

   -0.0557    0.4436   -0.6159    0.0221    2.2373

I = polyval(C,U);
plot(Um,Im,'o',U,I)



% pie lielās polinoma pakāpes gan aproksimācijai gan interpolācijai radīsies 
% nevēlamās oscilācijas
% lineāra sakarība
C = polyfit(Um,Im,1);
I = polyval(C,U);
plot(Um,Im,'o',U,I)


%% vairākas mērījumu sērijas
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
        0.9 1.8 2.6 3.3 4.5;
        1.0 2.0 2.4 3.4 4.3;
        0.8 1.9 2.5 3.5 4.4;
        1.0 2.1 2.2 3.3 4.5];
%% jautājums kā matlabs zīmēs matricas?
figure,plot(Um,Im,'o-')
figure,plot(Um,Im','o-')
% pielaikosim polinomu
% meklesim vidējo vērtību
Ivid = mean(Im)

Ivid =

    0.9600    2.0000    2.3600    3.3400    4.4800

C = polyfit(Um,Ivid,3);
U = -1:0.01:3.2;
I = polyval(C,U);
% uzdevums - uzzīmēt grafiku, lai mērijumu punkti būtu ar 'o'% 
% lai vidējais starp mērījumiem būtu ar '*k'
% lai pielaikotais polinoms būtu ar līniju '-'
plot(Um(1),Im(1),'o',Um(2),Im(2),'*k',Um(3),Im(3),'-')
plot(Um,Im','o',Um,Ivid,'*',U,I,'-')



% kad ir vairākas mērījumu sērijas
% rēķina vidējo kvadrātisko novirzi
Ivkn = std(Im);
errorbar(Um,Ivid,Ivkn)
%% kā ielasīt skenēto grafiku un iegūt mērījumu punktus
cd

/home/user/matlab

ls
image1.JPG  image2.JPG

%% ielasīsim bildes matlabā
A = imread('image1.jpg');
Error using imread>get_full_filename (line 481)
File "image1.jpg" does not exist.

Error in imread (line 344)
    filename = get_full_filename(fid, errmsg, filename);
 
A = imread('image1.JPG');
B = imread('image2.JPG');
whos A
  Name        Size                 Bytes  Class    Attributes

  A         686x768x3            1580544  uint8              

figure(1),image(A),shg
figure(2),image(B),shg
% otram grafikam uzstādīsim īstos x un y
figure(2),image([0 14],[0 80],B),
figure(2),image([0 14],[80 0],B),
set(gca,'YDir','ņormal')
Error using matlab.graphics.axis.Axes/set
While setting property 'YDir' of class 'Axes':
'ņormal' is not a valid value. Use one of these values: 'normal' | 'reverse'.
 
set(gca,'YDir','normal')
% atliek vien nolasīt grafiku
[x,y] = ginput(5)

x =

    3.6549
    6.5314
   10.2158
   12.6399
    7.4040


y =

   14.2944
   28.3156
   39.7663
   43.5053
   32.9894

