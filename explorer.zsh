xplr () {
	while true
	do
		dirs="$(fd | grep -v \~)"
		sel=$(echo -e $dirs\\n.. | sk --tiebreak=length,score,index -c "echo -e 'delete\nmove\n' | grep '{}'" \
			-p "xplr: " --cmd-prompt="action: ")
		[[ -d $sel ]] && cd $sel && continue
		[[ -e $sel ]] && xdg-open $sel 2> /dev/null

		[[ $sel == "" ]] && return
		[[ $sel == "delete" ]] && rm -rf $(fd | grep -v \~ | sk --tiebreak=length,score,index -m -p "delete: ")

		[[ $sel == "move" ]] && mv $(fd | grep -v \~ | sk --tiebreak=length,score,index -m -p "select file: ") \
			$(fd | grep -v \~ | sk --tiebreak=length,score,index -c "fd | grep -v \~ | grep '{}' || echo {}" -i --cmd-prompt="select destination: ")
	done
}
