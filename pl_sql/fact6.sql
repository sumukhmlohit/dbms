declare
	t number:=&t;
	fact1 number;

PROCEDURE procedure_fact(n in number, fact out number) is
/* in parameters referenced by procedure and value can't be overwritten by procedure */
/*out parameters can't bereferenced by procedure but value can be overwritten by procedure */
/*out basically returns from procedure*/
i number;
/*beginning of procedure*/
begin
	fact:=1;
	for i in 1..n
	loop
		fact:=fact*i;
	end loop;
end;
/*end of procedure*/
begin

	procedure_fact(t,fact1);
	dbms_output.put_line('answer is'||fact1);
end;
/
