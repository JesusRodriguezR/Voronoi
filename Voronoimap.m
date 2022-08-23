n = 256;
voronoi = zeros(n,n,3);
dvoronoi = double(voronoi);
x=randi([1,n],2,16);
answer = zeros(n,n,16);
temp = 363;
pnum = 1;
color = randi ([0,256],1,16,3);

for i = 1 : n
    for j = 1 : n
        
        for p = 1 : 16

        if norm([i j]-[x(1,p) x(2,p)]) < temp 
            temp = norm([i j]-[x(1,p) x(2,p)]);
            pnum = p;
        end


       
        end
        
        dvoronoi(i,j,1) = color(1,pnum,1);
        dvoronoi(i,j,2) = color(1,pnum,2);
        dvoronoi(i,j,3) = color(1,pnum,3);
        temp = 363;

    end
end
result = uint8(dvoronoi);
imshow(result)

