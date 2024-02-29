class Hamming {
  dynamic distance(String a, String b) 
  {
    int alen = a.length;
    int blen = b.length;
    int mismatch = 0;
    if ((alen == blen)) 
    {
      for (int i = 0; i < alen; i++) 
      {
        if (a[i] != b[i]) 
        {
          mismatch++;
        }
      }
    } 
    else
      throw ArgumentError('strands must be of equal length');
    return mismatch;
  }
}
