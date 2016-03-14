import std.stdio;
import std.math;
import std.algorithm;
import std.uni;

//dmd -de -w -unittest
int main(char[][] args) {
	writeln("hello world\n");	
	writeln("type :",int.stringof);
	writeln("len of int is :",int.sizeof);
	writeln("min is :",int.min);
	writeln("max is :",int.max);
	writeln("initial value :",int.init);
	writeln("init size_t:",size_t.stringof);
	
	int a = 11;
	stdout.writeln("a is ",a);

	//readf("%s",&a);
	//writeln("read from file a is ",a);

	string name = "毕秋实";
	if(name == "毕秋爽"){
		writeln("毕秋爽");
	}else if(name == "毕秋实"){
		writeln("毕秋实");
	}else{
		writeln("nothing");
	}
	int a11 = 0;
	int sum = 0;
	while(a11 < 100){
		if(a11 == 50 ){
			++a11;
			continue;
		}
		sum += a11;
		++a11;
	}

	writef("sum is %d\n",sum);
	double zero = 0;
	double init_data = double.infinity;
	write(zero,init_data);
	writeln(double.nan);
	writeln(float.stringof,float.dig,float.min_normal,float.max,float.min_normal);

	real max_real = real.max;
	writeln("max overflow:",max_real*10);
	auto dnan = double.nan;
	writeln(isNaN(dnan));



    //int[] array = [ 4, 3, 1, 5, 2 ];
    int array[] = [ 4, 3, 1, 5, 2 ];
    reverse(array);
    writeln(array,array.length);



    writeln("Is ğ lowercase? ", isLower('ğ'));
    writeln("Is Ş lowercase? ", isLower('Ş'));

    writeln("Is İ uppercase? ", isUpper('İ'));
    writeln("Is ç uppercase? ", isUpper('ç'));

    writeln("Is z alphanumeric? ",       isAlpha('z'));
    writeln("Is \&euro; alphanumeric? ", isAlpha('\&euro;'));

    writeln("Is new-line whitespace? ",  isWhite('\n'));
    writeln("Is underline whitespace? ", isWhite('_'));

    writeln("The lowercase of Ğ: ", toLower('Ğ'));
    writeln("The lowercase of İ: ", toLower('İ'));

    writeln("The uppercase of ş: ", toUpper('ş'));
    writeln("The uppercase of ı: ", toUpper('ı'));




	return 0;
}