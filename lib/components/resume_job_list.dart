import '../models/job.dart';

class ResumeJobList {
  List<Job> _jobs = [
    Job(
        jobTitle: 'The Master',
        coName: 'The House',
        fromYr: 2019,
        toYr: 2021,
        loc: 'Las Vegas, NV',
        desc:
            'Supervises house slaves to wake up at dawn and follow all orders throughout the day.'),
    Job(
        jobTitle: 'Playboy',
        coName: 'MV Hood',
        fromYr: 2016,
        toYr: 2019,
        loc: 'Mar Vista, CA',
        desc:
            'Wandered around the neighborhood, got to know all the neighbors, demanded pets and treats, and surprised my slave.'),
    Job(
        jobTitle: 'Mouse Assassin',
        coName: 'Apartment cellar',
        fromYr: 2016,
        toYr: 2018,
        loc: 'Mar Vista, CA',
        desc:
            'Terrorized the local mice and played with them until death. Also, brought home some half dead mice as gifts to my slave.'),
    Job(
        jobTitle: 'Bird Assassin',
        coName: 'Apartment trees',
        fromYr: 2014,
        toYr: 2016,
        loc: 'Glendale, CA',
        desc:
            'Stalked birds whether they be large and small. Taunted ravens especially and did not care if they dive bombed or yelled all day.'),
    Job(
        jobTitle: 'Territory Guard',
        coName: 'LF Hood',
        fromYr: 2012,
        toYr: 2014,
        loc: 'Los Feliz, CA',
        desc:
            'Kept the neighborhood cats in check. Made sure they knew who was boss, especially at nighttime by yowling loudly and swiping at anyone who stood in my way.'),
    Job(
        jobTitle: 'Vagabond',
        coName: 'LV Hood',
        fromYr: 2011,
        toYr: 2012,
        loc: 'Las Vegas, NV',
        desc:
            'Decided to run away for a month and explored the neighborhood. Got to know the neighborhood kids, hung out at the park, was almost adopted by another slave, then asked new slave to finally take me back.'),
    Job(
        jobTitle: 'Beginner Playboy',
        coName: 'Backyard',
        fromYr: 2009,
        toYr: 2011,
        loc: 'W Adams, CA',
        desc:
            'Trained on being a playboy by getting to know the neighborhood cats.'),
    Job(
        jobTitle: 'Feet Warmer',
        coName: 'Bedroom',
        fromYr: 2008,
        toYr: 2009,
        loc: 'W Adams, CA',
        desc:
            'Realized that feet were the optimal place to sleep. Slept almost every night by my slaves\' feet.'),
    Job(
        jobTitle: 'Washing Machine Inspector',
        coName: 'Laundry Room',
        fromYr: 2007,
        toYr: 2008,
        loc: 'W Adams, CA',
        desc:
            'Did not stray frin the back of the washing machine for a long time. It needed daily inspections.'),
    Job(
        jobTitle: 'Yeller',
        coName: 'Everywhere',
        fromYr: 2007,
        toYr: 2006,
        loc: 'Burbank, CA',
        desc:
            'Made sure everyone knew when I was arriving, walking, being carried, woke up, was hungry, wanted to go out, wanted to sleep. Made it so they could\'nt get a word in edgewise.'),
  ];

  List<Job> get jobs => _jobs;

  int get size => _jobs.length;
}
