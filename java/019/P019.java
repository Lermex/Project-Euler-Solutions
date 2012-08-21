public class P019 {

    public static void main(String[] args) {

        int currentDayOfWeek = 2; // January 1 1901 was a Tuesday
        int sundays = 0;

        for (int y = 1901; y <= 2000; y++) {
            for (int m = 1; m <= 12; m++) {
                currentDayOfWeek += daysInMonth(m, y) % 7;
                if (currentDayOfWeek > 7) {
                    currentDayOfWeek -= 7;
                }
                if (currentDayOfWeek == 7) {
                    sundays++;
                }
            }
        }

        System.out.println("Sundays: " + sundays);
    }

    private static int daysInMonth(int month, int year) {
        final int[] regulars = new int[] { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

        if (month == 2 && isLeapYear(year)) {
            return 29;
        } else {
            return regulars[month - 1];
        }
    }

    private static boolean isLeapYear(int year) {
        if (year % 100 == 0) {
            return year % 400 == 0;
        } else {
            return year % 4 == 0;
        }
    }
}

