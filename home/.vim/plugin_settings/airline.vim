let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_section_y = '%{&fenc}%{strlen(&fenc) ? "," : ""}%{&ff}'

let g:airline_mode_map = {
	\'__' : '-',
	\'n'  : 'N',
	\'i'  : 'I',
	\'R'  : 'R',
	\'c'  : 'C',
	\'v'  : 'V',
	\'V'  : 'V',
	\'^V' : 'V',
	\'s'  : 'S',
	\'S'  : 'S',
	\'^S' : 'S'
\}

let g:airline#extensions#default#section_truncate_width = {
	\'b': 70,
	\'y': 70
\}
