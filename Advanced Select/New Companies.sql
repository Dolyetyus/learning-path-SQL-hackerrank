SELECT Company.company_code, Company.founder,
count(distinct Lead_Manager.lead_manager_code), 
count(distinct Senior_Manager.senior_manager_code), 
count(distinct Manager.manager_code),
count(distinct Employee.employee_code) 
FROM Company
INNER JOIN Lead_Manager ON Company.company_code = Lead_Manager.company_code
INNER JOIN Senior_Manager ON Company.company_code = Senior_Manager.company_code
INNER JOIN Manager ON Company.company_code = Manager.company_code
INNER JOIN Employee ON Company.company_code = Employee.company_code
WHERE Lead_Manager.lead_manager_code = Senior_Manager.lead_manager_code 
AND Senior_Manager.senior_manager_code = Manager.senior_manager_code 
AND Manager.manager_code = Employee.manager_code
GROUP BY Company.company_code, Company.founder
ORDER BY company_code;
