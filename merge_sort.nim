import algorithm

const MAX_DATA: int = 10

proc mergeSort(arr: var array[MAX_DATA, int],
               temp: var array[MAX_DATA, int], l: int, r: int) =
  
  if l >= r:
    return

  var
    mid: int = (l + r) div 2
    i: int
    j: int

  mergeSort(arr, temp, l, mid)
  mergeSort(arr, temp, mid + 1, r)

  for i in l..mid:
    temp[i] = arr[i]

  j = r
  for i in (mid + 1)..r:
    temp[i] = arr[j]
    dec(j)

  i = l
  j = r
  for k in l..r:
    if temp[i] <= temp[j]:
      arr[k] = temp[i]
      inc(i)
    else:
      arr[k] = temp[j]
      dec(j)

  return

proc main() =
  var
    arr: array[MAX_DATA, int] = [5,4,6,2,7,1,3,9,8,0]
    temp: array[MAX_DATA, int]
    l: int = 0
    r: int = MAX_DATA - 1

  temp.fill(0)

  mergeSort(arr, temp, l, r)
  echo arr

when isMainModule:
  main()
