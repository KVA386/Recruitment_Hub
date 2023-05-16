package com.app.utility;


import java.time.LocalDate;  


public class Ruff {
	public void sendDate(String date1)  
	{    
	//the parse() method is used to get an instance of LocalTime from a string 
		System.out.println(date1);
	LocalDate date = LocalDate.parse(date1);  
	//displaying date  
	System.out.println("Date : "+date);  
	//subtract days to date  
	LocalDate newDate = date.minusDays(1);  
	//prints the updated date  
	System.out.println("New Date: "+newDate);  
	}  
	}  

