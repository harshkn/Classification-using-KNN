newf = figure;
for i = 2:5
    for j = 2:5
        if(i ~= j)
            
            scatter(data(:,i),data(:,j), 30,data(:,1),'filled')
            hold on
        end
    end
end
print(newf, '-depsc', 'data_train.eps')




