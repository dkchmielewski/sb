package edu.fau.group2.util;

import java.util.List;

import edu.fau.group2.model.Highlights;
import edu.fau.group2.model.News;
import edu.fau.group2.model.Schedule;
import edu.fau.group2.model.Shop;
import edu.fau.group2.model.Team;
import edu.fau.group2.model.User;

//This class contains the main method and is the starting point of the application

public class TestApplication {

	public static void main (String[] args) {
		
		//USER
		
		List<User> list = DBUtil.getAllUser();
		System.out.println(list.size());
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getFirstName());
		}
		
		User u = DBUtil.getUserById(1);
		System.out.println(u.getFirstName());
		
		//HIGHLIGHTS
		
		List<Highlights> list2 = DBUtil.getAllHighlights();
		System.out.println(list2.size());
		
		for (int i = 0; i < list2.size(); i++) {
			System.out.println(list2.get(i).getTittle());
		}
		
		Highlights h = DBUtil.getHighlightsById(1);
		System.out.println(h.getTittle());
		
		//NEWS
		
		List<News> list3 = DBUtil.getAllNews();
		System.out.println(list3.size());
		
		for (int i = 0; i < list3.size(); i++) {
			System.out.println(list3.get(i).getLink());
		}
		
		News n = DBUtil.getNewsById(1);
		System.out.println(n.getLink());
		
		//SCHEDULE
		
		List<Schedule> list4 = DBUtil.getAllSchedule();
		System.out.println(list4.size());
		
		for (int i = 0; i < list4.size(); i++) {
			System.out.println(list4.get(i).getFirstScore());
		}
		
		Schedule s = DBUtil.getScheduleById(1);
		System.out.println(s.getFirstTeam());
		
		//SHOP
		
		List<Shop> list5 = DBUtil.getAllShop();
		System.out.println(list5.size());
		
		for (int i = 0; i < list5.size(); i++) {
			System.out.println(list5.get(i).getProduct());
		}
		
		Shop sh = DBUtil.getShopById(1);
		System.out.println(sh.getProduct());
		
		//TEAM
		
		List<Team> list6 = DBUtil.getAllTeam();
		System.out.println(list6.size());
		
		for (int i = 0; i < list6.size(); i++) {
			System.out.println(list6.get(i).getVote_number());
		}
		
		Team t = DBUtil.getTeamById(1);
		System.out.println(t.getVote_number());
		
	}
	
}
