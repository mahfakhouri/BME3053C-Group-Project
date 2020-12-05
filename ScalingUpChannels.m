%exclude blank background pixels
blank = length(find(R == 0 & G == 0 & B == 0));

%calculate average channel values
average_nonzero_R = sum(sum(R))/(h*w-blank);
average_nonzero_G = sum(sum(G))/(h*w-blank);
average_nonzero_B = sum(sum(B))/(h*w-blank);

%scale all pixels to some extent (these values are based off IDRiD_01 average values since
%that seemed to be easy to work with)
R = R*(130.75/average_nonzero_R);
G = G*(61.47/average_nonzero_G);
B = B*(28.35/average_nonzero_B);
fake_I = cat(3,R,G,B);
imshow(fake_I)