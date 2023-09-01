import os
from zipfile import ZipFile

# Create a ZipFile Object
with ZipFile('E:/Zipped file.zip', 'w') as zip_object:
   # Adding files that need to be zipped
   zip_object.write('E:/Folder to be zipped/Greetings.txt')
   zip_object.write('E:/Folder to be zipped/Introduction.txt')

# Check to see if the zip file is created
if os.path.exists('E:/Zipped file.zip'):
   print("ZIP file created")
else:
   print("ZIP file not created")
