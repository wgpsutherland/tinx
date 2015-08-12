modifier =
  ms: 24 * 60 * 60 * 1000
  s: 24 * 60 * 60
  m: 24 * 60
  h: 24
  d: 1

convert = (x) ->
  obj = a: {}, an: {}
  obj.a.day = x
  obj.a.week = obj.a.day * 7
  obj.a.year = obj.a.day * 365
  if x isnt modifier.d then obj.an.hour = x / 24
  if x isnt modifier.h and obj.an.hour then obj.a.minute = obj.an.hour / 60
  if x isnt modifier.m and obj.a.minute then obj.a.second = obj.a.minute / 60
  if x isnt modifier.s and obj.a.second then obj.a.millisecond = obj.a.second / 1000
  obj

module.exports =
  milliseconds:
    in: convert(modifier.ms)
  seconds:
    in: convert(modifier.s)
  minutes:
    in: convert(modifier.m)
  hours:
    in: convert(modifier.h)
  days:
    in: convert(modifier.d)
