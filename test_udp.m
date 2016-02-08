t = udp('localhost', 8000, 'LocalPort', 8001);
fclose(t);
disp(t.status);
fopen(t);
disp(t.status);
i = 0;
while(1)
   fwrite(t, (65+i):73); 
   A = fread(t, 10);
   disp(A);
   i = i+1;
   if i == 9
       i=0;
   end
end

