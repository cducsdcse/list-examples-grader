# Create your grading script here

#set -e

rm -rf student-submission
git clone $1 student-submission

FILE1=ListExamples.java
CPATH=".:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar"

cp TestListExamples.java student-submissions/
cd student-submission

if [ -f "$FILE1" ]
then 
    echo "$FILE1 exists."
else 
    echo "$FILE1 not found."
    exit 1
fi

javac -cp $CPATH *.java

if [[ $? -eq 0 ]]
then 
    echo "Compile Succeeded."
else
    echo "Compile Failed."
    exit 1
fi

java -cp $CPATH org.junit.runner.JUnitCore TestListExamples 2> out-err.txt
cat out-err.txt

