#include <iostream>
using namespace std;
void solve(){
    int n;cin>>n;
    string s[n];
    for(int i=0;i<n;i++){
        cin>>s[i];
    }
    bool check=true;
    for(int i=0;i<n-1;i++){
        if(s[i]=="cookie" && s[i+1]!="milk"){
            check=false;
            break;
        }
    }
    if(s[n-1]=="cookie"){
        check=false;
    }
    if(check){
        cout<<"YES\n";
    }else{
        cout<<"NO\n";
    }
}
int main() {
	// your code goes here
	int t;cin>>t;
	while(t--){
	    solve();
	}
	return 0;
}
