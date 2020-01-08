import os, terminal

proc dirs(path: string) =
  for kind, path in walkDir(path):
    case kind:
    of pcDir: styledWriteLine(stdout, fgCyan, path, resetStyle)
    else: styledWriteLine(stdout, fgWhite, path, resetStyle)

proc main() =
  dirs(".")

when isMainModule:
  main()
