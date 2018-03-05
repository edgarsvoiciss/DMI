 %% Ievads simboliskajā matemātikā
%% Piemērs
syms a b c d
syms a2 b2 c2 d2
A = [a b; c d];
B = [a2 b2; c2 d2];
A*B
 
ans =
 
[ a*a2 + b*c2, a*b2 + b*d2]
[ a2*c + c2*d, b2*c + d*d2]
 
A.*B
 
ans =
 
[ a*a2, b*b2]
[ c*c2, d*d2]
 
%% Simbolisko mainīgo definēšana
% Simbolisko mainīgo var definēt ar sym funckiju
x = sym('x');
% x - būs simboliskais mainīgais
sqrt(x^2)
 
ans =
 
(x^2)^(1/2)
 
% pārdefinēsim x, lai x būtu tikai pozitīvi skaitļi
x = sym('x','positive');
sqrt(x^2)
 
ans =
 
x
 
%% Simbolisko mainīgo definēšana
% Simboliskos mainīgos var definēt arī izmantojot funkciju syms
syms a b c d
% šeit vienlaicīgi tiek definēti 4 simboliskie mainīgie
A = [a b ; c d];
% transponēsim matricu
A'
 
ans =
 
[ conj(a), conj(c)]
[ conj(b), conj(d)]
 
%% ja mēs ierobežosim matricas elementus ar reāliem (ne kompleksiem) skaitļiem
syms a b c d real
A = [a b ; c d];
A'
 
ans =
 
[ a, c]
[ b, d]
 
%% Secinājums: ja mums nav kompleksie skaitļi, tad rezultāts būs vienkāršāks
%% ja mēs norādīsim, ka simboliskie mainīgie nav kompleksi








%% Simbolisko mainīgo definēšana (3)
% automātiska komplekso mainīgo definēšana
A = sym('a',[2,3])
 
A =
 
[ a1_1, a1_2, a1_3]
[ a2_1, a2_2, a2_3]
 
B = sym('b',[3,2])
 
B =
 
[ b1_1, b1_2]
[ b2_1, b2_2]
[ b3_1, b3_2]
 
A*B
 
ans =
 
[ a1_1*b1_1 + a1_2*b2_1 + a1_3*b3_1, a1_1*b1_2 + a1_2*b2_2 + a1_3*b3_2]
[ a2_1*b1_1 + a2_2*b2_1 + a2_3*b3_1, a2_1*b1_2 + a2_2*b2_2 + a2_3*b3_2]
 
%% Var precizēt elementu nosaukumus
A = sym('a%d%d',[2,3])
 
A =
 
[ a11, a12, a13]
[ a21, a22, a23]
 
A = sym('a_%d%d',[2,3])
 
A =
 
[ a_11, a_12, a_13]
[ a_21, a_22, a_23]
 


%% ATVASINĀŠANA
% atvasināšanu veic ar diff funkciju
% sintakse
syms x
diff(x^2)
 
ans =
 
2*x
 
%% parciālie atvasinājumi
syms x z
y = a*x+5*z^2;
diff(y,x)
 
ans =
 
a
 
diff(y,z)
 
ans =
 
10*z
 
%% Daudzkārtējie atvasinājumi 
syms x
diff(x^2,x,2)
 
ans =
 
2
 
%% Sintakse
% diff(atvasināmā_funkc, pēc_kāa_atvasināt,cik_reizes_atvasinat)
%% jauktie atvasinājumi






%% jauktie atvasinājumi
y = a*x+5*z^2;
diff(diff(y,x),z)
 
ans =
 
0
 



% Integrēšana
%% Integrēšana
syms x
int(x^2)
 
ans =
 
x^3/3
 
int(x^2,x)
 
ans =
 
x^3/3
 
syms z 
int(x^2,z)
 
ans =
 
x^2*z
 


%% sintakse:
% int(integrējamā_funkcija,mainigais_pec_kura_integrējam)



%% Noteiktie integrāļi
syms x
int(x^2,x,-3 3)
 int(x^2,x,-3 3)
              ↑
Error: Unexpected MATLAB expression.
 
int(x^2,x,-3,3)
 
ans =
 
18
 
int(x,x,0,5)
 
ans =
 
25/2
 

%% Rezultāts ko mēs iegūsim būs simboliskais mainīgais ( tas nav double tipa skaitlis)
% lai to izmantotu turpmākajos rēķinos 
% to ir jāpārvērš par double
S = int(x,x,0,5);
class(S)

ans =

sym

%% 
S = double(int(x,x,0,5))

S =

   12.5000

class(S)

ans =

double

%% Simboliskie mainīgie
% tie ir cipari, bet sym klasē
a = sym('1/2')
 
a =
 
1/2
 
a^2
 
ans =
 
1/4
 
%% double skaitļa konvertēšana par simbolisko mainīgo
sym(1/2,'r')
 
ans =
 
1/2
 
%% r - "kļudaina" (ar noapaļosanu) konversija
% parasti ir tas, kas ir vajadzīgs
sym(1/2,'f')
 
ans =
 
1/2
 
sym(1/2,'d')
 
ans =
 
0.5
 
sym(1/2,'e')
 
ans =
 
1/2
 
sym(0.5,'e')
 
ans =
 
1/2
 
sym(0,5,'e')
Error using sym>createCharMatrix (line 1479)
If the second argument specifies the dimensions of the generated symbolic vector or
matrix, then the first argument must be a character vector specifying the base name
for vector or matrix elements. It must be a valid variable name.

Error in sym>tomupadWithSize (line 1236)
    S = createCharMatrix(x, n);

Error in sym (line 204)
                S.s = tomupadWithSize(x, n);
 
sym(4/3,'e')
 
ans =
 
4/3 - eps/3
 
%% pamēģināsim ar citu skaitli
sym(1/10,'f')
 
ans =
 
3602879701896397/36028797018963968
 
sym(1/10,'e')
 
ans =
 
eps/40 + 1/10
 
sym(1/10,'d')
 
ans =
 
0.10000000000000000555111512312578
 
sym(1/10,'r')
 
ans =
 
1/10
 
sym(1/10)
 
ans =
 
1/10
 
%% viens piemērs kur var lietot simboliskās konstantes
A = hilb(3)

A =

    1.0000    0.5000    0.3333
    0.5000    0.3333    0.2500
    0.3333    0.2500    0.2000

A2 = sym(A)
 
A2 =
 
[   1, 1/2, 1/3]
[ 1/2, 1/3, 1/4]
[ 1/3, 1/4, 1/5]
 
%% variable precision aritmetic
pi

ans =

    3.1416

format long
pi

ans =

   3.141592653589793

vpa(pi)
 
ans =
 
3.1415926535897932384626433832795
 
vpa(pi,64)
 
ans =
 
3.141592653589793238462643383279502884197169399375105820974944592
 
vpa(exp(1),64)
 
ans =
 
2.71828182845904553488480814849026501178741455078125
 
% te arī var rēķināt...
a = vpa(pi);
b = vpa(sqrt(2));
c = a+b
 
c =
 
4.5558062159628882872643321074892
 
%% Robežas
syms x
limit(1/(x-1),x,1,'left')
 
ans =
 
-Inf
 
limit(1/(x-1),x,1,'right')
 
ans =
 
Inf
 
%%Sintakse
% limit(izteiksme,mainīgais,kur_tiecās,_no_kuras_puses)


%% Vienādojumu risināšana

syms x
solve(x^2-6*x+8,x)
 
ans =
 
 2
 4
 
%% rakstam tikai kreiso pusi, labajā pusē jābūt 0
%% citas sintakses iespējas ( jauniem Matlab)
solve(x^2-6*x+8=0,x)
 solve(x^2-6*x+8=0,x)
                ↑
Error: The expression to the left of the equals sign is not a valid target for an
assignment.
 
solve(x^2-6*x+8==0,x)
 
ans =
 
 2
 4
 
%% citas sintakses iespējas ( veciem Matlab)
solve('x^2-6*x+8=0','x')
Warning: Support of character vectors that are not valid variable names or define a
number will be removed in a future release. To create symbolic expressions, first
create symbolic variables and then use operations on them. 
> In sym>convertExpression (line 1559)
  In sym>convertChar (line 1464)
  In sym>tomupad (line 1216)
  In sym (line 179)
  In solve>getEqns (line 405)
  In solve (line 225) 
Warning: Do not specify equations and variables as character vectors. Instead, create
symbolic variables with syms. 
> In solve>getEqns (line 445)
  In solve (line 225) 
 
ans =
 
 2
 4
 
 %% Izteiksmju vienkāršošana
syms x
y = (x-1)*(x-2)/((x-3)*(x-4));
yd = diff(y)
 
yd =
 
(x - 1)/((x - 3)*(x - 4)) + (x - 2)/((x - 3)*(x - 4)) - ((x - 1)*(x - 2))/((x - 3)*(x - 4)^2) - ((x - 1)*(x - 2))/((x - 3)^2*(x - 4))
 
%% vienkāršosim 
simplify(yd)
 
ans =
 
-(2*(2*x^2 - 10*x + 11))/(x^2 - 7*x + 12)^2
 
%% citas vienkāršojuma iespējas
y = (x-2)*(x-4);
expand(y)
 
ans =
 
x^2 - 6*x + 8
 
ye = expand(y);
%%
factor(ye)
 
ans =
 
[ x - 2, x - 4]
 
%%
horner(y)
 
ans =
 
x*(x - 6) + 8
 
y = x^5+6*x^4+2*x^3+8*x^2;
horner(y)
 
ans =
 
x^2*(x*(x*(x + 6) + 2) + 8)
 
%% Substitūcijas
% ir dots y = x^2-6*x+5
% un x vietā ieliksim z-1
syms z x
y = x^2-6*x+5;
subs(y,x,z-1
 subs(y,x,z-1
             ↑
Error: Expression or statement is incorrect--possibly unbalanced (, {, or [.
 
Did you mean:
subs(y,x,z-1)
 
ans =
 
(z - 1)^2 - 6*z + 11
 



%% Formulas "Skaista" attēlošana
syms x
y = (x-1)/(x^2-2);
pretty(y)
 x - 1
------
 2
x  - 2

%% Formulas "Skaista" attēlošana (2)
% ar latex ģeneratoru
symsx 
Undefined function or variable 'symsx'.
 
Did you mean:
syms x
y = (x-1)/(x^2-2);
y2 = latex(y)

y2 =

\frac{x - 1}{x^2 - 2}

%% lai latex likt matlabā vajadzētu sākumā un formulas beigās ielikt "$" zīmes 
% un 2. vajadzētu mainīt interpretatoru uz Latex
str = ['$',y2,'$'];
str

str =

$\frac{x - 1}{x^2 - 2}$

text(0,0.5,str,'interpreter','Latex','FontSize',16)
%% Rezultātu attēlošana grafiskajā veidā
ezplot(y)
%% atkārtosim to pašu ar plot
%1.dota izteiksme
y = (x-1)/(x^2-2);
% 2. definēsim x kā skaitļu vektoru
x = [-2*pi:0.01:2*pi];
%3.jāveic izteiksmes vektorizācija
% (jāieliek punktiņi pirms reizinājuma zīmēm)
yv = vectorize(y)

yv =

(x - 1)./(x.^2 - 2)

%4. x vietā jāliek skaitļu vektors
yd = eval(yv);
% eval ir reālā laika interpretatora funkcija
%5. zīmēsim grafiku
plot(x,yd)
% 6. pamainīsim mērogus x y asīm
axis ([-6 6 -10 10])
plot(x,yd)
axis ([-6 6 -10 10])
% 6.liekam anotāciju
% 7.liekam anotāciju
y2 = latex(y);
h = legend(['$',y2,'$']);set(h,'Interpreter','Latex')
