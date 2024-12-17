proc check_empty_list {list} {
  if {[llength $list] == 0} {
    return 1
  } else {
    return 0
  }
}

# Incorrect usage: passing a string instead of a list
set myString "hello"
puts [check_empty_list $myString]