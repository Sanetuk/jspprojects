import java.util.ArrayList;

public class ListTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<String> list = new ArrayList<String>();
		list.add("hello");
		list.add("admin");
		list.add("guest");
		for(String name : list) {
			System.out.println(name);
		}
		
		//hello를 지우려면?
		//hello
		//list.remove("hello");
		for(String name : list) {
			if(name.equals("hello")) {
				list.remove("hello");
				break;
			}
		}
		for(String name : list) {
			System.out.println(name);
		}
		for(int i=0;i<list.size();i++) {
			if(list.get(i).equals("admin")) {
				list.remove(i);
				break;
			}
		}
	}

}
