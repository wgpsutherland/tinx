var chai = require('chai');
var expect = chai.expect;

var t = require('../index.js');

describe('testing tinx', function() {
    describe('milliseconds', function() {
        it('should have the correct amount', function() {
            expect(t.milliseconds.in.a.millisecond).to.equal(1);
            expect(t.milliseconds.in.a.second).to.equal(1000);
            expect(t.milliseconds.in.a.minute).to.equal(1000 * 60);
            expect(t.milliseconds.in.an.hour).to.equal(1000 * 60 * 60);
            expect(t.milliseconds.in.a.day).to.equal(1000 * 60 * 60 * 24);
            expect(t.milliseconds.in.a.week).to.equal(1000 * 60 * 60 * 24 * 7);
            expect(t.milliseconds.in.a.year).to.equal(1000 * 60 * 60 * 24 * 365);
        });
    });
});