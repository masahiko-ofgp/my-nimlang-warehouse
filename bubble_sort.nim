const MAX_DATA: int = 10

proc bubbleSort(arr: var array[MAX_DATA, int]) =
  var
    temp: int

  for i in 0..<arr.len():
    for j in (i + 1)..<arr.len():
      if arr[i] > arr[j]:
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
  return

proc main() =
  var
    arr: array[MAX_DATA, int] = [5,4,6,2,7,1,3,9,8,0]

  bubbleSort(arr)
  echo arr

when isMainModule:
  main()

