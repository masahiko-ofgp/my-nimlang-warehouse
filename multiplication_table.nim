import strformat

proc main() =
  for y in countUp(1, 9):
    for x in countUp(1, 9):
      stdout.write(fmt"{x*y:3}")
    stdout.write("\n")

when isMainModule:
  main()
