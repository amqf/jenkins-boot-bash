
load_modules()
{
    MODULES=$1

    if [ ${#MODULES} == 0 ];
    then
        printf "Não existem módulos a serem carregados" $MOD
        exit 1
    fi

    for n in ${MODULES[@]}; do
        echo 'Module loaded: '$n
        MOD=$MODULE_DIR/${n}.sh
        
        if [ ! -f $MOD ];
        then
            printf "O módulo %s não existe" $MOD
            exit 1
        fi

        source $MOD
    done
}