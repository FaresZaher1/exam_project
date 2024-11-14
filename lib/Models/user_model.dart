class usermod{
  bool status;
  usermod({required this.status });
  factory usermod.cons(Map js)
  {
    return usermod(status: js['status']);
  }
  }