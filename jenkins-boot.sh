
ROOT_DIR=$(dirname $0)
MODULE_DIR=$ROOT_DIR'/modules'

source $ROOT_DIR'/core.sh'

# módulos utilizados
MODULES=("gitlab" "jenkins")

load_modules $MODULES

####################
# Global variables
####################

CONFIG_FILE='settings.ini'
GIT_TOKEN=$(awk -F = '/GIT_TOKEN/ {print $2}' $CONFIG_FILE)
JENKINS_USER=$(awk -F = '/JENKINS_USER/ {print $2}' $CONFIG_FILE)
JENKINS_TOKEN=$(awk -F = '/JENKINS_TOKEN/ {print $2}' $CONFIG_FILE)

# JENKINS_SRV=$(JenkinsServer $JENKINS_USER $JENKINS_TOKEN)

# echo 'Servidor jenkins: '$JENKINS_SRV
# echo 'Config job'$(JenkinsGetJobFromServer pipe1 $JENKINS_SRV)

JENKINS_SRV=$(JenkinsServer $JENKINS_USER $JENKINS_TOKEN)
# Retorna o arquivo XML do 
JenkinsJob 'pipe1' $JENKINS_SRV

# echo 'Servidor jenkins: '$JENKINS_SRV
# echo 'Config job'$(JenkinsGetJobFromServer pipe1 $JENKINS_SRV)
