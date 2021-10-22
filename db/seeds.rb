# frozen_string_literal: true

Wrestler.destroy_all
Team.destroy_all
League.destroy_all

# League(s)
@two_a = League.create(
  name: '2A', state: 'Oregon', division: 'Oregon School Activities Association',
  division_abbreviation: 'OSAA'
)

# Teams
@lincoln_heights = Team.create(name: 'Lincoln Heights', abbreviation: 'LA', league: @two_a)
@hawthorne_falls = Team.create(name: 'Hawthorn Falls', abbreviation: 'HF', league: @two_a)
@westwood = Team.create(name: 'Westwood', abbreviation: 'WW', league: @two_a)
@storm_coast = Team.create(name: 'Storm Coast', abbreviation: 'SC', league: @two_a)

# Wrestlers
# Lincoln Heights
Wrestler.create(name: 'Adam', team: @lincoln_heights, level: 'Varsity', weight: 115, win: 4, loss: 6)
Wrestler.create(name: 'Tom', team: @lincoln_heights, level: 'Varsity', weight: 135, win: 2, loss: 8)
Wrestler.create(name: 'Sebastian', team: @lincoln_heights, level: 'Varsity', weight: 125, win: 5, loss: 5)
Wrestler.create(name: 'Jimmy', team: @lincoln_heights, level: 'Varsity', weight: 165, win: 5, loss: 5)
Wrestler.create(name: 'Tyler', team: @lincoln_heights, level: 'Varsity', weight: 185, win: 7, loss: 3)

# Hawthorne Falls
Wrestler.create(name: 'Alexander', team: @hawthorne_falls, level: 'Varsity', weight: 115, win: 1, loss: 9)
Wrestler.create(name: 'Luke', team: @hawthorne_falls, level: 'Varsity', weight: 125, win: 6, loss: 4)
Wrestler.create(name: 'Noah', team: @hawthorne_falls, level: 'Varsity', weight: 135, win: 7, loss: 3)
Wrestler.create(name: 'Oliver', team: @hawthorne_falls, level: 'Varsity', weight: 165, win: 5, loss: 5)
Wrestler.create(name: 'Lucas', team: @hawthorne_falls, level: 'Varsity', weight: 185, win: 6, loss: 4)

# Westwood
Wrestler.create(name: 'Nolan', team: @westwood, level: 'Varsity', weight: 115, win: 9, loss: 1)
Wrestler.create(name: 'Roman', team: @westwood, level: 'Varsity', weight: 125, win: 7, loss: 3)
Wrestler.create(name: 'Connor', team: @westwood, level: 'Varsity', weight: 135, win: 8, loss: 2)
Wrestler.create(name: 'Robert', team: @westwood, level: 'Varsity', weight: 165, win: 3, loss: 7)
Wrestler.create(name: 'Jordan', team: @westwood, level: 'Varsity', weight: 185, win: 5, loss: 5)

# Storm Coast
Wrestler.create(name: 'Axel', team: @storm_coast, level: 'Varsity', weight: 115, win: 1, loss: 9)
Wrestler.create(name: 'Leonardo', team: @storm_coast, level: 'Varsity', weight: 125, win: 6, loss: 4)
Wrestler.create(name: 'Colton', team: @storm_coast, level: 'Varsity', weight: 135, win: 2, loss: 8)
Wrestler.create(name: 'Jack', team: @storm_coast, level: 'Varsity', weight: 165, win: 10, loss: 0)
Wrestler.create(name: 'Hunter', team: @storm_coast, level: 'Varsity', weight: 185, win: 3, loss: 7)
