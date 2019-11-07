package co.hello.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.function.BiFunction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hello.command.Command;


public class IndexCommand implements Command {	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub		
		return "jsp/main.jsp";
	}

}
