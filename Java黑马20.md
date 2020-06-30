[TOC]



# Java黑马20

## JavaSE基础

### 常用API

#### 日期类

##### Date类

###### 1、无参构造方法——public Date()

分配一个Date对象，并初始化，以便它代表它被分配的时间，精确到毫秒

``` java
Date d=new Date();
System.out.println(d);//输出Sun Aug 09 09:29:39 CST 2020，说明println中的toStirng被重写了
```

###### 2、无参构造方法——public Date(long date)

分配一个Date对象，并将其初始化为表示从标准基准时间起指定的毫秒数

``` java
Date d=new Date(1000*60*60);//基准时间后一个小时
System.out.println(d);//输出Thu Jan 01 09:00:00 CST 1970，因为时区的原因所以是09点而不是01点
```

###### 3、public long getTime()

获取的是日期对象从1970年1月1日00:00:00到现在的毫秒值。

``` java
//创建一个日期类对象
Date d=new Date();
//getTime输出的是毫秒值，通过运算处理输出当前时间距离1970年的年数
System.out.println(d.getTime()*1.0/1000/60/60/24/365+"years");
```

###### 4、public void setTime(long time)

将时间设置为1970年1月1日00:00:00加上给定的毫秒值后的时间

``` java
Date d=new Date();
long time1=1000*60*60;
d.setTime(time1);
System.out.println(d);//Thu Jan 01 09:00:00 CST 1970,because of the timezone
long time2=System.currentTimeMillis();//get current time presented by millis
d.setTime(time2);
System.out.println(d);//Tue Jun 30 16:09:39 CST 2020 output the current time, because d was set to currentTimeMillis
```

##### SimpleDateFormat类

是一个具体的类，可以以区域设置敏感的方式**格式化和解析日期**

日期和时间格式又日期和时间模式字符串指定，在日期和时间模式字符串中，从‘A’到‘Z’以及从‘a’到‘z’引号的字母被解释为表示日期或时间字符串的组件的模式字母。

###### 1、无参构造方法——public SimpleDateFormat()

构造一个`SimpleDateFormat`，使用默认模式和日期格式

###### 2、有参构造方法——public SimpleDateFormat(String pattern)

构造一个`SimpleDateFormat`，使用给定的模式和默认的日期格式

###### 4、格式化方法——public final *String* format(*Date* date)

将日期格式化成日期/时间字符串，从**Date到String**

``` java
Date d=new Date();

//无参构造方法得到模式化字符串
SimpleDateFormat sdf1=new SimpleDateFormat();
String s1=sdf1.format(d);
System.out.println(s1);//输出2020/5/6 上午10:59

//有参构造方法得到的自定义格式的模式化字符串
SimpleDateFormat sdf2=new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
String s2=sdf2.format(d);
System.out.println(s2);//输出2020年05月06日 10:59:45
```

###### 5、解析方法——public *Date* parse(*String* source)

从给定字符串的开始解析文本以生成日期，从**String到Date**

``` java
public static void main(String[] args) throws ParseException //必须要抛出异常
{
    String s="2048-08-09 11:11:11";
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//sdf中的格式如果匹配了字符串s，则通过parse解析为原始的Date对象
    Date d=sdf.parse(s);
    System.out.println(d);//输出Sun Aug 09 11:11:11 CST 2048
}
```

##### 案例：日期工具类

``` java
//日期工具类
public class DateUtils {
    private DateUtils() {}
    /*
        把日期转为指定格式的字符串
        返回值类型：String
        参数：Date date, String format
     */
    public static String dateToString(Date date, String format) {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        String s = sdf.format(date);
        return s;
    }
    /*
        把字符串解析为指定格式的日期
        返回值类型：Date
        参数：String s, String format
     */
    public static Date stringToDate(String s, String format) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        Date d = sdf.parse(s);
        return d;
    }
}
//测试类
public class DateDemo {
    public static void main(String[] args) throws ParseException {
        //创建日期对象
        Date d = new Date();

        String s1 = DateUtils.dateToString(d, "yyyy年MM月dd日 HH:mm:ss");
        System.out.println(s1);

        String s2 = DateUtils.dateToString(d, "yyyy年MM月dd日");
        System.out.println(s2);

        String s3 = DateUtils.dateToString(d, "HH:mm:ss");
        System.out.println(s3);
        System.out.println("--------");

        String s = "2048-08-09 12:12:12";
        Date dd = DateUtils.stringToDate(s, "yyyy-MM-dd HH:mm:ss");
        System.out.println(dd);
    }
}
```

##### Calendar类   

Calendar类为某一时刻和一组日历字段之间的转换提供了一些方法，并位操作日历字段提供了一些方法

Calendar提供了一个类方法getInstance用于获取Calendar对象，其日历字段已使用当前日期和时间初始化：

`Calendar rightNow= Calendar. getinstance();`

###### 1、public int get(int field)

返回给定日历字段的值

``` java
//用当前日期和时间初始化由getInstance得到的Calendar对象
Calendar c = Calendar.getInstance();
System.out.println(c);
//获取Calendar对象的年月日值
int year = c.get(Calendar.YEAR);
int month = c.get(Calendar.MONTH)+1;//MONTH从0开始，所以加1
int date = c.get(Calendar.DATE);
System.out.println(year + "年" + month + "月" + date + "日");//输出2020年5月30日
```

###### 2、public abstract void add(int field,int amount)

根据日历的规则，将指定的时间量添加或减去给定的日历字段

``` java
Calendar c=Calendar.getInstance();
//10年后的5天前
c.add(Calendar.YEAR,10);
c.add(Calendar.DATE,-5);
//获取Calendar对象的年月日值
int year = c.get(Calendar.YEAR);
int month = c.get(Calendar.MONTH)+1;//MONTH从0开始，所以加1
int date = c.get(Calendar.DATE);
System.out.println(year + "年" + month + "月" + date + "日");//输出2030年6月25日
```

###### 3、public final void set(int year,int month,int date)

设置当前日历的年月日

``` java
c.set(2048, 12, 11);
int year = c.get(Calendar.YEAR);
int month = c.get(Calendar.MONTH) + 1;
int date = c.get(Calendar.DATE);
System.out.println(year + "年" + month + "月" + date + "日");//输出2049年1月11日
```

##### 案例：二月天

获取任意一年的二月有多少天

``` java
//键盘录入任意的年份
Scanner sc = new Scanner(System.in);
System.out.println("请输入年：");
int year = sc.nextInt();

//设置日历对象的年、月、日
Calendar c = Calendar.getInstance();
c.set(year, 2, 1);

//3月1日往前推一天，就是2月的最后一天
c.add(Calendar.DATE, -1);

//获取这一天输出即可
int date = c.get(Calendar.DATE);
System.out.println(year + "年的2月份有" + date + "天");

```

### 异常

#### JVM的默认处理方案

如果程序出现了问题，我们没有做任何处理，最终JVM会做默认的处理：

1. 把异常的名称，异常原因及异常出现的位置等信息输出在了控制台
2. 程序停止执行

#### 异常处理

如果程序出现了问题，我们需要自己来处理，有两种方案

+ try ... catch ...
+ throws

##### try ... catch ...

格式：

``` java
try{
    可能出现异常的代码;
}catch(异常类名 变量名){
    异常处理代码;
}
```

**执行流程：**

1. 程序从try里面的代码开始执行
2. 出现异常，会自动生成一个异常类对象，该异常对象将被提交给Java运行时系统
3. 当Java运行时系统接收到异常对象时，会到catch中去找匹配的异常类，找到后进行异常的处理执行完毕之后，程序还可以继续往下执行

``` java
public static void main(String[] args) {
    System.out.println("开始");
    method();
    System.out.println("结束");
}

public static void method() {
    try {
        int[] arr = {1, 2, 3};
        System.out.println(arr[3]);
        System.out.println("这里能够访问到吗");
    } catch (ArrayIndexOutOfBoundsException e) {
        //System.out.println("你访问的数组索引不存在，请回去修改为正确的索引");
        e.printStackTrace();
    }
}

```

##### Throwable的成员方法

###### public String getMessage()

返回此throwable的详细消息字符串

``` java
try{
    ...
}catch (ArrayIndexOutOfBoundsException e){
    System.out.println(e.getMessage());
	//输出Index 3 out of bounds for length 3
}
```

###### public String toString()

返回此可抛出的简短描述

``` java
try{
    ...
}catch (ArrayIndexOutOfBoundsException e){
    System.out.println(e.toString());   	//输出java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
}
```

###### public void printStackTrace()

把异常的错误信息输出在控制台上

``` java
try{
    ...
}catch (ArrayIndexOutOfBoundsException e){
    e.printStackTrace();
  /*输出java.lang.ArrayIndexOutOfBoundsException: Index 3 out of bounds for length 3
  at com.itheima_02.ExceptionDemo02.method(ExceptionDemo02.java:18)
  at com.itheima_02.ExceptionDemo02.main(ExceptionDemo02.java:11)*/

}
```

##### 编译时异常和运行时异常的区别

Java中的异常被分为两大类：**编译时异常**和**运行时异常**，也被称为**受检异常**和**非受检异常**

所有的<u>RuntimeException类及其子类</u>被称为运行时异常，其他的异常都是编译时异常

**编译时异常**：必须显示处理，否则程序就会发生错淏，无法通过编译

``` java
//编译时异常
public static void method2() {
    try {
        String s = "2048-08-09";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date d = sdf.parse(s);//可以正常运行，但是必须要用先处理异常，只是系统提示可能会出错，所以需要处理
        System.out.println(d);
    } catch (ParseException e) {
        e.printStackTrace();
    }
}
```

**运行时异常**：无需显示处理，也可以和编译时异常样处理

``` java
//运行时异常
public static void method() {
    try {
        int[] arr = {1, 2, 3};
        System.out.println(arr[3]);//不用try...catch处理也能通过编译，但是运行时会出错
    } catch (ArrayIndexOutOfBoundsException e) {
        e.printStackTrace();
    }
}
```

##### 异常处理之throws

虽然我们通过try...catch...可以对异常进行处理，但是并不是所有的情况我们都有权限进行异常的处理，也就是说，有些时候可能出现的异常是我们处理不了的，这个时候该怎么办呢？
针对这种情况，Java提供了throws的处理方案

格式：

`throws 异常类名`

**注意：这个格式是跟在方法的括号后面的**

- 编译时异常必须要进行处理，两种处理方案：try...catch...或者throws，如果采用throws这种方案，将来谁调用谁处理

  ``` java
  //编译时异常虽然可以抛出，但是还是要用try catch处理
  try {
          method2();
  }catch (ParseException e) {
          e.printStackTrace();
      }
      System.out.println("结束");
  }
  
  //编译时异常
  public static void method2() throws ParseException {
      String s = "2048-08-09";
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
      Date d = sdf.parse(s);
      System.out.println(d);
  }
  
  ```

- 运行时异常可以不处理，出现问题后，需要我们回来修改代码

  ``` java
  //运行时异常
  public static void method() throws ArrayIndexOutOfBoundsException {
      int[] arr = {1, 2, 3};
      System.out.println(arr[3]);
  }
  
  ```

##### 自定义异常

  格式：

``` java
public class 异常类名 extends Exception{
    无参构造
    带参构造
}
```

范例：

``` java
public class Teacher {
    //用throws并不代表方法体一定会出现异常
    public void checkScore(int score) throws ScoreException {
        if(score<0 || score>100) {
            //用throw表明一定抛出了某种异常
			//throw new ScoreException();
            //因为ScoreException直接继承自Exception，表示编译时异常，因此方法名后需要用throws抛出
            throw new ScoreException("你给的分数有误，分数应该在0-100之间");
        } else {
            System.out.println("成绩正常");
        }
    }
}
//直接继承自Exception就是checked exception，继承自RuntimeException就是runtime的exception
public class ScoreException extends Exception {
    public ScoreException() {}
    public ScoreException(String message) {
        super(message);
    }
}
public class Demo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("请输入分数：");

        int score = sc.nextInt();

        Teacher t = new Teacher();
        try {
            t.checkScore(score);
        } catch (ScoreException e) {
            e.printStackTrace();
        }
    }
}
```

##### throws和throw的区别

###### throws

- 用在**方法声明后面**，跟的是**异常类名**
- 表示抛出异常，由该**方法的调用者来处理**
- 表示出现异常的一种可能性，并不一定会发生这些异常

###### throw

- 用在**方法体内**，跟的是**异常对象名**
- 表示抛出异常，由**方法体内的语句处理**
- 执行throw一定抛出了某种异常





 