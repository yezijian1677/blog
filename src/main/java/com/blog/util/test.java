package com.blog.util;

import java.util.Scanner;
import java.util.Stack;

public class test {

    public int Solution(int len, String str){

        Stack<Character> stack = new Stack<>();
        for (int i = 0; i < len; ++i){
            char x = str.charAt(i);
            if (stack.isEmpty()){
                stack.push(x);
            }else {
                char c = stack.peek();
                if (x == c){
                    stack.push(x);
                }else {
                    stack.pop();
                }
            }

        }

        return stack.size();

    }


    public static void main(String[] args){

        Scanner in = new Scanner(System.in);

        int len = in.nextInt();
        String str = in.nextLine();
        test solution1 = new test();

        System.out.println(solution1.Solution(len, str));
    }
}
