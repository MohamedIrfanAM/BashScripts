function sort
{

# Codeforces
mv /run/media/irfan/Programming/cp/Codeforc* /run/media/irfan/Programming/cp/codeforces 
mmv -r /run/media/irfan/Programming/cp/codeforces/CodeforcesCodeforces\* \#1
mmv -r /run/media/irfan/Programming/cp/codeforces/'CodeforcesEducationalCodeforcesRound*Ratedfor*' 'EducationalRound#1#2'
cd /run/media/irfan/Programming/cp/codeforces/ && perl-rename 's/Round(\d+)Div\.(\d+)/Round_$1_Div\.$2/' */* && rmdir /run/media/irfan/Programming/cp/codeforces/*ound[0-9]**[0-9]Di*
perl-rename 's/Round(\d+)/Round_$1/' */* && rmdir *ound[0-9]*
cd -
# mmv -r /run/media/irfan/Programming/cp/codeforces/'*ound[0-9]**[0-9]Div*' '#1ound_#2#3#4#5_Div#6' 

# CSES
csespath=$(cd /run/media/irfan/Programming/cp/CSES-CSESProblemSet/ ; find *cpp  | sed -e 's/.cpp//')
names=($(echo "$csespath"))
for name in $names
do
  echo $name
  mkdir /run/media/irfan/Programming/cp/cses/$name; mv /run/media/irfan/Programming/cp/CSES-CSESProblemSet/$name* /run/media/irfan/Programming/cp/cses/$name/
done
rm -fr /run/media/irfan/Programming/cp/CSES-CSESProblemSet

# Removing all executables
rm -fr /run/media/irfan/Programming/cp/*.exe
clear

}
