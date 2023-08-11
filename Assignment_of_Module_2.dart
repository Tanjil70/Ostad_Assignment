void main()
{
  List<int> variousSubjectsNum=[85,92,78,65,88,72];
  int sum=0;
  double averageGrade;
  for(var number in variousSubjectsNum)
    {
      sum+=number;
    }
  averageGrade=sum/variousSubjectsNum.length;
  print("Student's average grade: ${averageGrade.toStringAsFixed(1)}");
  print("Rounded average: ${averageGrade.round()}");
  if(averageGrade>=70)
    {
      print("Passed");
    }
  else{
    print("Failed ");
  }

}