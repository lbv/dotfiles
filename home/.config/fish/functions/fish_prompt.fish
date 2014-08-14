function fish_prompt -d "Sets a simple prompt"
	set -l last_status $status

	set -l pwd (prompt_pwd)
	set -l pwd1 (dirname $pwd)
	set -l pwd2 (basename $pwd)


	# Show a compressed path, highlighting only the last component
	if test $pwd1 != '.' -a $pwd2 != '/'
		echo -n -s (set_color $fish_color_cwd)$pwd1
		if test $pwd1 != '/'
			echo -n '/'
		end
	end
	echo -n -s (set_color -o $fish_color_cwd)$pwd2


	# A classic white dollar sign; red in case the last command failed
	if test $last_status -eq 0
		set_color -o white
	else
		set_color -o red
	end
	echo -n -s " \$ " (set_color normal)
end
