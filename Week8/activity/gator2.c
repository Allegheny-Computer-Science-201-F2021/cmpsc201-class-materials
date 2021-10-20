#include <stdio.h>
union gator{
  struct{
    int studentid;
    float studentgpa;  
  } student; 
  struct{
    int employeeid;
    float employeesalary;  
  } employee;
};
int main(){
  union gator g1;
  g1.student.studentid = 1001;
  g1.student.studentgpa = 3.5;
  printf("%d\t%f\n", g1.student.studentid, g1.student.studentgpa);
  printf("%lu\n", sizeof(g1));
  union gator g2;
  g2.employee.employeeid = 2001;
  g2.employee.employeesalary = 5125.45;
  printf("%d\t%f\n", g2.employee.employeeid, g2.employee.employeesalary);
  printf("%lu\n", sizeof(g2));
  return 0;
} 