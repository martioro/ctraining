# ctraining
Some simple projects in C.

cd /Users/martinrodahl/Cprog/ctraining //Getting to the correct folder on the suckingMac.


Useful commands:

git add * //Adding all files in local folder.

git commit -m "A new program" //Adding a comment to the newly added files.

git push //Pushing the new files onto the remote repository on github.


gcc -S -o assembly.s oppgave1_4.c //Output assembly-code from origianl C-file.

gcc oppgave1_4.c -o oppgave1_4 //Compile and creates a executable unix-programfile.

otool -tv "OUTPUT EXCUTABLE FILE FROM GCC" >"OUTPUT FROM otool TO OPTIONAL TEXTFILE" //Outputs machinecode with memory adress.