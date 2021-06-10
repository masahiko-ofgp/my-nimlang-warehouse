func greeting(name="world"): string =
  "Hello, "&name&"!"

proc main() =
  echo greeting()
  echo greeting("Tom")

when isMainModule:
  main()
