package edu.fau.group2.model;

public class News {
	/*
	 This class creates news objects
	 Declaring variables 
	 */	
		private int news_id;        //Stores news id
		private String tittle;     //Stores news title
		private String link;     //Stores news link
		private String image;   //Stores news image
		
		//Default news constructor
		public News() {
			super();
		}

		//Overloaded news constructor
		public News(int news_id, String tittle, String link, String image) {
			super();
			this.news_id = news_id;
			this.tittle = tittle;
			this.link = link;
			this.image = image;
		}

		//Gets news id
		public int getNews_id() {
			return news_id;
		}

		//Sets news id
		public void setNews_id(int news_id) {
			this.news_id = news_id;
		}
		
		//Gets News title
		public String getTittle() {
			return tittle;
		}

		//Sets news title
		public void setTittle(String tittle) {
			this.tittle = tittle;
		}

		//Gets news link
		public String getLink() {
			return link;
		}

		//Sets news link
		public void setLink(String link) {
			this.link = link;
		}

		//Gets news image
		public String getImage() {
			return image;
		}

		//Sets news image
		public void setImage(String image) {
			this.image = image;
		}
			
	
}//End news class
