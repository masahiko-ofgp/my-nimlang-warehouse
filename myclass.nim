type
  Animal = ref object of RootObj
    name: string

  Dog = ref object of Animal

  Person = ref object of Animal
    email: string

proc getName(a: Animal): string =
  result = a.name

proc getEmail(p: Person): string =
  result = p.email

proc main() =
  var
    tom = new Person
    hachi = new Dog

  tom.name = "Tom"
  tom.email = "tom@tom.com"
  hachi.name = "Hachi"

  echo tom.getName
  echo tom.getEmail
  echo hachi.getName


when isMainModule:
  main()
