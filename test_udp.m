%% MATLAB Unity3D UDP Connection
% Sandra Fang
% 2016


% Create UDP connection - need one port for reading and another for receiving 
t = udp('localhost', 8000, 'LocalPort', 8001);
fopen(t);
disp(t.status);
i = 0;

while(1)
   % Send messages to localhost's port
   fwrite(t, (65+i):73); 
   % Read incoming messages from LocalPort
   A = fread(t, 10);
   disp(A);
   i = i+1;
   if i == 9
       i=0;
   end
end

%remember to close the connection using fclose(t)