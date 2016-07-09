newf = figure;
for i = 2:5
    for j = 2:5
        if(i ~= j)
            
            scatter(data(:,i),data(:,j), 30,data(:,1),'filled')
            hold on
            
        end
    end
end
set(gca, 'XTick', []);
set(gca, 'YTick', []);
saveas(newf,'data-train.jpg')
% print(newf, '-jpg', 'data_train.jpg')




