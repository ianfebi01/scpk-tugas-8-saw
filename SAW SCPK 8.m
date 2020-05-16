x = [80 12000 2500 90 95; 70 13000 4500 95 90; 40 15000 1000 75 98; 50 10000 7000 80 70];
k = [1 0 0 1 0];
w = [0.35,0.30,0.10,0.20,0.10];
[m n] = size(x);
R = zeros (m,n);
Y = zeros (m,n);
for j=1:n,
    if k(j)==1,
        R(:,j)=x(:,j)./max(x(:,j));
    else
        R(:,j)=min(x(:,j))./x(:,j);
    end;
end;
for i=1:m,
    V(i) = sum(w.*R(i,:));
end;
disp('Mi Ayam Ngeposari | Mi Ayam Tingtong | Soto Vatikan | Burjo Usop');
disp(V);
