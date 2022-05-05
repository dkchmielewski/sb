package edu.fau.group2.model;

public class Highlights {
	/*
	 This class creates Highlights objects 
	 Declaring variables
	 */
		private int id;   //Stores the Highlights id
		private String tittle;   //Stores the Highlights tittle
		private String link;    //Stores the Highlights links
		
		
		//Default Highlights constructor 
		public Highlights() {
			super();
		}

		//Overloaded Highlights constructor 
		public Highlights(int id, String tittle, String link) {
			super();
			this.id = id;
			this.tittle = tittle;
			this.link = link;
		}

        //Gets Highlights id
		public int getId() {
			return id;
		}

        //Sets Highlights id
		public void setId(int id) {
			this.id = id;
		}

       //Gets Highlights title
		public String getTittle() {
			return tittle;
		}

        //Sets Highlights title
		public void setTittle(String tittle) {
			this.tittle = tittle;
		}

       //Get Highlights link
		public String getLink() {
			return link;
		}

       //Set Highlights link
		public void setLink(String link) {
			this.link = link;
		}			
		
}//End Highlights class
