declare 
	cursor curr is
	select * from part1;
	counter int;
	rows part1%rowtype;

begin
	open curr;
	loop
		fetch curr into rows;
		exit when curr%notfound;	

		insert into copy_part2 values(rows.pno,rows.pname,rows.colour);
	end loop;

	counter:=curr%rowcount;

	close curr;
	dbms_output.put_line(counter||'rows inserted into table table copy_part2');

end;
/
