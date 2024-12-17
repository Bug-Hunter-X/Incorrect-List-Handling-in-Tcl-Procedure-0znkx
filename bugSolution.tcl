proc check_empty_list {list} {
  if {[llength $list] == 0} {
    return 1
  } else {
    return 0
  }
}

# Correct usage: passing a list
set myList {a b c}
puts [check_empty_list $myList]

set emptyList {}
puts [check_empty_list $emptyList]

# Handling potential string input
proc check_empty_or_string {input} {
  if {[string length $input] == 0} {
    return 1  ;#empty string
  } elseif {[regexp {\[\{].*[\]\}]} $input] { 
    return [check_empty_list [list [split $input]]] ;#it is a list in string format
  } elseif {[llength $input] == 0} {
    return 1  ;#empty list
  } else {
    return 0 ;# not empty
  }
}
puts [check_empty_or_string {a b c}]
puts [check_empty_or_string {}]
puts [check_empty_or_string "hello"]
puts [check_empty_or_string "{a b c}"]