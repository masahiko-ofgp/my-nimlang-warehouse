type
  DeviceKind = enum
    CDPlayer
    DVDPlayer
  Device = ref DeviceObj
  DeviceObj = object
    case kind: DeviceKind
    of CDPlayer: cd: string
    of DVDPlayer: dvd: string

proc play(d: Device) =
  case d.kind
  of CDPlayer: echo "PLAY: " & d.cd
  of DVDPlayer: echo "PLAY: " & d.dvd

proc stop(d: Device) =
  echo "STOP: " & $d.kind

proc main() =
  var
    cdp = Device(kind: CDPlayer, cd: "Buena Vista Social Club")
    dvdp = Device(kind: DVDPlayer, dvd: "Forrest Gump")

  cdp.play()
  dvdp.play()

  cdp.stop()
  dvdp.stop()

when isMainModule:
  main()
