import mysql.common;
import mysql.connection;
import mysql.result;
import mysql.db;

import std.stdio;


ulong testExce(Connection cn,string sql){
	auto cmd = Command(cn);
    cmd.sql = sql;
    ulong rowsAffected;
    cmd.execSQL(rowsAffected);
    return rowsAffected;
}

ResultSet testRows()(Connection cn, string sql)
{
    auto cmd = Command(cn);
    cmd.sql = sql;

    return cmd.execSQLResult();
}

void testMysql(){
	string connStr = "host=localhost;port=3306;user=root;pwd=123456;db=test";
    auto mdb = new MysqlDB(connStr);
    auto con = mdb.lockConnection();
    scope(exit) con.close();

	//测试增删改查
	//add
	auto addSql = "insert into country(name,user_age,id)values('helloworld',59,1)";
	writeln("add data is ", testExce(con,addSql));
	//update
	auto updateSql = "update country set name = 'helloworld' where id=1 limit 1";
	writeln("update data is ", testExce(con,updateSql));
	//delte
	auto delSql = "delete from country  where id=1 limit 1";
	writeln("delete data is ", testExce(con,delSql));
	//select
	auto selSql = "select name,user_age,id from country";
    ResultSet rs = testRows(con,selSql);
    int i;
    auto keys = ["name","user_age","id"];
    for(i=0;i<rs.length;i++){
    	foreach(k,v;keys){
    		writef("%s:%s",v,rs[i][k]);
    	}
    	writeln("");
    }
    writeln(rs[0],rs[0][0],rs[0][1]);

}


int main(char[][] args) {

	testMysql();
	return 0;
}