-- create database CricketGame;
use CricketGame;
create table team(
teamId int primary key,
teamName varchar(20)
);
create table player(
PlayerId int primary key,
age int
);
create table Matches(
MatchId int primary key,
SeasonNumber int,
Stadium varchar(20),
MatchDate date
);
create table TeamScoreTable(
teamId int,
matchId int,
result varchar(10),
Score int,
primary key(teamId,matchId),
foreign key(teamId) references team(teamId),
foreign key(matchId) references matches(matchId)
);
create table PlayerScore(
PlayerId int,
matchId int,
Score int,
foreign key(PlayerId) references player(playerId),
foreign key(matchId) references matches(matchId)
);
create table PlayersMapping(
PlayerId int,
TeamId int,
SeasonNumber int,
primary key(PlayerId,SeasonNumber),
foreign key (PlayerId) references player(playerId)
);