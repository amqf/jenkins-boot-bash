
JenkinsServer()
{
    USER=$(JenkinsUser $1)
    TOKEN=$(JenkinsToken $1)
    printf "http://%s:%s@localhost:8080" $USER $TOKEN
    exit 0
}

JenkinsUser()
{
    USER=$1
    printf "%s" $USER
    exit 0
}

JenkinsToken()
{
    URL=$1
    printf "%s" $URL
    exit 0
}

JenkinsJob()
{
    JOB_NAME=$1
    SERVER=$2
    printf "%s" $(curl -s "${SERVER}/job/${JOB_NAME}/config.xml")
    exit 0
}

JenkinsCopyJob()
{
    TEMPLATE_JOB=$1
    JOB_NAME=$1
}