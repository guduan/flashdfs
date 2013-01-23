function checkfile(filename)
% when use, filename must be string, like:  'test.ele'
while(1)
    if (exist(filename,'file'))
        aa=[filename,' is READY'];
        disp(aa);
        break
    else
        pause(2)
        aa=['Please wait for ',filename];
        disp(aa);
        continue
    end
end