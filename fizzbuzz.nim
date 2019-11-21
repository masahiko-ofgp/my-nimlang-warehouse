proc fizzbuzz(n: int) =
  for i in 0..n:
    if i mod 15 == 0:
      echo "Fizzbuzz"
    elif i mod 5 == 0:
      echo "Buzz"
    elif i mod 3 == 0:
      echo "Fizz"
    else:
      echo i

proc main() =
  let num = 31  
  fizzbuzz(num)

when isMainModule:
  main()
