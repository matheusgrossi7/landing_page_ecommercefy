enum PlanType {
  starter('Starter'),
  growth('Growth'),
  scale('Scale'),
  unselected('');

  const PlanType(this.planName);
  final String planName;
}
