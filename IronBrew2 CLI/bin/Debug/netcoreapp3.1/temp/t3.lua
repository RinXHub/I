local t=string.byte;local i=string.char;local c=string.sub;local h=table.concat;local l=table.insert;local b=math.ldexp;local g=getfenv or function()return _ENV end;local l=setmetatable;local u=select;local l=unpack or table.unpack;local f=tonumber;local function s(d)local e,n,a="","",{}local t=256;local o={}for l=0,t-1 do o[l]=i(l)end;local l=1;local function r()local e=f(c(d,l,l),36)l=l+1;local n=f(c(d,l,l+e-1),36)l=l+e;return n end;e=i(r())a[1]=e;while l<#d do local l=r()if o[l]then n=o[l]else n=e..c(e,1,1)end;o[t]=e..c(n,1,1)a[#a+1],e,t=n,n,t+1 end;return table.concat(a)end;local r=s('2102122752121Z27622E22C22722022A2122742752322272121Y27621G21127621327M27527Q27G27527L27527427Q27727P276282');local o=bit and bit.bxor or function(l,n)local e,o=1,0
while l>0 and n>0 do
local a,c=l%2,n%2
if a~=c then o=o+e end
l,n,e=(l-a)/2,(n-c)/2,e*2
end
if l<n then l=n end
while l>0 do
local n=l%2
if n>0 then o=o+e end
l,e=(l-n)/2,e*2
end
return o
end
local function n(e,l,n)if n then
local l=(e/2^(l-1))%2^((n-1)-(l-1)+1);return l-l%1;else
local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local l=1;local function e()local c,a,n,e=t(r,l,l+3);c=o(c,38)a=o(a,38)n=o(n,38)e=o(e,38)l=l+4;return(e*16777216)+(n*65536)+(a*256)+c;end;local function d()local e=o(t(r,l,l),38);l=l+1;return e;end;local function a()local e,n=t(r,l,l+2);e=o(e,38)n=o(n,38)l=l+2;return(n*256)+e;end;local function s()local l=e();local e=e();local c=1;local o=(n(e,1,20)*(2^32))+l;local l=n(e,21,31);local e=((-1)^n(e,32));if(l==0)then
if(o==0)then
return e*0;else
l=1;c=0;end;elseif(l==2047)then
return(o==0)and(e*(1/0))or(e*(0/0));end;return b(e,l-1023)*(c+(o/(2^52)));end;local f=e;local function w(e)local n;if(not e)then
e=f();if(e==0)then
return'';end;end;n=c(r,l,l+e-1);l=l+e;local e={}for l=1,#n do
e[l]=i(o(t(c(n,l,l)),38))end
return h(e);end;local l=e;local function b(...)return{...},u('#',...)end
local function h()local r={};local f={};local l={};local i={r,f,nil,l};local l=e()local o={}for n=1,l do
local e=d();local l;if(e==1)then l=(d()~=0);elseif(e==3)then l=s();elseif(e==0)then l=w();end;o[n]=l;end;i[3]=d();for i=1,e()do
local l=d();if(n(l,1,1)==0)then
local c=n(l,2,3);local t=n(l,4,6);local l={a(),a(),nil,nil};if(c==0)then
l[3]=a();l[4]=a();elseif(c==1)then
l[3]=e();elseif(c==2)then
l[3]=e()-(2^16)elseif(c==3)then
l[3]=e()-(2^16)l[4]=a();end;if(n(t,1,1)==1)then l[2]=o[l[2]]end
if(n(t,2,2)==1)then l[3]=o[l[3]]end
if(n(t,3,3)==1)then l[4]=o[l[4]]end
r[i]=l;end
end;for l=1,e()do f[l-1]=h();end;return i;end;local function i(l,e,t)local n=l[1];local e=l[2];local l=l[3];return function(...)local d=n;local e=e;local n=l;local l=b
local o=1;local l=-1;local r={};local a={...};local c=u('#',...)-1;local l={};local e={};for l=0,c do
if(l>=n)then
r[l-n]=a[l+1];else
e[l]=a[l+1];end;end;local l=c-n+1
local l;local n;while true do
l=d[o];n=l[1];if n<=3 then if n<=1 then if n==0 then e[l[2]]=l[3];else
local l=l[2]e[l](e[l+1])end;elseif n==2 then e[l[2]]=l[3];else e[l[2]]=t[l[3]];end;elseif n<=5 then if n==4 then
local l=l[2]e[l](e[l+1])else do return end;end;elseif n==6 then do return end;else e[l[2]]=t[l[3]];end;o=o+1;end;end;end;return i(h(),{},g())();