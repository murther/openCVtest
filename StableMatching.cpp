/*
 * File:   StableMatching.cpp
 * Author: Nate Wilson
 *
 * Created on September 8, 2015, 9:33 PM
 */

#include <cstdlib>
#include <iostream>
#include <fstream>
#include <string.h>
#include <stdbool.h>

using namespace std;

// Prototypes
void permute(int[], int);
void swap(int[],int, int);
void displayPref(int [], string);
void displayAllMatchings();
void read();
int factorial (int);
bool bruteForceStable(int[]);
void displayMatching(int[], int);
void G_S_Stable();
 /* given the specified preference array, persons P, p1 and p2, rank() returns
 * true if p1 comes before p2 on P's preference array */
bool rank(int[],int, int, int);


//Variables
int N;
int * femalePref; // female's preferences
int * malePref;   // male's preferences
int * matches;    // male female pairings, index is male, value is female
int numPerms;     // number of possible premutations
int curRow;       // the current premutation, used in recursive permute()

int main(int argc, char** argv) {

    read();

    displayPref (malePref, "Male Preferences");     displayPref (femalePref,"Female Preferences");

    cout << "N = " << N <<
            "\nN! = " << numPerms << "\n\n";


    cout << "Brute Force Stable matches:\n";
    permute(matches, 0);
    cout << "\n";


    cout << "G_S_Stable match:\n";
    G_S_Stable();
    displayMatching(matches, 1);

    return 0;
}

void read(){
    ifstream  input("input10.txt"); // corresponds to input file of size n=10
    if(input.fail()){
        cout << "input error, exiting.\n"
        exit(1);
      }

    cout << "reading in data...\n";
    input >> N;
    numPerms = factorial(N);


    malePref = new int [N*N];
    femalePref = new int [N*N];
    matches = new int [N];
    for(int i = 0; i < N; i++)
        matches[i] = i;

    for(int i=0; i<N*N && input>>malePref[i]; i++) ;
    for(int i=0; i<N*N && input>>femalePref[i]; i++) ;
}

void permute(int m[], int k){
    if (k == N)
        return;
       for (int i = k; i < N; i++){
        swap(m, i, k);
        permute(m, k+1);
        swap(m, k, i);
    }

    if(k == N){

        if(bruteForceStable(m))
            displayMatching(m, curRow);


        curRow++;
    }
}
bool bruteForceStable(int localMatch[]){

    for(int m1 = 0; m1 < N; m1++){ // for each man m1
        int w1 = localMatch[m1];   // get his match, w1
        int w1Rank = 0;


        while(malePref[m1*N+w1Rank] != w1) // find her rank on his pref. list
            w1Rank++;


        for(int mPref = 0; mPref < w1Rank; mPref++){//for each woman ahead of w1
            int w2 = malePref[m1*N+mPref]; // get the woman ahead of w1
            int m2 = 0;


            for(; localMatch[m2] != w2; m2++); // find out who w2 is paired with

            if(rank(femalePref, w2, m1, m2)) // if w2 prefers m1 to m2, instable
                return false;
       }
        // womens section. part of the same loop for m1
        int m1Rank = 0;             // get m1's rank on w1's pref. list
        for(; femalePref[w1*N+m1Rank] != m1; m1Rank++);


        for(int wPref = 0; wPref < m1Rank; wPref++){ // for each m2 ahead of m1
            int m2 = femalePref[w1*N+wPref],
                w2 = matches[m2];           // get m2's match, w2


            if(rank(malePref, m2, w1, w2)) // if w2 prefers m1 to m2, instable
                return false;
        }
    }     // if the loop has completed, there are no instabilities
    return true;
}

void G_S_Stable(){
    int * wTaken = new int[N]; // women are available if 0, taken if 1
    int * mTaken = new int[N]; // men are available if 0, taken if 1
    int * proposed = new int[N*N]; // which women have the men proposed to?

    for(int i = 0; i < N; i++){ // initialize arrays
        mTaken[i] = wTaken[i] = 0;
        matches[i] = ­1;
        for(int j = 0; j < N; j++)
            proposed [i*N+j] = 0;
    }

    while(true) {


        int m, w;
        for(m = 0; m < N; m++)  // find an available man m
            if(!mTaken[m])
                break;


        if(m == N) // if m == N, all men are taken, meaning all women are taken
            break;    // we are done


        for(int mPref = 0; mPref < N; mPref++){
            w = malePref[m*N+mPref];
            if(!proposed[m*N+w])    // find a woman w that m hasn't proposed to
                break;
        }


        proposed[m*N+w] = 1; // m proposes to w


        if(!wTaken[w]){      // if w is not taken
            matches[m] = w;     // match m with w
            mTaken[m] = 1;      // m is taken
            wTaken[w] = 1;      // w is taken
        }
        else{               // else some pair (m`, w) exists
            int mPrime = 0;
            for(; matches[mPrime] != w; mPrime++); // find m`
             if(rank(femalePref, w, m, mPrime)){  // if w prefers m to m`
                matches[m] = w;                     // w goes with m
                mTaken[m] = 1;                      // m is taken
                mTaken[mPrime] = 0;                 // m` becomes free
            }
            // else (m`, w) still exists
        }

    }
}


                    // returns true if p1 comes before p2 on P's preference list
bool rank(int pref[], int P, int p1, int p2){
    int p1Rank = 0, p2Rank = 0;

    for(; pref[P*N+p1Rank] != p1; p1Rank++);
    for(; pref[P*N+p2Rank] != p2; p2Rank++);

    return p1Rank < p2Rank;
}

void displayPref(int a[], string header){ // displays specified preference array
    cout << header << ":\n";

    for(int row = 0; row < N; row++){
        cout << row << ": [ ";
        for(int col = 0; col < N; col++){
            cout << a[row*N+col] << " ";
        }
        cout << "]\n";
    }
     cout << "\n";
}

void displayMatching(int match[], int curPerm){
    cout << curPerm << ": [ ";
    for(int i = 0; i < N; i++){
        cout << "(" << i << "," << match[i] << ") ";
    }
    cout << "]\n";
}

int factorial(int n){
    int prod = 1;       do{
        prod *= n;
    }while(n­­ > 1);
    return prod;
}

void swap(int array[], int i, int k){
    int s = array[i];
    array[i] = array[k];
    array[k] = s;
}
