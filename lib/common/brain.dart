class Brain {
  String getmessage(int lovepercentage) {
    if (lovepercentage >= 70) {
      return 'Great! Made for each other';
    } else if (lovepercentage >= 40 && lovepercentage <= 69) {
      return 'Good! You should work more on your relationshop';
    } else {
      return 'Okay! thats  not a very graet love score';
    }
  }
}
