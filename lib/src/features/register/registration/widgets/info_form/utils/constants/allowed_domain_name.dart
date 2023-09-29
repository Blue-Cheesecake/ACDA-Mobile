enum AllowedDomainName {
  studentACTH('@student.mahidol.ac.th'),
  studentEDU('@student.mahidol.edu'),
  staffACTH('@mahidol.ac.th'),
  staffEDU('@mahidol.edu');

  const AllowedDomainName(this.value);
  final String value;
}
