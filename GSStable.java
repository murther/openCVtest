    /** Class GSStable **/
    import java.util.*;

    public class GSStable

    {

        private int N, engagedCount;

        private int[][] menPref;

        private int[][] womenPref;

        private int[] men;

        private int[] women;

        private int[] womenPartner;

        private boolean[] menEngaged;



        /** Constructor **/

        public GSStable(int[] m, int[] w, int[][] mp, int[][] wp)

        {
            N = mp.length;
            engagedCount = 0;
            men = m;
            women = w;
            menPref = mp;
            womenPref = wp;
            menEngaged = new boolean[N];
            womenPartner = new int[N];
              Arrays.fill(women,-1);
            calcMatches();
        }

        /** function to calculate all matches **/

        private void calcMatches()

        {
            while (engagedCount < N)
            {
                int free;
                for (free = 0; free < N; free++)
                    if (!menEngaged[free])
                        break;



                for (int i = 0; i < N && !menEngaged[free]; i++)

                {

                    int index = womenIndexOf(menPref[free][i]);

                    if (womenPartner[index] == -1)

                    {

                        womenPartner[index] = men[free];

                        menEngaged[free] = true;

                        engagedCount++;

                    }

                    else

                    {

                        int currentPartner = womenPartner[index];

                        if (morePreference(currentPartner, men[free], index))

                        {

                            womenPartner[index] = men[free];

                            menEngaged[free] = true;

                            menEngaged[menIndexOf(womenPartner[index])] = false;

                        }

                    }

                }

            }

            printCouples();

        }

        /** function to check if women prefers new partner over old assigned partner **/

        private boolean morePreference(int curPartner, int newPartner, int index)

        {

            for (int i = 0; i < N; i++)

            {

                if (womenPref[index][i]==(newPartner))

                    return true;

                if (womenPref[index][i]==(curPartner))

                    return false;

            }

            return false;

        }

        /** get men index **/

        private int menIndexOf(int arr)

        {

            for (int i = 0; i < N; i++)

                if (men[i]==arr)

                    return i;

            return -1;

        }

        /** get women index **/

        private int womenIndexOf(int arr)

        {

            for (int i = 0; i < N; i++)

                if (women[i]==arr)

                    return i;

            return -1;

        }

        /** print couples **/

        public void printCouples()

        {

            System.out.println("Couples are : ");

            for (int i = 0; i < N; i++)

            {

                System.out.println(womenPartner[i] +" "+ women[i]);

            }

        }

        /** main function **/

        public static void main(String[] args)

        {

            System.out.println("Gale Shapley Marriage Algorithm\n");

            /** list of men **/

            int[] m = {1, 2, 3, 4, 5};

            /** list of women **/

            int[] w = {1, 2, 3, 4, 5};



            /** men preference **/

            int[][] mp = {{5, 2, 3, 4, 1},

                             {2, 5, 1, 3, 4},

                             {4, 3, 2, 1, 5},

                             {1, 2, 3, 4, 5},

                             {5, 2, 3, 4, 1}};

            /** women preference **/

            int[][] wp = {{5, 3, 4, 1, 2},

                             {1, 2, 3, 5, 4},

                             {4, 5, 3, 2, 1},

                             {5, 2, 1, 4, 3},

                             {2, 1, 4, 3, 5}};



            GSStable gs = new GSStable(m, w, mp, wp);

        }

    }
