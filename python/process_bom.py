print("Hello, World!")

import os, sys, codecs

# Open a file
pathone = "C:/neal/aaii/dbf/pipe/"
pathtwo = "C:/neal/aaii/processed/"
dirs = os.listdir( pathone )

# This would print all the files and directories
for file in dirs:
  print(pathone+file)
  f = open(pathone+file,'r')
  filedata = f.read()
  f.close()

  newdata = filedata[3:]

  f = open(pathtwo+file,'w')
  f.write(newdata)
  f.close()

