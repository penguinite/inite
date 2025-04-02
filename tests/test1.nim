proc parseString*(input: string): seq[(string, string)] =
  var key = ""
  var val = ""
  var flag = false
  
  for ch in input:
    if flag == false:
      if ch == '=':
        flag = true
      else:
        key.add(ch)
    else:
      if ch == '\n':
        flag = false
        result.add((key, val))
        key = ""
        val = ""
      else:
        val.add(ch)
  result.add((key, val))
  return result

proc getValue*(cnf: seq[(string, string)], key: string): string =
  for i in cnf:
    if i[0] == key:
      return i[1]

assert parseString("a=b").getValue("a") == "b"
assert parseString("a=b\nc=d").getValue("a") == "b"
assert parseString("a=b\nc=d").getValue("c") == "d"