import std.net.curl, std.stdio;
import std.regex;
import std.conv;
import std.string;
 
void main() {
    //fech data
    auto url = "http://novel.hongxiu.com/a/263958/";
    auto content = cast(string) get(url);
    //regex data
    auto  r = regex(r"http://w.hongxiu.com/(\d+)/index.html");  
    auto match_arr = matchFirst(content,r);
    int s_bid = 0;
    if(!match_arr.empty){
        auto s_b = match_arr[1];
        s_bid = to!int(s_b);
    }   
    writeln(s_bid);
    auto filename = "s_bid.log";
    File file = File(filename, "w+");
    file.writeln("s_bid is ");
    file.writeln(s_bid);
    file.close();
    file = File(filename,"r");
    while(!file.eof()){
    	string line = strip(file.readln());
    	writeln(line);
    }
    file.close();
}
