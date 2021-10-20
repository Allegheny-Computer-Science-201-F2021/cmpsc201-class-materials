#include <stdio.h>
struct gator{
  int studentid;
  float studentgpa;
  int employeeid;
  float employeesalary;
};
int main(){
  struct gator g1;
  g1.studentid = 1001;
  g1.studentgpa = 3.5;
  printf("%d\t%f\n", g1.studentid, g1.studentgpa);
  printf("%lu\n", sizeof(g1));

  struct gator g2;
  g2.employeeid = 2001;
  g2.employeesalary = 5125.45;
  printf("%d\t%0.2f\n", g2.employeeid, g2.employeesalary);
  printf("%lu\n", sizeof(g2));
  
  return 0;
} 