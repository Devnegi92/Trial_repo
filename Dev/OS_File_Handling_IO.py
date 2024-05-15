#!/usr/bin/env python
# coding: utf-8

# In[12]:


# import os,shutil

## ----# Single folder using command
# os.mkdir(r"E:\Garbage\New folder\Day")

## ----# Multiple Folder using loop
# for i in range(1,6):
#     os.mkdir(f"E:/Garbage/New folder/Day/tutorail_{i}")
    
## ----# Rename Multiple Folder    
# for i in range(1,6):
#     os.rename(f"E:/Garbage/New folder/Day/tutorial_{i}",f"E:/Garbage/New folder/Day/Tutorial_{i}")

## ----#list directory in the folder
# folders=os.listdir(r"E:\Garbage\New folder\Day")
# print(folders)

## ----#list directory folder inside folder using loop
# folders=os.listdir(r"E:\Garbage\New folder\Day")
# for folder in folders:
#     print(folder)
#     print(os.listdir(f"E:/Garbage/New folder/Day/{folder}"))

## ----#Check directory 
# print(os.getcwd())

## ----#change directory 
# print(os.getcwd())
# os.chdir(r"E:\Garbage\New folder")
# print(os.getcwd())

##----#remove Empty directory (if folder has nothing)
# os.rmdir(r"E:\Garbage\New folder\Check_Folder")

# ----#deletes the directory with its content (1st import shutil using "import shutil")
# shutil.rmtree(r"E:\Garbage\New folder\Day")

##----#remove file from directory 
# os.remove(r"E:\Garbage\New folder\Day\tutorail_1\New Text Document.txt")



#######-------------------File handling
# File Handling

# Different mode of operation in the file handling

# x = used to create file
# r = used to read file
# w = used to write file
# a = used to append value in the file

# open() = used to open the file
# close() = used to close the open file
# exist() = check if file exist
# remove() = remove the file from location

#1st Method
# file = open("C:\\Users\\shash\\Desktop\\Batch12\\Batch12_new.txt","x")
# file.close()

#2nd Method
# file = open("C:/Users/shash/Desktop/Batch12/Batch12_new1.txt","x")
# file.close()

# 3rd Method
# file = open(r"E:\Garbage\Batch12_new1.txt","x")

# file = open(r"E:\Garbage\Batch12_new.txt","w")
# file.write("We are learning file handling")
# file.close()

# file = open(r"E:\Garbage\Batch12_new.txt","r")
# print(file.read())
# file.close()

# file = open(r"E:\Garbage\Batch12_new.txt","a")
# file.write("This is second line")
# file.close()

## if we want to read any binary files we need to use rb instead of r else it gives error
# file = open(r"E:\Garbage\SQL (2).pdf","rb")
# print(file.read())
# file.close()



## WITH Statement
# you can use the with statement to automatically close the file after you done with it
# you can use any mode in with statememnt

# with open(r"E:\Garbage\Batch12_new3.txt","r") as f:
#     print(f.read())

# with open(r"E:\Garbage\Batch12_new3.txt","w") as f:
#     f.write("Hello Deepak this is your new file")


##### SEEK() function
# seek function allows you to move the current position within a file to a specific point. you can move either forward or backward 
# form the current position.

# with open(r"E:\Garbage\Batch12_new3.txt","r") as f:
#     #move the 10th byte in the file
#     f.seek(10)
#     #read the next 5 byte
#     data=f.read(5)
#     print(data)

#### TELL() function
# tell function return the current position within the file in the byte. this can be useful for keeping track of your location
# within the file

# with open(r"E:\Garbage\Batch12_new3.txt","r") as f:
#     #move the 10th byte in the file
#     f.seek(13)
#     #save the current position
#     current_position=f.tell()
#     print(f.tell())
#     #read the next 5 byte
#     data=f.read(5)
#     print(data)

####Tuncate() function

with open(r"E:\Garbage\Batch12_new4.txt","w") as f:
    f.write("Hello Deepak, How are you !!")
    f.truncate(12)

with open(r"E:\Garbage\Batch12_new4.txt","r") as f: 
    print(f.read())


# In[ ]:




