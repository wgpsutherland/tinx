// hour is 1
var convert = function (x) {
    var millisecond, second, minute, hour, day, week, year;
    hour = x;
    day = hour * 24;
    week = day * 7;
    year = day * 365;
    minute = hour / 60;
    second = minute / 60;
    millisecond = second / 1000;
    return {
        an: {
            hour: hour
        },
        a: {
            millisecond: millisecond,
            second: second,
            minute: minute,
            hour: hour,
            day: day,
            week: week,
            year: year
        }
    }
};

module.exports = {
    milliseconds: {
        in: convert(60 * 60 * 1000)
    },
    seconds: {
        in: convert(60 * 60)
    },
    minutes: {
        in: convert(60)
    },
    hours: {
        in: convert(1)
    },
    days: {
        in: convert(1 / 24)
    },
    weeks: {
        in: convert(1 / (24 * 7))
    },
    years: {
        in: convert(1 / (24 * 7 * 52))
    }
};
