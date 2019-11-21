proc hanoi(n: int, a,b,c: char) =
  if n > 0:
    hanoi(n - 1, a, c, b)
    echo $a & " => " & $c
    hanoi(n - 1, b, a, c)

proc main() =
  let
    n = 3
    a = 'A'
    b = 'B'
    c = 'C'

  hanoi(n, a, b, c)

when isMainModule:
  main()
