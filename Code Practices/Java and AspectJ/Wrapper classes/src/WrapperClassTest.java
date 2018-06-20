public class WrapperClassTest {
    public static void inc(Integer in){
        in = in + 1;
    }
    public static void main(String[] args){
        Integer i = 7;
        inc(i);
        System.out.println(i);
    }
}