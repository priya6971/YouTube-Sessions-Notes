
class bitManipulation {
    // time complexity: O(n)
    // space complexity: O(1)
    public static int checkOddFreq(int[] arr){
        int xor = 0;
        for(int ele: arr){
            xor = xor ^ ele;
        }
        // element which appears odd number of times
        return xor;
    }

    // time complexity: O(1)
    // space complexity: O(1)
    public static boolean checkPowerOfTwo(int num){
        if(num == 0){
            return false;
        }

        else{
            return ((num & num-1) == 0);
        }
    }
    
    // time complexity: O(log n)
    // space complexity: O(1)
    public static int countSetBits(int num){
        int count = 0;
        while(num > 0){
            count += num & 1;
            // right shift operator - division by 2
            num >>= 1;
        }
        // number of set bits in a given number
        return count;
    }
    public static void main(String[] args) {
        /* 
        int[] arr = {2, 2, 4, 4, 4, 6, 6, 5, 5, 4, 2};
        int oddFreqElem = checkOddFreq(arr);
        System.out.println("The odd appearing element in an array is "+oddFreqElem);
      
        int num = 31;
        if(checkPowerOfTwo(num)){
            System.out.println("True");
        }
        else{
            System.out.println("False");
        }
          */

          int num = 5;
          int result = countSetBits(num);
          System.out.println("The count of the number of set bits "+result);

    }
}
