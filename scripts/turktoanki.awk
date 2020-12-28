BEGIN {
	inside_def = 0
	front = ""
	back = ""
	found_separator = 0
	hit_separator = 0
}


inside_def == 1 && found_separator == 0 && /—/{
	found_separator = 1
	hit_separator = 1
	split($0, arr, "—")
	front = front arr[1]
	back = back arr[2]
}

inside_def == 1 && found_separator == 0 {
	front = front " " $0 " "
}

inside_def == 0 && /^[0-9].*[^0-9]$/ {
	inside_def = 1
	front = $2 " | "
	back = substr($0, index($0, $3)) " | "
}

inside_def == 1 && /[0-9].*[0-9]$/ {
	print front "\t" back
	print "\n"
	inside_def = 0
	front = ""
	back = ""
	found_separator = 0
}

inside_def == 1 && found_separator == 1 && hit_separator != 1 {
	back = back " " $0 " "
}

{
	hit_separator = 0
}
