begin
	update employee2
	set salary=(1.15*salary) where dno=10;
	dbms_output.put_line('number of rows updated are'||sql%rowcount);
end;
/
