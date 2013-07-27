#include <iostream>

using namespace std;

int n, num1, num2;

int rn( int n ){
  int ans = 0;
  while( n ){
    ans *= 10;
    ans += (n%10);
    n = n/10;
  }
  return ans;
}

int main(){
  cin >> n;
  for( int i=0; i<n; ++i ){
    cin >> num1 >> num2;
    cout << rn(rn(num1) + rn(num2)) << endl;
  }
  return 0;
}