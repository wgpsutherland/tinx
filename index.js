var convert = function (x) {
    var obj = {a:{}, an:{}};
    obj.a.day = x;
    obj.a.week = obj.a.day * 7;
    obj.a.year = obj.a.day * 365;
    if(x !== modifier.d) obj.an.hour = x / 24;
    if(x !== modifier.h && obj.an.hour) obj.a.minute = obj.an.hour / 60;
    if(x !== modifier.m && obj.a.minute) obj.a.second = obj.a.minute / 60;
    if(x !== modifier.s && obj.a.second) obj.a.millisecond = obj.a.second / 1000;
    return obj;
};

var modifier = {
    ms: 60 * 60 * 1000 * 24,
    s: 60 * 60 * 24,
    m: 60 * 24,
    h: 24,
    d: 1
};

module.exports = {
    milliseconds: {
        in: convert(modifier.ms)
    },
    seconds: {
        in: convert(modifier.s)
    },
    minutes: {
        in: convert(modifier.m)
    },
    hours: {
        in: convert(modifier.h)
    },
    days: {
        in: convert(modifier.d)
    }
};
