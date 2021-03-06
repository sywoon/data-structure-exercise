loadstring = loadstring or load 
local base_char,keywords=128,{"and","break","do","else","elseif","end","false","for","function","if","in","local","nil","not","or","repeat","return","then","true","until","while","string","table","tostring","numbertostring","require","insert","self","type","os","package","preload","\"table\"","logs","ipairs","format","pairs","totaltime","\"number\"","attributes","debug","execute","reportsByTitle","print","tableAddress","writeFile","calltime","sub","gsub","__showInnerRef","callcount","splitpath","\" 1>nul 2>nul\"","getFuncReport","logFunc","mkpredir","time","math","mkdir","linedefined","clock","\"/\"","concat","\"string\"","loadstring","list","dirname","'\"'","\"xcopy /Y /E /I /Q \"","io","short_src","profilingHandler","\" localhost > NUL\"","__parent","\"Unknown object!\"","readFile","basename","tonumber","tracingHandler","modf","__keyCanBeNum","trace","date","isdir","getinfo","sethook","match","any2str","level","\"\\n\"","\"\\\\\"","setmetatable","getFuncTitle","splitpathex","unpack","\"\"","currentdir","_G","startTime","traceback","\"rd /S /Q \"","close","month","\"ping -n \"","\"copy /Y \"","stopTime","clearLog","\"  \"","setLevel","seek","fmod","name","\"profile\"","hour","year","mode","open","remove","invert","rename",}; function prettify(code) return code:gsub("["..string.char(base_char).."-"..string.char(base_char+#keywords).."]", 
	function (c) return keywords[c:byte()-base_char]; end) end return assert(loadstring(prettify[===[. ['sllib.class']=((...) e={}Class=e
 n={}Class.Ę=n
  n(e)e.__index=e
 Ü({},e)
 e:new(...) e=n()e:ctor(...) e

 e:ctor(...)
 e:dtor()
 e:subclass(t) e=n()e.__name=t
e.Ę=
 e

 e:super() .Ę

). ['sllib.debug_ext']=((...) r="sllib.profiler" a=10
 i=100
 Š.tracevalue(e,t)e=e  2
t=t  2
 r={}.(r,"stack tracevalue:") l=
 n=ė t=e+t
 e<t 
 o=Š.Õ(e,"nS")l=o.what=="main" t={}.(t,.¤(n.."file:%s line:%d function:%s()\n",o.Į,o.ŧ,o.đ ā))n=n..ė n=1,a 
 n,e=Š.getlocal(e,n) ==n 


 (e)~="function" n~="self"
 o
 (e)==Ą
o=.°(.tostringex(e),1,i)
o=Ø(e)
.(t,Ø(n).."="..o).(t,Ú)

.(r,.ŋ(t,n)) l 


e=e+1
n=n..ė
 .ŋ(r,Ú)
Š.startanalysis=(e)r:í(3)r:start(e)
Š.stopanalysis=(e)r:stop(e)
). ['sllib.global']=((...) (e) e<0 
"-"..(-e)
 e<=10^13 
 (e)
 ē.Đ(e)~=e 
 (e)
 n=ē.ī(e,10^13) e=ē.Đ(e/10^13) e=.¤("%s%013s",(e),(n)) e

). ['sllib.io_ext']=((...) Æ.Ė(n,e)e=e "r" e=Æ.õ(n,e) e== 
 

 n=e:read("*a")e:æ() n

 Æ.Ž(n,t,e)e=e "w" e=Æ.õ(n,e) e== 
 

e:write(t)e:æ() 

 Æ.fileSize(e) n=0
 e=Æ.õ(e,"r") e 
 t=e:î()n=e:î("end")e:î("set",t)Æ.æ(e)
 n

 Æ.readJsonFile(e) e=Æ.Ė(e) ==e  e==ā
 

 n="cjson" "json" e=n.decode(e) e

 Æ.writeJsonFile(e,t) n=.Ã(e).ģ(n) n="cjson" "json"Æ.Ž(e,n.encode(t)) 

 Æ.readLuaFile(e) e=Æ.Ė(e) ==e 
 

 n=Á  load
 e=n(e)() e

 Æ.writeLuaFile(n,e) t=.Ã(n).ģ(t) ==. 
 

 e=.(e) ==e 
 

Æ.Ž(n,e) 

). ['sllib.logs']=((...)ĸ=ĸ {} r=
 o=
 n=
  l(e) (e)==Ā
 n 
Ä..e..Ä
 e

 (e)==Ą
 .(e) (e)==§
 (e)
 e=(e)Ë e


  t() o 
 o

 e=.Ķ("*t") e=.¤("%s_%s_%s.log",e.ķ,e.į,e.day)o=e
 e

  i(n) e=t()Æ.Ž(e,n,"a+")
  t(t) e=.Ķ("*t") o=.Ŋ() n=t
 r 
n=.¤("[%s-%s-%s %02s:%02s:%02s %s]\n%s",e.ķ,e.į,e.day,e.ō,e.min,e.sec,o,t)
n=t

Ŧ(n)i(n)i('\n')
 ĸ.showLogTime(e)r=e

 ĸ.setLogPath(e)o=e

 ĸ.clear() e=getLogPath()  .exist(e)


Æ.Ž(e,ā)
 ĸ.i(...) n,e  Ŗ({...})
 e=l(e)t(e)

 ĸ.w(...).Ē("echo. & color 0E") n,e  Ŗ({...})
 e=l(e)t(e)

 ĸ.e(...).Ē("echo. & color 0C")ĸ.i(...) e=n
n=
ĸ(Š.ä(ā,2))n=e

 ĸ.f(e,...)t(.¤(e,...))
 ĸ.Ō(e,...)e=e "nil" e=.¤(e,...) e=Š.ä(e,2)t(e)
 ĸ
). ['sllib.os_ext']=((...) n="lfs" .sleep(e)e=e  1
.Ē(č..Î(e+1)..É)
  e(e)e=.ą(e,Û,ž) .°(e,-1,-1)==ž
e=.°(e,1,-2)
 e

  r(e) .×(e,"^%a:")
 .newfile(e).¸(e) e="echo.>"..e
.Ē(e)
 .á() n.á()
 .chdir(e) n.chdir(e)
 .filetime(t)t=e(t) e=n.¨(t) e  e.modification  0

 .Ô(t)t=e(t) e=n.¨(t) e  e.ô=="directory"
 .isfile(t)t=e(t) e=n.¨(t) e  e.ô=="file"
 .exist(t)t=e(t) e=n.¨(t) ~=e

 .filesize(t)t=e(t) e=n.¨(t) e.size

 .´(n)n=e(n) e=#n
 t=.°(n,e,e) e>0  t~=ž
e=e-1
t=.°(n,e,e)
 e==0 
ā,n

 t=.°(n,1,e-1) e=.°(n,e+1) t,e

 .Ū(n) e={} t=n
 n
  
t,n=.´(t) ==n ā==n 


.(e,n)
e=Â.reverse(e) e,#e

 .Ã(e) e,n=.´(e) e

 .Í(e) n,e=.´(e) e

 .extension(e) .×(e,"%.%w*$")
 .ģ(t)t=e(t) t=.Ū(t) e=ā o=1,#t 
e=e..t[o]  r(t[o])  .Ô(e)
 e,n=n.ģ(e) ==e 
 e,n


e=e..ž
 

 .¸(n)n=e(n) e=.Ã(n) e  e~=ā
 .ģ(e)
 

 .rmdir(n,e)  .Ô(n)
 e 
Ŧ("os.rmdir error:not dir:"..n)


n=.ą(n,ž,Û) t
 e 
t=å..n

t=å..n..ĩ
 e== 
e=Ŧ

 e  e(t)
 .Ē(t)
 .movedir(t,n,o) ==o 
o=

t=e(t)n=e(n) o 
 e=.Í(t)n=n..ž..e

.¸(n) e,o=.ø(t,n)  e 
Ŧ("movedir failed",t,n)
 e

 .copydir(n,t,o)n=e(n)t=e(t)  .Ô(n)
Ŧ("path error",n,t) 

n=.ą(n,ž,Û)t=.ą(t,ž,Û) e
 o 
e=Å..n.." "..t

e=Å..n.." "..t..ĩ
 o== 
o=Ŧ

 o  o(e)
.Ē(e)
 .copyfile(o,n,e).¸(n)o=.ą(o,ž,Û)n=.ą(n,ž,Û) t
 e 
t=é..o.." "..n

t=é..o.." "..n..ĩ
 e== 
e=Ŧ

 e  e(t)
 .Ē(t)
 .movefile(n,e).ģ(e) t=.Í(n)e=e..ž..t
 .ø(n,e)
 .dirempty(e) e=.dir(e,) .empty(e)
 .dir(o,e,l) .°(o,-1,-1)==ž
o=.°(o,1,-2)
 t=30
 (e)=="boolean"
e=e==  1  t
 (e)==§
e=e

e=t

 r={} i={}  a(o,t)t=t-1
 e  n.dir(o)
 e~='.' e~='..'
 e=o..'/'..e
 n=n.¨(e) n== 


 n=n.ô=='directory' ==l  l(e,n)
 n 
.(r,e)
.(i,e)
 n  t>0 
a(e,t)




a(o,e) i,r

). ['sllib.profiler']=((...) e={} e:setLogFunc(e).ˇ=e

 e:í(e).Ų=e

 e:start(e)e=e ņ.ˇ=Ŧ
 e=="trace"
Š.Ö(bind(.Ī,),'c')
.Ģ={}.ã=.Ŋ().Ų=3
Š.Ö(bind(.Č,),'cr')

 e:stop(e)e=e ņŠ.Ö() e=="trace"


.ę=.Ŋ() n=.ę-.ã
 n<.001 
.ˇ("total time less 0.001s")

 e=.values(.Ģ).sort(e,(n,e) n.Ļ>e.Ļ
) t,e  Ŗ(e)
 n=(e.Ļ/n)*100
 n<1 


 e=.¤("time:%6.3f, percet:%.2f%%, count:%d, %s",e.Ļ,n,e.ŗ,e.title).ˇ(e)

 e:Ī() e=Š.Õ(.Ų,'nS') e=.¤("file:%s line:%d function:%s()",e.Į,e.ŧ,e.đ ā).ˇ(e)
 e:Ũ(e) n=e.đ 'anonymous' t=e.Į 'C_FUNC' e=e.ŧ  0
 .¤("file:%s line:%s function:%s",t,e,n)
 e:ļ(e) n=:Ũ(e) e=.Ģ[n]  e 
e={title=n,ŗ=0,Ļ=0,}.Ģ[n]=e

 e

 e:Č(n) o=(e) e=:ļ(e)e.¯=.Ŋ()e.ŗ=e.ŗ+1

 t=(e) n=.Ŋ() e=:ļ(e) e.¯  e.¯>0 
e.Ļ=e.Ļ+(n-e.¯)e.¯=0


 e=Š.Õ(.Ų,'nS') n=="call"
o(e) n=="return"
t(e)

 e
). ['sllib.string_ext']=((...) .strtox16(e) .ą(e,".",(e) .¤("%02X",.byte(e)))
 .x16tostr(e) .ą(e,"..",(e) e=Î(e,16) .char(e))
 .dumpex(e) .ą(e,".",(e) .¤("%02X ",.byte(e)))
 .iterateString(n,e,t)e=e '\n'  .×(n,e)
t(n)

 e  .gmatch(n,"(.-)"..e)
t(e)
 .°(n,#n-#e+1)==e 
t(ā)

 e=.×(n,".+"..e.."(.*)$") e 
t(e)

 .split(n,o) e=1
 t=1
 t={} e 
 r,o=.find(n,o,e) r  o 
.(t,.°(n,e,r-1))e=o+1

 e<=#n 
.(t,.°(n,e,-1))



 t

). ['sllib.table_ext']=((...)  o(t,e) n,e  Ĩ(e)
t[n]=e


  g(e,n) n,t  Ĩ(n)
e[n]=e[n] t


 e={˛=,Ņ=,}o(,e)  r(r)  ˛ 
{}
 t={} o={}  n(e) t[e]
o[e]=e


t[e]=e
 e,t  Ĩ(e)
 (e)==Ą
n(e) (t)==Ą
n(t)


n(r) o

  c(c,u,d) n=.
 f=.ŋ
 a={} r=r(c)  s(o,l,t)l=l (l-1) 30
 l<0 
 t.."..."
t=t ā next(o)== 
 t.."{}"
 ˛ 
a[o]=o

 e={}n(e,t.."{") r[o]
n(e,­(o))
n(e,Ú)t=t..ė Ņ #o==0 
 i,r  Ĩ(o)
n(e,t) (i)==Ą
 a[o]
n(e,­(o))
ö(e)n(e,s(i,l,t))
 (i)==§
n(e,"["..(i).."]")
 t=â.(i)n(e,'["'..t..'"]')
n(e," = ") (r)==Ą
 a[r]
n(e,­(r))
n(e,Ú)n(e,s(r,l,t))
 (r)==§
n(e,(r)) (r)==Ā
n(e,Ä..r..Ä)
n(e,â.(r))
n(e,",\n")

 r,o  Ŗ(o)
n(e,t)n(e,"["..(r).."]")n(e," = ") (o)==Ą
n(e,Ú) a[o]
n(e,­(o))
n(e,s(o,l,t))
 (o)==§
n(e,(o))
n(e,Ä..â.(o)..Ä)
n(e,",\n")

e[#e]=","n(e,Ú...°(t,1,-3).."}") f(e)
 s(c,u,d)
  l(t,o) n=.
 i=.ŋ
o=o (o-1) 10
 o<0 
"..."
 e={}n(e,"{") r,t  Ĩ(t)
 (r)==Ą
n(e,l(r,o))n(e,"=") (r)==§

n(e,'["'..â.(r)..'"]')n(e,"=")
 (t)==Ą
n(e,l(t,o)) (t)==§
n(e,(t)) (t)==Ā
n(e,Ä..t..Ä)
n(e,â.(t))
n(e,",")
n(e,"}") i(e)
 e={["empty"]=(e) next(e)==
,["size"]=(n) e=0
 n,n  Ĩ(n)
e=e+1

 e
,["keys"]=(n) e={} n,t  Ĩ(n {})
.(e,n)
 e
,["values"]=(n) e={} t,n  Ĩ(n {})
.(e,n)
 e
,["invert"]=(n) e={} t,n  Ĩ(n {})
e[n]=t

 e
,["clone"]=(n,t) e={}  t 
Ü(e,getmetatable(n))
 t,n  Ĩ(n)
e[t]=n

 e
,["merge"]=(...) e={} t,n  Ŗ({...})
 n,t  Ĩ(n)
e[n]=t


 e
,["address"]=(n) e
 rawget(â,"_tostring")
e=_tostring(n)
e=c(n)
 .ą(e,"^table: ",ā)ā,["tostring"]=c,["tostringex"]=l,["print"]=(e) (e)~=Ą
â.Ŧ(e)
â.Ŧ(.(e))
,}g(,e)). ['sllib.list_ext']=((...)Â=Â {}  r(e,n) n,t  Ĩ(n)
e[n]=e[n] t


 e={["append"]=(e,n).(e,n) e
,["concat"]=(...) e={} t,n  Ŗ({...})
 t,n  Ŗ(n)
.(e,n)

 e
,["remove"]=(e,t) n,o  Ŗ(e)
 o==t 
.ö(e,n)


 e
,["sub"]=(n,o,e)e=e #n
 t={} e=o,e 
.(t,n[e])
 t
,["cut"]=(n,e) n=Â.°(1,e) e=Â.°(e+1) n,e
,["exist"]=(n,e) t,n  Ŗ(n)
 n==e 
 


 
,["reverse"]=(e) n={} t=#e,1,-1 
.(n,e[t])
 n
,["mirror"]=(n) e={} t,n  Ŗ(n)
e[n]=n

 e
,["merge"]=(...) e=Â.ŋ(...)e=.÷(e) .keys(e),["project"]=(e,t) n={} o,e  Ŗ(e)
n[e[t]]=e

 n
,}r(Â,e)). ['sllib.time']=((...)š=š {}  t(n,e) e,t  Ĩ(e)
n[e]=n[e] t


 e={["time"]=() .š(),["clock"]=() .Ŋ(),["millitime"]=()"socket.core" ē.Đ(socket.gettime()*1e3),["sleep"]=(e)e=e  0
.Ē(č..Î(e+1)..É),["getstr"]=(n,e)n=n '%c'e=e  .š() .Ķ(n,e),["getendofday"]=(e)e=e  .š() e=.Ķ('*t',e) e=.Ķ('*t',.š({ķ=e["year"],į=e["month"],day=e["day"],ō=23,min=59,sec=59})) e=.š(e) e
,["tohour"]=(e) n=ē.Đ(e/3600) t=ē.Đ(ē.ī(e,3600)/60) e=ē.ī(e,60){ō=n,min=t,sec=e},}t(š,e))rawset(â,"SLLIB_VERSION","1.1.2")"sllib.global""sllib.io_ext""sllib.os_ext""sllib.table_ext""sllib.string_ext""sllib.list_ext""sllib.debug_ext""sllib.time""sllib.logs""sllib.class"enum=.÷
log=log  ĸ.i
logw=logw  ĸ.w
loge=loge  ĸ.e
Ō=Ō  ĸ.Ō
ë=ë  ĸ.clear
ß=ß  .ß
Á=Á  load
 Ø(e) (e)==Ā
Ä..e..Ä (e)==Ą
 .(e) (e)==§
 (e)
 e=(e)Ë e


]===], '@sllib_base.lua'))()