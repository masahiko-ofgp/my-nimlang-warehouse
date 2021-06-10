#[
  My code uses cyclic data structure, therefore I use `{.acyclic.}`
  and `--gc:orc`.
  $ nim c --gc:orc bintree.nim
]#
type
  Node = ref NodeObj
  NodeObj {.acyclic.} = object
    val: int
    left: ref NodeObj
    right: ref NodeObj

proc createNewNode(node: Node, val: int) =
  node.val = val
  node.left = nil
  node.right = nil

proc main() =
  var root: Node = new Node
  createNewNode(root, 0)

  var left: Node = new Node
  createNewNode(left, 1)
  root.left = left

  var right: Node = new Node
  createNewNode(right, 2)
  root.right = right

  echo $root.val
  echo $root.left.val
  echo $root.right.val

when isMainModule:
  main()
