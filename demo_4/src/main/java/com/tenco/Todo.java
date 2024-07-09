package com.tenco;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
public class Todo {
	
	@Override
	public String toString() {
		return "{ \"id\" : "+id+" }";
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
	private int id;
	private String title;
	private boolean completed;

}
