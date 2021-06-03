package com.example.practice_NongPhanManhHung;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "EmployeeControllerServlet", value = "/EmployeeControllerServlet")
public class EmployeeControllerServlet extends HttpServlet {
    private DataSource dataSource;
    private EmployeeDBUntil employeeDBUntil;
    public  void init() throws ServletException {
        super.init();

        Context initContext = null;
        try {
            initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            dataSource = (DataSource) envContext.lookup("jdbc/codeleanvn");
        } catch (NamingException e) {
            e.printStackTrace();
        }

        // create our student db util ... and pass in the conn pool / datasource
        try {
            employeeDBUntil = new EmployeeDBUntil(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // read the "command" parameter
            String theCommand = request.getParameter("command");
            // if the command is missing, then default to listing students
            if (theCommand == null) {
                theCommand = "LIST";
            }
            // route to the appropriate method
            switch (theCommand) {
                case "LIST":
                    listEmployee(request, response);
                    break;
                case "ADD":
                    addEmployee(request, response);
                    break;


            }

        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }
    protected void listEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Employee> employeeList = employeeDBUntil.getEmployees();
        request.setAttribute("Employee_list", employeeList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("list.jsp");
        dispatcher.forward(request, response);
    }
    protected void addEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException {
        String fullname = request.getParameter("fullname");
        String birthday = request.getParameter("birthday");
        String address = request.getParameter("address");
        String position = request.getParameter("position");
        String department = request.getParameter("department");

        Employee theEmployee = new Employee(fullname, birthday, address,position, department);

        employeeDBUntil.addEmployee(theEmployee);
        listEmployee(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
