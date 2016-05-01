package apt.classes;

import java.util.List;

public class ListModel1 {
	private List<Property> list;
	private int requestPage; // 현재페이지
	private int totalPageCount;//통페이지수
	private int startPage;
	private int endPage;
	
	public ListModel1(List<Property> list, int requestPage, int totalPageCount,
			int startPage, int endPage) {
		super();
		this.list = list;
		this.requestPage = requestPage;
		this.totalPageCount = totalPageCount;
		this.startPage = startPage;
		this.endPage = endPage;
	}
	public List<Property> getList() {
		return list;
	}
	public void setList(List<Property> list) {
		this.list = list;
	}
	public int getRequestPage() {
		return requestPage;
	}
	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}
	public int getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	
	
}
