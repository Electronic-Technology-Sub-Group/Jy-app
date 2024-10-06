package kjj;

import java.util.HashMap;
import java.util.HashSet;

public class test {
    public static void main(String[] args) {
        /*给定一个大小为 n 的数组 nums ，返回其中的多数元素。多数元素是指在数组中出现次数 大于 ⌊ n/2 ⌋ 的元素。

        你可以假设数组是非空的，并且给定的数组总是存在多数元素*/


        int[]nums = new int[1000];
        HashMap<Integer,Integer> hashMap = new HashMap<>();

        for (int num : nums) {
            if (hashMap.get(num) == null){
            hashMap.put(num,1);
        }else {
                int i = hashMap.get(num) + 1;
                hashMap.put(num,i);
            }


    }
        /*HashSet hashSet = new HashSet();

        hashSet.add("111");*/


}
