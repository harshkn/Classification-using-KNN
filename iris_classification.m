clear variables
%% Classification of iris data using K-Nearest neighbors
data = read_data('Fisher.txt');
[data_train, data_test] = split_data(data, 0.7);
X_train = data_train(:,2:5);
Y_train = data_train(:,1);

X_test = data_test(:,2:5);
Y_test = data_test(:,1);

scatter_plot()

for n = 1:7

mdl = fitcknn(X_train,Y_train,'NumNeighbors',n);

% rloss = resubLoss(mdl);
% cvmdl = crossval(mdl);
% kloss = kfoldLoss(cvmdl);

flwrClass = predict(mdl,X_test);
correct = find(flwrClass == Y_test);
accuracy = numel(correct)/numel(Y_test);

fprintf('Accuracy is %f percent for %d neighbours \n',accuracy,n);
end
