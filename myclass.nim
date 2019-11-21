type
  Dog = ref object
    name: string
  Person = ref object
    name: string
    email: string

proc main() =
  var
    tom = new Person
    hachi = new Dog

  tom.name = "Tom"
  tom.email = "tom@tom.com"
  hachi.name = "Hachi"

  echo tom.name
  echo tom.email
  echo hachi.name

when isMainModule:
  main()
