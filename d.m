function [y1] = d(x,y)
y=[64 67 69 71 71.9 73.9 75.45 76.44 77.40 78.39 79.25 80.95 81.65 81.55 81.95 82.125 83.124 83.126 83.121 83.1244 83.1300 83.1311 83.1345 83.1400 83.4412 83.7416 83.9419 84.1420]; 
x=(64:4:172);
display(size(x));
display(size(y));
dx=gradient(x);
dy=gradient(y);
  check1=0;
  %plot(x,y);
  %plot(dx,d);
  check2=0;
  fgragient=dy./dx;
  count=0;
  z=[];
  for m=fgragient
      count=count+1;
      if count>=size(x)
         % bar(fgragient')
          z=tansig_apply(z)
          bar(z)
          
          break
      
      else
          check1=fgragient(count)-fgragient(count+1);%%checking for the diff between this and the last loop
                  % check2=fgragient(m)-fgragient();
                  disp(check1)
                      z(count)=fgragient(1)-check1/fgragient(1)*100
                     z(count)=check1
      end
      
  end
  
                  
  y1=z;
end


function a = tansig_apply(n,~)
			a = 1 ./ (1+ exp(-n));
end