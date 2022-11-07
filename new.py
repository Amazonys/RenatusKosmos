# -*- coding: utf-8 -*-
"""
@author: slyhw
@editor: Amyzonis
"""

import numpy as np
import math
import json
import matplotlib.pyplot as plt

#Import file
RegionV = np.loadtxt("C:/Users/Amyzonis/Documents/My Games/TerraInvicta/AmyzTI/RegionV.txt", comments="#", delimiter=" ", unpack=False)#vertex from obj file
RegionF = np.loadtxt("C:/Users/Amyzonis/Documents/My Games/TerraInvicta/AmyzTI/RegionF.txt", dtype="int", comments="#", delimiter=" ", unpack=False)#index from obj file
RegionI = RegionF.flatten()


#Fill meshes
def RSPFill0(Lon, Lat):
    R=20.005
    RSPY = math.sin(math.radians(Lat))*R
    r = math.cos(math.radians(Lat))*R
    RSPX = -math.sin(math.radians(Lon))*r
    RSPZ = math.cos(math.radians(Lon))*r
    string = '\n{"0 Vector3f data": \n{\n"0 float x": RSPX, \n"0 float y": RSPY, \n"0 float z": RSPZ\n}},'
    string1 = string.replace("RSPX", str(RSPX))
    string2 = string1.replace("RSPY", str(RSPY))
    string3 = string2.replace("RSPZ", str(RSPZ))
    return string3
	
def RSPFill1(Lon, Lat, Idx):
    string=""
    for x in Idx:
        string+=RSPFill0(Lon[int(x-1)], Lat[int(x-1)])
    return string

def RSPFill2(Lon, Lat, Idx):
    string = RSPFill1(Lon, Lat, Idx)
    string1 = '"0 Vector3Array regionSurfacePoints":  {\n"0 Array Array": [\n{"0 Vector3Array data":  {\n"0 vector data":  {\n"1 Array Array": ['
    string2 = ']\n}\n}}\n]\n},'
    string3 = string1+'\n'+string+'\n'+string2
    return string3

RSPTbt = RSPFill2(RegionV[0: , 0], RegionV[0: , 1], RegionI)



OutlineOutput = open("C:/Users/Amyzonis/Documents/My Games/TerraInvicta/AmyzTI/output.txt", "w")
OutlineOutput.write(RSPTbt)
OutlineOutput.close()