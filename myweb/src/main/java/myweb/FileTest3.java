package myweb;

import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;

public class FileTest3 {
	public static void main(String[] args) throws Exception {
		Scanner scan = new Scanner(System.in);
		PrintWriter out = new PrintWriter(System.out);
		String str = scan.nextLine();
		while(str.length()!=0) {
			System.out.println(str);
			out.println(str);
			str = scan.nextLine();
		}
		out.close();
	}

}
