# -*- coding: utf-8 -*-
"""
Created on Sat Mar 29 12:27:51 2025

@author: Laxmi
"""

num=int(input("enter the fibonacci sequence length to be generated:"))
firstterm=0
secondterm=1
print("the fibonacci series with ",num,"term is:")
print(firstterm,secondterm,end="")
for i in range(2,num):
    curterm=firstterm+secondterm
    print(curterm,end="")
    firstterm=secondterm
    secondterm=curterm
print()    