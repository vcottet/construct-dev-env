unalias g

alias mvneclipse="mvn eclipse:clean eclipse:eclipse -Declipse.useProjectReferences=false"
alias mci="mvn clean install -Dmaven.test.skip=true"

alias depcv="rsync -avz --delete-after ~/Dev/Projets/ng2-resume/dist/ng2-resume/ vincent@192.168.0.100:~/sites/ng2-resume/"
