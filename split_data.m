function [data_train, data_test] = split_data(data, prop)
num_points = size(data,1);
split_point = round(num_points*prop);
seq = randperm(num_points);
data_train = data(seq(1:split_point),:);
data_test = data(seq(split_point+1:end),:);