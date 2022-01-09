#include <stdio.h>
#include <ctype.h>
#include <string.h>

#define STR_LEN 20

void bubbleSort(char [][STR_LEN], size_t);

void swapStrings(char *, char *);

void writeArrayToFile(char [][STR_LEN], char *);

int timestampToSeconds(char *);

int yearMatches(int, char *);


int main() {
    char string[STR_LEN] = {};
    char file_name[30], output_name[30];
    // TODO Allocate memory dynamically
    char timestamps[50][STR_LEN] = {};
    int i = 0;

    FILE *tsPtr;
    // get file name from user, expecting "timestamps.txt"
    printf("Enter the file to be opened:\n");
    scanf("%s", file_name);
    printf("Enter the file to write to:\n");
    scanf("%s", output_name);
    // check file name is correct and open
    if ((tsPtr = fopen(file_name, "r")) == NULL) {
        printf("File could not be opened. Please try again:\n");
        scanf("%s", file_name);
    } else {
        // continue until EOF
        while (!feof(tsPtr) && (fgets(string, STR_LEN, tsPtr) != NULL)) {
            // append strings to string array
            if (strlen(string) == STR_LEN - 1) {
                strcpy(timestamps[i], string);
                i++;
            }
        }
        fclose(tsPtr);
    }

    int rows = sizeof(timestamps) / sizeof(timestamps[0]);
    // sort timestamps chronologically
    bubbleSort(timestamps, rows);
    // output sorted array to file
    writeArrayToFile(timestamps, output_name);

    printf("Entries from 2016:\n");
    for (int j = 0; j < rows; j++) {
        if (yearMatches(2016, timestamps[j])) {
            printf("\t%s\n", timestamps[j]);
        }
    }

    return 0;
}
// Sort string array using Bubble Sort
void bubbleSort(char arr[][STR_LEN], size_t rows) {
    int comparisons = 0, swaps = 0;
    for (int pass = 1; pass < rows; pass++) {
        // printf("Pass: %d\n", pass);
        comparisons++;
        for (size_t i = 0; i < rows - pass; i++) {
            // printf("\tComparing %s with %s\n", arr[i], arr[i + 1]);
            // Use seconds since 01/01/2000-00:00:00 to compare
            if (timestampToSeconds(arr[i]) > timestampToSeconds(arr[i + 1])) {
                //  printf("\t\tSwapping: %s with %s\n", arr[i], arr[i + 1]);
                swapStrings(arr[i], arr[i + 1]);
                swaps++;
            }
        }
    }
    // printf("Number of swaps: %d\n", swaps);
    // printf("Number of comparisons: %d\n", comparisons);
}

// Swap contents of two strings
void swapStrings(char *elemPtr1, char *elemPtr2) {
    char hold[STR_LEN];
    strcpy(hold, elemPtr1);
    strcpy(elemPtr1, elemPtr2);
    strcpy(elemPtr2, hold);
}

// convert the timestamp to seconds elapsed
// TODO Address number of days in months - currently assumes 30
// TODO Account for leap years
int timestampToSeconds(char *timestamp) {
    int year, month, day, hour, minute, second;
    int result = 0;
    sscanf(timestamp, "%2d/%2d/%4d-%2d:%2d:%2d", &day, &month, &year, &hour, &minute, &second);
    result = result + second;
    result = result + (minute * 60);
    result = result + (hour * 60 * 60);
    result = result + ((day - 1) * 60 * 60 * 24);
    result = result + ((month - 1) * 60 * 60 * 24 * 30);
    result = result + ((year - 2000) * 31557600);
    return result;
}

void writeArrayToFile(char stringArray[][STR_LEN], char *output_name) {
    FILE *outPtr;

    if ((outPtr = fopen(output_name, "w")) == NULL) {
        printf("File can not be opened.\n");
    } else {
        for (int i = 0; i < 50; i++) {
            fprintf(outPtr, "%s\n", stringArray[i]);
        }
        fclose(outPtr);
    }
}
// returns true if timestamp year matches specified year
int yearMatches(int yearToMatch, char *timestamp) {
    int year, month, day, hour, minute, second;
    sscanf(timestamp, "%2d/%2d/%4d-%2d:%2d:%2d", &day, &month, &year, &hour, &minute, &second);
    if (year == yearToMatch) {
        return 1;
    }
    return 0;
}