#include <iostream>
#include <string>
#include <vector>
#define MAXN 101

using namespace std;

string pos, new_pos, side;
int cinema[MAXN][MAXN], row, col, Z, P, salir, r, c;
vector<string> t;

bool sorting( string i, string j ){
  int row_i = int(i[0]) - 65;
  int col_i = atoi( i.substr(1,i.size()).c_str() );
  
  int row_j = int(j[0]) - 65;
  int col_j = atoi( j.substr(1,j.size()).c_str() );

  if(row_j == row_i) return (col_j > col_i);
  else return (row_j > row_i);
}

int main(){
  while( cin >> r >> c && r+c ){
    for(int i=0; i<=r+1; ++i) for(int j=0; j<=c+1; ++j) cinema[i][j] = 0;
    
    cin >> P;
    while( P-- ){
      cin >> pos >> side;
      row = int(pos[0]) - 65;
      col = atoi( pos.substr(1,pos.size()).c_str() );
      if( side == "-" ) col=col-1;
      cinema[row][col] = 1;
    }
    
    cin >> Z;
    while( Z-- ){
      cin >> new_pos;
      t.push_back(new_pos);
    }
    sort(t.begin(), t.end(), sorting);
    
    salir = 0;
    for( int i = 0; i < t.size() && !salir; ++i ){
      new_pos = t[i];
      row = int(new_pos[0]) - 65;
      col = atoi( new_pos.substr(1,new_pos.size()).c_str() );      

      if(cinema[row][col-1] == 0) cinema[row][col-1] = 1;
      else if(cinema[row][col] == 0) cinema[row][col] = 1;
      else{
        cout << "NO" << endl;
        salir = 1;
      }
    }
    if(!salir) cout << "YES" << endl;
  }
  
  return 0;
}