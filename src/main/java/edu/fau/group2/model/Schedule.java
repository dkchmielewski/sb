package edu.fau.group2.model;

public class Schedule {
	/*
	This class creates schedule objects
	Declaring variables 
	 */	
	private int gameId;           //Stores schedule game id
	private String firstTeam;    //Stores schedule first team name
	private String secondTeam;   //Stores schedule second team name
	private String gameDate;     //Stores schedule game date
	private int firstScore;     //Stores schedule first score
	private int secondScore;   //Stores schedule second score
	private String winner;    //Stores schedule winner 
	
	//Default schedule constructor
	public Schedule() {
		super();
	}
	
	//Overloaded schedule constructor
	public Schedule(int gameId, String firstTeam, String secondTeam, String gameDate, int firstScore, int secondScore,
			String winner) {
		super();
		this.gameId = gameId;
		this.firstTeam = firstTeam;
		this.secondTeam = secondTeam;
		this.gameDate = gameDate;
		this.firstScore = firstScore;
		this.secondScore = secondScore;
		this.winner = winner;
	}

	//Gets schedule gamed id
	public int getGameId() {
		return gameId;
	}

	//Sets schedule game id
	public void setGameId(int gameId) {
		this.gameId = gameId;
	}

	//Gets schedule first team 
	public String getFirstTeam() {
		return firstTeam;
	}

	//Sets schedule first team
	public void setFirstTeam(String firstTeam) {
		this.firstTeam = firstTeam;
	}

	//Gets schedule second team
	public String getSecondTeam() {
		return secondTeam;
	}

	//Sets schedule second team
	public void setSecondTeam(String secondTeam) {
		this.secondTeam = secondTeam;
	}

	//Gets schedule game date
	public String getGameDate() {
		return gameDate;
	}

	//Sets schedule game date
	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
	}

	//Gets schedule first team score
	public int getFirstScore() {
		return firstScore;
	}

	//Sets schedule first team score
	public void setFirstScore(int firstScore) {
		this.firstScore = firstScore;
	}

	//Gets schedule second score
	public int getSecondScore() {
		return secondScore;
	}

	//Sets schedule second team score
	public void setSecondScore(int secondScore) {
		this.secondScore = secondScore;
	}

	//Gets winner photo
	public String getWinner() {
		return winner;
	}

	//Gets winner photo
	public void setWinner(String winner) {
		this.winner = winner;
	}
		
}//End schedule class
