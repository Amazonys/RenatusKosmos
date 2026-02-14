# -*- coding: utf-8 -*-
"""
@author: slyhw4 & Amyzonis
"""

import numpy as np
import math
import json
import matplotlib.pyplot as plt

#Import file
RegionV = np.loadtxt("C:/Program Files (x86)/Steam/steamapps/common/Terra Invicta/Mods/Enabled/RenatusKosmos/Development/Python/RegionV.txt", comments="#", delimiter=" ", unpack=False)
RegionF = np.loadtxt("C:/Program Files (x86)/Steam/steamapps/common/Terra Invicta/Mods/Enabled/RenatusKosmos/Development/Python/RegionF.txt", dtype="int", comments="#", delimiter=" ", unpack=False)
RegionI = RegionF.flatten()


#Fill meshes
def RSPFill0(Lon, Lat):
    R=20.005
    RSPY = math.sin(math.radians(Lat))*R
    r = math.cos(math.radians(Lat))*R
    RSPX = -math.sin(math.radians(Lon))*r
    RSPZ = math.cos(math.radians(Lon))*r
    string = '\n{\n"x": RSPX, \n"y": RSPY, \n"z": RSPZ\n},'
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
    string1 = '"regionSurfacePoints":  {\n"Array": [\n{\n"data": {\n"Array": ['
    string2 = '\n]\n}\n}\n]\n},'
    string3 = string1+'\n'+string+'\n'+string2
    return string3

RSPTbt = RSPFill2(RegionV[0: , 0], RegionV[0: , 1], RegionI)


OutlineOutput = open("C:/Program Files (x86)/Steam/steamapps/common/Terra Invicta/Mods/Enabled/RenatusKosmos/Development/Python/output.txt", "w")
OutlineOutput.write(RSPTbt)
OutlineOutput.close()