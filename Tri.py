import numpy as np
import math 
import matplotlib.pyplot as plt
import json
from mpl_toolkits import mplot3d

#ax = plt.axes(projection='3d')



def set_axes_equal(ax):

    x_limits = ax.get_xlim3d()
    y_limits = ax.get_ylim3d()
    z_limits = ax.get_zlim3d()

    x_range = abs(x_limits[1] - x_limits[0])
    x_middle = np.mean(x_limits)
    y_range = abs(y_limits[1] - y_limits[0])
    y_middle = np.mean(y_limits)
    z_range = abs(z_limits[1] - z_limits[0])
    z_middle = np.mean(z_limits)

    plot_radius = 0.5*max([x_range, y_range, z_range])

    ax.set_xlim3d([x_middle - plot_radius, x_middle + plot_radius])
    ax.set_ylim3d([y_middle - plot_radius, y_middle + plot_radius])
    ax.set_zlim3d([z_middle - plot_radius, z_middle + plot_radius])

# Data for a three-dimensional line
# zline = np.linspace(0, 15, 1000)
# xline = np.sin(zline)
# yline = np.cos(zline)
# ax.plot3D(xline, yline, zline, 'gray')


SiteJson = open('TIHabSiteTemplate.json')
Site=json.load(SiteJson)

def SiteNameBody (Site,body):
    SiteName = []
    for i in range(len(Site)):
        HabDict=Site[i]
        if HabDict["parentBodyName"]==body:
            SiteName.append(HabDict["friendlyName"])
    return SiteName

def SiteDataNameBody (Site,body):
    SiteDataName = []
    for i in range(len(Site)):
        HabDict=Site[i]
        if HabDict["parentBodyName"]==body:
            SiteDataName.append(HabDict["friendlyName"].replace(" ",""))
    return SiteDataName

def SiteLonBody (Site,body):
    SiteLon = []
    for i in range(len(Site)):
        HabDict=Site[i]
        if HabDict["parentBodyName"]==body:
            SiteLon.append(HabDict["longitude"])
    return SiteLon

def SiteLatBody (Site,body):
    SiteLat = []
    for i in range(len(Site)):
        HabDict=Site[i]
        if HabDict["parentBodyName"]==body:
            SiteLat.append(HabDict["latitude"])
    return SiteLat

def RadL (LonO,LatO):
    Lon=LonO%360
    if LonO<0:
        Lon*=-1
    #print(Lon)
    Lat=LatO%360
    if LatO<0:
        Lat*=-1
    #print(Lat)
    
    if Lon > 180:
        Lon = Lon-360
    if Lon < -180:
        Lon = Lon+360
    if Lat > 180:
        Lat = 180-Lat
    if Lat < -180:
        Lat = 180+Lat
    if Lat == 90:
        Lat+=1
    if Lat == -90:
        Lat-=1        
    if Lat > 90 and Lat < 180:
        Lat = 180-Lat  
    if Lat < -90 and Lat > -180:
        Lat = -180-Lat
    
    return [math.radians(Lon),-math.radians(Lat)]

def RadPos (LonO,LatO):
    Lon=LonO
    Lat=LatO
    if LonO<0:
        Lon=LonO+360
    if LatO<0:
        Lat=LatO+360
    return [math.radians(Lon),-math.radians(Lat)]

def TYRSPX (RSPX, RSPZ, turnRad):
    RSPXn=RSPX*np.cos(turnRad)-RSPZ*np.sin(turnRad)
    return RSPXn

def TYRSPZ (RSPX, RSPZ, turnRad):
    RSPZn=RSPX*np.sin(turnRad)+RSPZ*np.cos(turnRad)
    return RSPZn

def TXRSPZ (RSPY, RSPZ, turnRad):
    RSPZn=RSPZ*np.cos(turnRad)+RSPY*np.sin(turnRad)
    return RSPZn

def TXRSPY (RSPY, RSPZ, turnRad):
    RSPYn=-RSPZ*np.sin(turnRad)+RSPY*np.cos(turnRad)
    return RSPYn

def TurnRSP (RSP,radLon,radLat):
    zn1=TXRSPZ(RSP[1],RSP[2],-radLat)
    yn1=TXRSPY(RSP[1],RSP[2],-radLat)
    xn1=TYRSPX(RSP[0],zn1,radLon)
    zn2=TYRSPZ(RSP[0],zn1,radLon)

    return [xn1,yn1,zn2]    

def RSPFillT (Lon,Lat,inv):
    
    R=0.500125
    radL=RadPos(Lon,Lat)
    radLon=radL[0]
    radLat=radL[1]
       
    x1=0*1.5
    x2=0.006*1.5
    x3=0.021*1.5
    x4=0.03*1.5
    x5=0.036*1.5
    y1= 0.04286156123*1.3
    y2= 0.01212435565*1.3
    y3=-0.02035382907*1.3
    y4=-0.03074613391*1.3

    v0=[x2,-y1]
    v1=[x3,-y2]
    v2=[x5,-y3]
    v3=[x4,-y4]
    v4=[x1,-y4]
    v5=[-x4,-y4]
    v6=[-x5,-y3]
    v7=[-x3,-y2]
    v8=[-x2,-y1]
    vtx=np.vstack([v0,v1,v2,v3,v4,v5,v6,v7,v8])
    #plt.plot(vtx[0: ,0],vtx[0: ,1])
    R=0.500125
    
    if inv:
        idx=[0,1,8,8,1,7,1,2,4,2,3,4,7,5,6,7,4,5,7,1,4]
    else:
        idx=[0,8,1,8,7,1,1,4,2,2,4,3,7,6,5,7,5,4,7,4,1]
    
    
    RSPX = np.empty([len(idx),1])
    RSPY = np.empty([len(idx),1])
    RSPZ = np.empty([len(idx),1])
    for i in range(len(idx)):
        RSPY[i] = math.sin(vtx[idx[i],1])*R
        r=math.sqrt(R**2-RSPY[i]**2)
        RSPX[i] = math.sin(vtx[idx[i],0])*r
        RSPZ[i] = math.cos(vtx[idx[i],0])*r

    RSP=np.hstack([RSPX,RSPY,RSPZ])
    RSPn = np.empty([len(idx),3])
    for i in range(len(idx)):
        RSPn[i]=TurnRSP(RSP[i,0: ], radLon, radLat)
        if Lat > 80:
            RSPn[i,1]*=1.003
        
    #ax.plot3D(RSPn[0:,0],RSPn[0:,1],RSPn[0:,2],"red")
    #set_axes_equal(ax)
    
    return RSPn

    #return vtx

# u, v = np.mgrid[0:2*np.pi:20j, 0:np.pi:10j]
# x = np.cos(u)*np.sin(v)*19
# y = np.sin(u)*np.sin(v)*19
# z = np.cos(v)*19
# ax.plot_wireframe(x, y, z, color='grey')

# set_axes_equal(ax)

def LBFill0 (x,y):
    string='"0 Vector2f anchor": \n{\n"0 float x": LBX, \n"0 float y": LBY\n},\n"0 Vector2f bezier1":\n{\n"0 float x":0,\n"0 float y":0\n},\n"0 Vector2f bezier2":\n{\n"0 float x":0,\n"0 float y":0\n}'
    string1=string.replace("LBX",str(x))
    string2=string1.replace("LBY",str(y))
    return string2

def LBFill1 (X,Y):
    string='"0 LabelPosition labelPositions":  {\n"0 Array Array": [\n{"0 LabelPosition data": \n{\n"1 string labelName": "Council",\n"0 CurvedPolyPoint labelPosition": \n{\n"1 UInt8 bezier": 0,\n'
    string1=LBFill0(X[0], Y[0])
    string2='\n}\n}},\n{"0 LabelPosition data": \n{\n"1 string labelName": "Gov",\n"0 CurvedPolyPoint labelPosition": \n{\n"1 UInt8 bezier": 0,\n'
    string3=LBFill0(X[1], Y[1])
    string4='\n}\n}},\n{"0 LabelPosition data": \n{\n"1 string labelName": "Army",\n"0 CurvedPolyPoint labelPosition": \n{\n"1 UInt8 bezier": 0,\n'
    string5=LBFill0(X[2], Y[2])
    string6='\n}\n}},\n{"0 LabelPosition data": \n{\n"1 string labelName": "Facility",\n"0 CurvedPolyPoint labelPosition": \n{\n"1 UInt8 bezier": 0,\n'
    string7=LBFill0(X[3], Y[3])
    string8='\n}\n}},\n{"0 LabelPosition data": \n{\n"1 string labelName": "Alien",\n"0 CurvedPolyPoint labelPosition": \n{\n"1 UInt8 bezier": 0,\n'
    string9=LBFill0(X[4], Y[4])
    string10='\n}\n}},\n{"0 LabelPosition data": \n{\n"1 string labelName": "Sea",\n"0 CurvedPolyPoint labelPosition": \n{\n"1 UInt8 bezier": 0,\n'
    string11=LBFill0(X[5], Y[5])
    string12='\n}\n}}\n]\n}\n}},'
    string13=string+string1+string2+string3+string4+string5+string6+string7+string8+string9+string10+string11+string12
    return string13



def LBFill2 (Lon,Lat):

    rad=np.vstack([RadL(Lon+2,Lat-2),RadL(Lon-2,Lat+2),RadL(Lon-2,Lat-2),RadL(Lon,Lat),RadL(Lon+2,Lat+2),RadL(Lon,Lat+4)])
    string=LBFill1(rad[0: ,0],rad[0: ,1])
    return string

def RSPFill0 (RSPX,RSPY,RSPZ):
    string='\n{"0 Vector3f data": \n{\n"0 float x": RSPX, \n"0 float y": RSPY, \n"0 float z": RSPZ\n}},'
    string1=string.replace("RSPX",str(RSPX*1.005))
    string2=string1.replace("RSPY",str(RSPY*1.005))
    string3=string2.replace("RSPZ",str(RSPZ*1.005))
    return string3

def RSPFill1 (Lon,Lat,inv):
    RSPn=RSPFillT(Lon,Lat,inv)
    string=""
    for x in range(len(RSPn[0: ,0])):
        string+=RSPFill0(RSPn[x,0],-RSPn[x,1],RSPn[x,2])#Inv
    return string

def RSPFill2 (Lon,Lat,inv):
    string=RSPFill1(Lon,Lat,inv)
    string1='"0 Vector3List regionSurfacePoints":  {\n"0 Array Array": [\n{"0 Vector3List data":  {\n"0 vector data":  {\n"1 Array Array": ['
    string2=']\n}\n}}\n]\n},'
    string3=string1+'\n'+string+'\n'+string2
    return string3

def NameFill (region,nation):
    string1='{"0 TIRegionOutline data":\n{\n"1 string name": "'
    string2=' - '
    string3='",\n"1 string regionName": "'
    string4='",\n"1 string nationTag": "'
    string5='",'
    string6=string1+nation+string2+region+string3+region+string4+nation+string5
    return string6

path = "EPT1.json"

t = open(path, "r")
EPT1=t.read()

def MapFill1 (region,nation,Lon,Lat,inv,EPT1):
    string=NameFill(region,nation)+'\n'+'\n'+EPT1+'\n'+'\n'+RSPFill2(Lon,Lat,inv)+'\n'+'\n'+LBFill2(Lon,Lat)+'\n'+'\n'
    return string

def BodyFill (Site,body,dataName,EPT1):
    nation = dataName
    inv = False
    region = SiteDataNameBody(Site,body)
    Lon = SiteLonBody(Site, body)
    Lat = SiteLatBody(Site, body)
    string=""
    for i in range(len(region)):
        string+=MapFill1(region[i], nation, Lon[i], Lat[i], inv, EPT1)
    return string

def MRGFill (Site,body):
    Lon = SiteLonBody(Site, body)
    Lat = SiteLatBody(Site, body)
    name = SiteDataNameBody(Site,body)
    string0=""
    for i in range(len(name)):
        string ='{\n"dataName": "map_NAME",\n"terrain": "Standard",\n"supraRegion": "",\n"latitude": MRGX,\n"longitude": MRGY,\n"boostLatitude": 0,\n"smallRegion": true,\n"solarBody": "BODY"\n},\n'
        string1=string.replace("NAME",name[i])
        string2=string1.replace("MRGX",str(Lat[i]))
        string3=string2.replace("MRGY",str(Lon[i]))
        string4=string3.replace("BODY",body)
        string0+=string4
    return string0

RegionTemplate = open("RegionT.txt", "r")
RegionT = RegionTemplate.read()
def RGFill0 (name):
    string=RegionT.replace("NAME", name)
    return string

def RGFill (Site,body):
    Name = SiteDataNameBody(Site,body)
    string=""
    for x in Name:
        string+=RGFill0(x)+"\n"
    return string

def BIFill0 (name,body):
    string='\n{\n"dataName": "ClaimBODYNAME",\n"relationType": "Claim",\n"nation1": "BODY",\n"nation2": "",\n"federation": "",\n"region1": "NAME",\n"region2": "",\n"projectUnlockName": "",\n"capitalClaim": null,\n"initialOwner": true,\n"initialColony": null,\n"friendlyOnly": null\n}, '
    string1=string.replace("NAME", name)
    string2=string1.replace("BODY", body)
    return string2

def BIFill (Site,body,dataName):
    Name = SiteDataNameBody(Site,body)
    
    string=""
    for x in Name:
        string+=BIFill0(x,dataName)
    return string



Luna=BodyFill(Site, "Luna", "LNA", EPT1)    
Mars=BodyFill(Site, "Mars", "MRS", EPT1)   
Titan=BodyFill(Site, "Titan", "TIT", EPT1)
Mercury=BodyFill(Site, "Mercury", "MCY", EPT1)
Ceres=BodyFill(Site, "Ceres", "CRS", EPT1)
Io=BodyFill(Site, "Io", "IOM", EPT1)    
Europa=BodyFill(Site, "Europa", "ERP", EPT1)   
Ganymede=BodyFill(Site, "Ganymede", "GMD", EPT1)
Callisto=BodyFill(Site, "Callisto", "CLT", EPT1)
Triton=BodyFill(Site, "Triton", "TRT", EPT1)
Pluto=BodyFill(Site, "Pluto", "PLT", EPT1)
Titania=BodyFill(Site, "Titania", "TTN", EPT1)
Oberon=BodyFill(Site, "Oberon", "OBR", EPT1)
SIMaps=Mercury+Luna+Mars+Ceres+Io+Europa+Ganymede+Callisto+Titan+Titania+Oberon+Triton+Pluto
SIMap = open("SIMaps.txt", "w")
SIMap.write(SIMaps)
SIMap.close()

MRGLuna=MRGFill(Site, "Luna")    
MRGMars=MRGFill(Site, "Mars")   
MRGTitan=MRGFill(Site, "Titan")
MRGMercury=MRGFill(Site, "Mercury")
MRGCeres=MRGFill(Site, "Ceres")
MRGIo=MRGFill(Site, "Io")    
MRGEuropa=MRGFill(Site, "Europa")   
MRGGanymede=MRGFill(Site, "Ganymede")
MRGCallisto=MRGFill(Site, "Callisto")
MRGTriton=MRGFill(Site, "Triton")
MRGPluto=MRGFill(Site, "Pluto")
MRGTitania=MRGFill(Site, "Titania")
MRGOberon=MRGFill(Site, "Oberon")
MRG=MRGMercury+MRGLuna+MRGMars+MRGCeres+MRGIo+MRGEuropa+MRGGanymede+MRGCallisto+MRGTitan+MRGTitania+MRGOberon+MRGTriton+MRGPluto

RGLuna=RGFill(Site, "Luna")    
RGMars=RGFill(Site, "Mars")   
RGTitan=RGFill(Site, "Titan")
RGMercury=RGFill(Site, "Mercury")
RGCeres=RGFill(Site, "Ceres")
RGIo=RGFill(Site, "Io")    
RGEuropa=RGFill(Site, "Europa")   
RGGanymede=RGFill(Site, "Ganymede")
RGCallisto=RGFill(Site, "Callisto")
RGTriton=RGFill(Site, "Triton")
RGPluto=RGFill(Site, "Pluto")
RGTitania=RGFill(Site, "Titania")
RGOberon=RGFill(Site, "Oberon")
RG=RGMercury+RGLuna+RGMars+RGCeres+RGIo+RGEuropa+RGGanymede+RGCallisto+RGTitan+RGTitania+RGOberon+RGTriton+RGPluto

BILuna=BIFill(Site, "Luna","LNA")    
BIMars=BIFill(Site, "Mars","MRS")   
BITitan=BIFill(Site, "Titan","TIT")
BIMercury=BIFill(Site, "Mercury","MCY")
BICeres=BIFill(Site, "Ceres","CRS")
BIIo=BIFill(Site, "Io","IOM")    
BIEuropa=BIFill(Site, "Europa","ERP")   
BIGanymede=BIFill(Site, "Ganymede","GMD")
BICallisto=BIFill(Site, "Callisto","CLT")
BITriton=BIFill(Site, "Triton","TRT")
BIPluto=BIFill(Site, "Pluto","PLT")
BITitania=BIFill(Site, "Titania","TTN")
BIOberon=BIFill(Site, "Oberon","OBR")
BI=BIMercury+BILuna+BIMars+BICeres+BIIo+BIEuropa+BIGanymede+BICallisto+BITitan+BITitania+BIOberon+BITriton+BIPluto

def RNFill(Site,body):
    name = SiteDataNameBody(Site,body)
    string=""
    for i in range(len(name)):
        string+='"'+name[i]+'",'+"\n"
    return string 
   
RNLuna=RNFill(Site, "Luna")    
RNMars=RNFill(Site, "Mars")   
RNTitan=RNFill(Site, "Titan")
RNMercury=RNFill(Site, "Mercury")
RNCeres=RNFill(Site, "Ceres")
RNIo=RNFill(Site, "Io")    
RNEuropa=RNFill(Site, "Europa")   
RNGanymede=RNFill(Site, "Ganymede")
RNCallisto=RNFill(Site, "Callisto")
RNTriton=RNFill(Site, "Triton")
RNPluto=RNFill(Site, "Pluto")
RNTitania=RNFill(Site, "Titania")
RNOberon=RNFill(Site, "Oberon")
RN=RNMercury+RNLuna+RNMars+RNCeres+RNIo+RNEuropa+RNGanymede+RNCallisto+RNTitan+RNTitania+RNOberon+RNTriton+RNPluto
# test1=MapFill1('Singapore', 'SGP', 116.5, -76.4, True, EPT1)
# test2=MapFill1('Somalia', 'SOM', -115.5, -80.3, True, EPT1)
# test3=test1+'\n'+'\n'+test2
# plt.plot(test2[0: ,0],test2[0: ,1])