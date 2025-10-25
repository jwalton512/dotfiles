if [[ (( $+commands[pnpm] )) ]]
then
	export PNPM_HOME=${XDG_DATA_HOME}/pnpm
	path+=${PNPM_HOME}
fi
