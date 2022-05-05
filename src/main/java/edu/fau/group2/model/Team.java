package edu.fau.group2.model;

public class Team {
	/*
	 This class creates team objects
	 Declaring variables
	 */	
	private int team_id;
	private int win;
	private int loss;
	private int vote_number;
	
	//Default Constructor
	public Team() {
		super();
	}
	
	//Overloaded Constructor
	public Team(int team_id, int win, int loss, int vote_number) {
		super();
		this.team_id = team_id;
		this.win = win;
		this.loss = loss;
		this.vote_number = vote_number;
	}
	
	//Get team id
	public int getTeam_id() {
		return team_id;
	}
	
	//Set team id
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	
	//Get win
	public int getWin() {
		return win;
	}

		//Set win
	public void setWin(int win) {
		this.win = win;
	}

		//Get loss
	public int getLoss() {
		return loss;
	}

		//Set loss
	public void setLoss(int loss) {
		this.loss = loss;
	}

	//Get number of votes
	public int getVote_number() {
		return vote_number;
	}
	
	//Set number of votes
	public void setVote_number(int vote_number) {
		this.vote_number = vote_number;
	}
	
	

}//end class team

