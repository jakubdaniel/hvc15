@SPL("for n in 100, 200, 500 SELF(n) < java.util.Arrays#sort(n)")
public static void mySort(int[] data) {
    ...
}
