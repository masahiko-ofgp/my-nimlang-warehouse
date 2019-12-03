proc hello(): string =
  result = "Hello, world!!"

proc hello2(name: string): string =
  result = "Hello, " & name & "!!"

proc main() =
  echo hello()
  echo hello2("Tom")

when isMainModule:
  main()
