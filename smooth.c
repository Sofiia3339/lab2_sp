#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define N 4000000

static void fill_data(uint32_t *a)
{
    uint32_t state = 20261102u;

    for (size_t i = 0; i < N; i++) {
        state = state * 1664525u + 1013904223u;
        a[i] = state >> 22;
    }
}

__attribute__((noinline))
static void smooth(const uint32_t *a, uint32_t *b)
{
    b[0] = a[0];
    b[1] = a[1];

    for (size_t i = 2; i < N - 2; i++) {
        b[i] = (a[i - 2] + a[i - 1] + a[i]
              + a[i + 1] + a[i + 2]) / 5u;
    }

    b[N - 2] = a[N - 2];
    b[N - 1] = a[N - 1];
}

static unsigned long long checksum(const uint32_t *a)
{
    unsigned long long value = 14695981039346656037ull;

    for (size_t i = 0; i < N; i++) {
        value ^= a[i];
        value *= 1099511628211ull;
    }

    return value;
}

int main(int argc, char **argv)
{
    char *end = NULL;
    long passes = 200;

    if (argc > 2) {
        fprintf(stderr, "Usage: %s [passes]\n", argv[0]);
        return 1;
    }

    if (argc == 2) {
        passes = strtol(argv[1], &end, 10);
        if (*argv[1] == '\0' || *end != '\0'
            || passes < 1 || passes > 100000) {
            fprintf(stderr, "Passes must be from 1 to 100000\n");
            return 1;
        }
    }

    uint32_t *a = malloc(N * sizeof(*a));
    uint32_t *b = malloc(N * sizeof(*b));

    if (a == NULL || b == NULL) {
        fprintf(stderr, "Cannot allocate memory\n");
        free(a);
        free(b);
        return 1;
    }

    fill_data(a);

    for (long k = 0; k < passes; k++) {
        smooth(a, b);
        uint32_t *temporary = a;
        a = b;
        b = temporary;
    }

    printf("Samples: %d\n", N);
    printf("Passes: %ld\n", passes);
    printf("Checksum: %llu\n", checksum(a));

    free(a);
    free(b);
    return 0;
}
