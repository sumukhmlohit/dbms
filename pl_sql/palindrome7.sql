declare
	n number(10);
	i number(10);
	sum1 number(10);
	k number(10);

begin
	sum1:=0;
	n:=&n;
	k:=n;
		while(n>0)
		loop
			i:=mod(n,10);
			sum1:=(sum1*10)+i;
/*number truncated to certain decimal places and returns numeric values*/
			n:=trunc(n/10);
		end loop;
		
	if(k=sum1) then
		dbms_output.put_line('number is palindrome');
	else
		dbms_output.put_line('number is not a palindrome');
	end if;

end;
/
