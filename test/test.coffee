chai = require('chai');
expect = chai.expect;

t = require '../index.js'

describe 'testing tinx.coffee', ->
  describe 'milliseconds', ->
    it 'should have the correct amount', ->
      expect(t.milliseconds.in.a.millisecond).to.equal(1)
      expect(t.milliseconds.in.a.second).to.equal(1000)
      expect(t.milliseconds.in.a.minute).to.equal(1000 * 60)
      expect(t.milliseconds.in.an.hour).to.equal(1000 * 60 * 60)
      expect(t.milliseconds.in.a.day).to.equal(1000 * 60 * 60 * 24)
      expect(t.milliseconds.in.a.week).to.equal(1000 * 60 * 60 * 24 * 7)
      expect(t.milliseconds.in.a.year).to.equal(1000 * 60 * 60 * 24 * 365)

  describe 'seconds', ->
    it 'should have the correct amount', ->
      expect(t.seconds.in.a.second).to.equal(1)
      expect(t.seconds.in.a.minute).to.equal(60)
      expect(t.seconds.in.an.hour).to.equal(60 * 60)
      expect(t.seconds.in.a.day).to.equal(60 * 60 * 24)
      expect(t.seconds.in.a.week).to.equal(60 * 60 * 24 * 7)
      expect(t.seconds.in.a.year).to.equal(60 * 60 * 24 * 365)

    it 'should return undefined when asking for values larger than itself', ->
      expect(t.seconds.in.a.millisecond).to.equal(undefined)

  describe 'minutes', ->
    it 'should have the correct amount', ->
      expect(t.minutes.in.a.minute).to.equal(1)
      expect(t.minutes.in.an.hour).to.equal(60)
      expect(t.minutes.in.a.day).to.equal(60 * 24)
      expect(t.minutes.in.a.week).to.equal(60 * 24 * 7)
      expect(t.minutes.in.a.year).to.equal(60 * 24 * 365)

    it 'should return undefined when asking for values larger than itself', ->
      expect(t.minutes.in.a.millisecond).to.equal(undefined)
      expect(t.minutes.in.a.second).to.equal(undefined)

  describe 'hours', ->
    it 'should have the correct amount', ->
      expect(t.hours.in.an.hour).to.equal(1)
      expect(t.hours.in.a.day).to.equal(24)
      expect(t.hours.in.a.week).to.equal(24 * 7)
      expect(t.hours.in.a.year).to.equal(24 * 365)

    it 'should return undefined when asking for values larger than itself', ->
      expect(t.hours.in.a.millisecond).to.equal(undefined)
      expect(t.hours.in.a.second).to.equal(undefined)
      expect(t.hours.in.a.minute).to.equal(undefined)

  describe 'days', ->
    it 'should have the correct amount', ->
      expect(t.days.in.a.day).to.equal(1)
      expect(t.days.in.a.week).to.equal(7)
      expect(t.days.in.a.year).to.equal(365)

    it 'should return undefined when asking for values larger than itself', ->
      expect(t.days.in.a.millisecond).to.equal(undefined)
      expect(t.days.in.a.second).to.equal(undefined)
      expect(t.days.in.a.minute).to.equal(undefined)
      expect(t.days.in.an.hour).to.equal(undefined)
