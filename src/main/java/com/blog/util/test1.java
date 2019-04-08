package com.blog.util;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;

public class test1 {


    public boolean Solution(List list){
        int size = list.size();
        HashSet<Character> set = new HashSet<>();

        for (int i = 0; i < size; i++){
            char c = (char)list.get(i);
            if (set.contains(c)){
                return false;
            }else {
                set.add(c);
            }
        }

        return true;
    }

    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        String c = in.next();
        StringBuffer sb = new StringBuffer(c);
        ArrayList<Character> list = new ArrayList<>();
        for (int i = 0; i < sb.length(); i++){
            if (sb.charAt(i) != ','){
                list.add(sb.charAt(i));
            }
        }

        test1 test1 = new test1();

        System.out.println(test1.Solution(list));

    }
}
