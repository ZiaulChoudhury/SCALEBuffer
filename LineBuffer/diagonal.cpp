#include <stdio.h>

int main() {
    int N;
    printf("Enter the size of the matrix: ");
    scanf("%d", &N);
    
    int matrix[N][N];
    printf("Enter the elements of the matrix:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            scanf("%d", &matrix[i][j]);
        }
    }
    
    printf("The diagonal indices are:\n");
    
    // Print main diagonal indices
    printf("Main diagonal: ");
    for (int i = 0; i < N; i++) {
        printf("(%d,%d) ", i, i);
    }
    
    // Print secondary diagonal indices
    printf("\nSecondary diagonal: ");
    for (int i = 0, j = N-1; i < N && j >= 0; i++, j--) {
        printf("(%d,%d) ", i, j);
    }
    
    // Print remaining diagonals
    for (int k = 1; k < N; k++) {
        printf("\nDiagonal %d: ", k+N-1);
        for (int i = 0, j = k; j < N; i++, j++) {
            printf("(%d,%d) ", i, j);
        }
    }
    for (int k = 1; k < N; k++) {
        printf("\nDiagonal %d: ", k+2*N-2);
        for (int i = k, j = 0; i < N; i++, j++) {
            printf("(%d,%d) ", i, j);
        }
    }
    
    return 0;
}

