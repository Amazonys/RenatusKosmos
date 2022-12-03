# -*- coding: utf-8 -*-
"""
@author: slyhw4 & Amyzonis
"""

import numpy as np
import math
import json
import matplotlib.pyplot as plt

#Import file
LabelData = np.loadtxt("C:/Users/Amyzonis/Documents/My Games/TerraInvicta/AmyzTI/LabelData.txt", comments="#", delimiter=" ", unpack=False)#lat/lon


def RadL (Lon,LatO):
    #Lon=LonO%360
    #if LonO<0:
    #    Lon*=-1
    #print(Lon)
    Lat=LatO%360
    if LatO<0:
        Lat*=-1
    #print(Lat)
    
    #if Lon > 180:
    #    Lon = Lon-360
    #if Lon < -180:
    #    Lon = Lon+360
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
    
    return [math.radians(Lon), -math.radians(Lat)]


#Fill labels
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


def LBFill2 (Lonn,Latn,LonGov,LatGov,LonArmy,LatArmy,LonFac,LatFac,LonAlien,LatAlien,LonSea,LatSea):

    rad=np.vstack([RadL(Lonn,Latn),RadL(LonGov,LatGov),RadL(LonArmy,LatArmy),RadL(LonFac,LatFac),RadL(LonAlien,LatAlien),RadL(LonSea,LatSea)])
    string=LBFill1(rad[0: ,0],rad[0: ,1])
    return string
	
LBTbt = LBFill2(LabelData[0, 1], LabelData[0, 0], LabelData[1, 1], LabelData[1, 0], LabelData[2, 1], LabelData[2, 0], LabelData[3, 1], LabelData[3, 0], LabelData[4, 1], LabelData[4, 0], LabelData[5, 1], LabelData[5, 0])
	
OutlineOutput = open("C:/Users/Amyzonis/Documents/My Games/TerraInvicta/AmyzTI/labelout.txt", "w")
OutlineOutput.write(LBTbt)
OutlineOutput.close()
