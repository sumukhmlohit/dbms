declare 	
	cursor cc is
		select * from branch;
			v_cc cc%ROWTYPE;

begin
	open cc;
		loop 
			fetch cc into v_cc;

			exit when cc%NOTFOUND;

			dbms_output.put_line('code'||' '||v_cc.code||' '||'name'||v_cc.name||' '||'assets'||' '||v_cc.assets);

		end loop;

	close cc;
end;
/
		
declare 	
	cursor cc is
		select * from customer;
			v_cc cc%ROWTYPE;

begin
	open cc;
		loop 
			fetch cc into v_cc;

			exit when cc%NOTFOUND;

			dbms_output.put_line('ssn'||' '||v_cc.ssn||' '||'name'||v_cc.name||' '||'place'||' '||v_cc.place);

		end loop;

	close cc;
end;
/
	
declare 	
	cursor cc is
		select * from account;
			v_cc cc%ROWTYPE;

begin
	open cc;
		loop 
			fetch cc into v_cc;

			exit when cc%NOTFOUND;

			dbms_output.put_line('acc no'||' '||v_cc.accno||' '||'balance:'||v_cc.balance||' '||'ssn:'||' '||v_cc.ssn||'code is:'||v_cc.balance);

		end loop;

	close cc;
end;
/
	

