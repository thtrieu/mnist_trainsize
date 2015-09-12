

result_p = zeros(6,6);

fprintf('Loading Data ...\n')
X_ = loadMNISTImages('t10k-images.idx3-ubyte')';
y_ = loadMNISTLabels('t10k-labels.idx1-ubyte');

for i = 1:36
	load(num2str(i));
	pred = predict(Theta1, Theta2, X_);
	result_p(floor((i-1)/6)+1,mod(i,6)+6*(mod(i,6)==0)) = mean(double(pred == y_));
	save('result_p.mat','result_p');
end