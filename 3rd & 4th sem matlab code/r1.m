
clc; clear all;
Img= imread('test photos/WIN_20220313_12_14_25_Pro.jpg');
subplot(2,2,1); imshow(Img);
ImgN= imnoise(Img, 'Salt & Pepper', 0.8);
subplot(2,2,2); imshow(ImgN);
[row col colr]= size(Img);
ImgNp= uint8(zeros(row+2, col+2,colr));
ImgNp(2:row+1, 2:col+1, :)= ImgN;
subplot(2,2,3); imshow(ImgNp);
for q= 1:colr
for i=2:1:row+1
    for j=2:col+1
        if ((ImgNp(i,j,q)==255)||(ImgNp(i,j,q)==0))  
        wind= ImgNp(i-1:i+1,j-1:j+1,q);
        p=0;wind1=[];
        for k=1:3
            for l= 1:3
                if((wind(k,l)==255)&&(wind(k,l)==0))
                    p=p+1;
                    wind1(p)= wind(k,l);
                end;
            end
        end
        if (isempty(wind1))
            pix= mean(mean(wind));
        else
            pix= median(wind1);
        end
        ImgNp(i,j,q)= pix;  
        end
    end
end
end
subplot(2,2,4); imshow(uint8(ImgNp));
