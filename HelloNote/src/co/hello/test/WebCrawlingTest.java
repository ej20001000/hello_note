package co.hello.test;

import java.io.IOException;
import java.util.Scanner;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class WebCrawlingTest {
	public static void main(String[] args) {
		Document d = null;
		Scanner in = new Scanner(System.in);
		while (true) {
			try {
				String foodName = in.nextLine();
				d = Jsoup.connect("http://www.10000recipe.com/recipe/list.html?q=" + foodName).timeout(6000).get();
			} catch (IOException e) {
				e.printStackTrace();
			}

			Elements ele = d.select("div.row");

			for (Element element : ele.select("div.col-xs-3")) {
				String img_url = element.select("h4.ellipsis_title2").text();
				if (!img_url.isEmpty()) {
					System.out.println(img_url);
					System.out.println("=====================");
				}
			}
		}
	}
}
