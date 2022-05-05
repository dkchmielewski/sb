package edu.fau.group2.util;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import edu.fau.group2.configuration.SpringJdbcConfig;
import edu.fau.group2.model.Highlights;
import edu.fau.group2.model.News;
import edu.fau.group2.model.Schedule;
import edu.fau.group2.model.Shop;
import edu.fau.group2.model.Team;
import edu.fau.group2.model.User;
import edu.fau.group2.services.HighlightsService;
import edu.fau.group2.services.NewsService;
import edu.fau.group2.services.ScheduleService;
import edu.fau.group2.services.ShopService;
import edu.fau.group2.services.TeamService;
import edu.fau.group2.services.UserService;

//This class handles all the methods through services created based on each specific class

public class DBUtil {

	private final static AnnotationConfigApplicationContext CONTEXT = new AnnotationConfigApplicationContext(SpringJdbcConfig.class);
	private final static UserService USER_SERVICE = CONTEXT.getBean(UserService.class);
	private final static HighlightsService HIGHLIGHTS_SERVICE = CONTEXT.getBean(HighlightsService.class);
	private final static NewsService NEWS_SERVICE = CONTEXT.getBean(NewsService.class);
	private final static ScheduleService SCHEDULE_SERVICE = CONTEXT.getBean(ScheduleService.class);
	private final static TeamService TEAM_SERVICE = CONTEXT.getBean(TeamService.class);
	private final static ShopService SHOP_SERVICE = CONTEXT.getBean(ShopService.class);
	
	public static List<User> getAllUser() {
		return USER_SERVICE.getAll();
	}
	
	public static int checkUsernameAndPassword(String username, String password) {
		List<User> userList = USER_SERVICE.getAll();
		for (int i = 0; i < userList.size(); i++) {
			if (userList.get(i).getUserName().equals(username)) {
				if (userList.get(i).getPassword().equals(password)) {
					return userList.get(i).getUserId();
				}
				break;
			}}
			return -1;
	}
	
	public static User getUserById(int id) {
		return USER_SERVICE.getById(id);
	}
	
	public static boolean update(User u) {
		return USER_SERVICE.update(u);
	}
	
	public static boolean deleteUser(int id) {
		return USER_SERVICE.delete(id);
	}
	
	public static boolean createUser(User u) {
		return USER_SERVICE.create(u);
	}
	//HIGHLIGHTS
	public static List<Highlights> getAllHighlights() {
		return HIGHLIGHTS_SERVICE.getAll();
	}
	
	public static Highlights getHighlightsById(int id) {
		return HIGHLIGHTS_SERVICE.getById(id);
	}
	
	public static boolean update(Highlights h) {
		return HIGHLIGHTS_SERVICE.update(h);
	}
	
	public static boolean deleteHighlights(int id) {
		return HIGHLIGHTS_SERVICE.delete(id);
	}
	
	public static boolean createHighlights(Highlights h) {
		return HIGHLIGHTS_SERVICE.create(h);
	}
	//NEWS
	public static List<News> getAllNews() {
		return NEWS_SERVICE.getAll();
	}
	
	public static News getNewsById(int id) {
		return NEWS_SERVICE.getById(id);
	}
	
	public static boolean update(News n) {
		return NEWS_SERVICE.update(n);
	}
	
	public static boolean deleteNews(int id) {
		return USER_SERVICE.delete(id);
	}
	
	public static boolean createNews(News n) {
		return NEWS_SERVICE.create(n);
	}
	//SCHEDULE
	public static List<Schedule> getAllSchedule() {
		return SCHEDULE_SERVICE.getAll();
	}
	
	public static Schedule getScheduleById(int id) {
		return SCHEDULE_SERVICE.getById(id);
	}
	
	public static boolean update(Schedule s) {
		return SCHEDULE_SERVICE.update(s);
	}
	
	public static boolean deleteSchedule(int id) {
		return SCHEDULE_SERVICE.delete(id);
	}
	
	public static boolean createSchedule(Schedule s) {
		return SCHEDULE_SERVICE.create(s);
	}
	//SHOP
	public static List<Shop> getAllShop() {
		return SHOP_SERVICE.getAll();
	}
	
	public static Shop getShopById(int id) {
		return SHOP_SERVICE.getById(id);
	}
	
	public static boolean update(Shop s) {
		return SHOP_SERVICE.update(s);
	}
	
	public static boolean deleteShop(int id) {
		return SHOP_SERVICE.delete(id);
	}
	
	public static boolean createShop(Shop s) {
		return SHOP_SERVICE.create(s);
	}
	//TEAM
	public static List<Team> getAllTeam() {
		return TEAM_SERVICE.getAll();
	}
	
	public static Team getTeamById(int id) {
		return TEAM_SERVICE.getById(id);
	}
	
	public static boolean update(Team t) {
		return TEAM_SERVICE.update(t);
	}
	
	public static boolean deleteTeam(int id) {
		return TEAM_SERVICE.delete(id);
	}
	
	public static boolean createTeam(Team t) {
		return TEAM_SERVICE.create(t);
	}
	
}
