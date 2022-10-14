# Pewlett Hackard Analysis
Click on the link to view PH analysis code :  [PH Analysis](https://github.com/miralchangela/Pewlett-Hackard-Analysis/blob/main/Assignment_solution.sql)

# Purpose of the project:

The purpose of our project is to determine the number of employees retired within few years and also identify how many employees are eligible for mentorship program. In this Analysis also gives information about how many employee retired by departments. Analysis helps manager to deal with upcoming sitution in company.

# The Results:

## Employee list who are eligible for retirement:

- Our retiring employees by title information will show the titles of all employees born between January, 1 1952 and December, 31 1955. First we created a query that retrieved the emp_no, first_name and last_name columns from the employees table and retrieved the title,from_date and to_date columns of the titles table in our pewlett-hackard query.
- We joined both of these table on the primary key,filtered the data by birth_date and put the information into a new table.
- The retirment_titles table gives information about who are eligible for retirement and how long they have worked at each position over the time of their career.
- Retirement title table stored into a table and its image shown below:

![retirement_titles](https://github.com/miralchangela/Pewlett-Hackard-Analysis/blob/main/table%20images/retirement_titles.png)

## Employee list with unique title:

- We created a unique titles table to find who switched titles over the time of their employment.so we can remove duplicate entries of those employees. DISTRICT ON method is used for retrieve the first occurrence of the employee number for each set of rows.

- The unique titles table that we created is showing the most recent title for employees of retirment age.

![unique_titles](https://github.com/miralchangela/Pewlett-Hackard-Analysis/blob/main/table%20images/unique_titles.png)

## Number of retiering titles:

- we did ORDER BY COUNT to show us the total number of each title from our unique_titles table that we created. Image of retiering title shown below:

![retiering_titles](https://github.com/miralchangela/Pewlett-Hackard-Analysis/blob/main/table%20images/retiring_titles.png)

## Employee list who are eligible for mentorship:

- In this part, we wrote a query that retrieved columns from our employees and dept_emp table, filtered data on current employees born in 1965 then ordered the table by emp_no.
- The final part of our project shows mentorship eligibility, if you look at the head of the new csv - you can see that most of these employees have senior titles. below image shows list of employees who are eligible for mentorship.

![mentorship_eligibility](https://github.com/miralchangela/Pewlett-Hackard-Analysis/blob/main/table%20images/mentorship_eligibility.png)

# Summary :
- Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
1) How many roles will need to be filled as the "silver tsunami" begins to make an impact? 
  
      72,458 roles are in urgent need to be filled out as soon as the workforce starts retiring at any given time.
  
2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  
      No, we have 1,549 employees who are eligible to participate in a mentorship program which shows in preceding image of employee list of mentorship.

# Conclusion:

- we can see that 63% of the workforce is either retirment or mentorship eligible there will most likely be many positions to fill over the next few years. 
- PH may not have enough people in the workforce to take care of the tasks or even come close to the amount of experience to fill these roles so quickly but what companies can do is try to best learn about what these employees did to be so successful and for having such long lasting careers into this company for future employees. 
- Most likely the future generation is morequick learner due to technologies and can catch on quickly helping companies continue to trend in the right direction by keeping revenues up.

