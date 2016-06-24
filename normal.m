%--------------------------------------------------------------------------
%    load data
%--------------------------------------------------------------------------
data_normal = importdata('正常走路.txt');
[raw, col] = size(data_normal);
window = 4;

%--------------------------------------------------------------------------
%    original data
%--------------------------------------------------------------------------
figure('NumberTitle', 'off', 'Name', '正常数据');
hold on;
plot(data_normal);
title('正常');

%--------------------------------------------------------------------------
%    smoothing data
%--------------------------------------------------------------------------
figure('NumberTitle', 'off', 'Name', '正常平滑');
hold on;
for window = 2:10
data_normal_smooth = [];
for idx = 1: (raw - window + 1)
    tmp = 0;
    for num = 0: (window - 1)
        tmp = tmp + data_normal(idx + num);
    end
    data_normal_smooth = [data_normal_smooth; tmp / window];
end
subplot(3, 3, window - 1);
plot(data_normal_smooth);
title(['正常平滑 window=', num2str(window)]);
end
