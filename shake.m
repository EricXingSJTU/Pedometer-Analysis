%--------------------------------------------------------------------------
%    load data
%--------------------------------------------------------------------------
data_shake = importdata('抖动.txt');
[raw, col] = size(data_shake);
window = 4;

%--------------------------------------------------------------------------
%    original data
%--------------------------------------------------------------------------
figure('NumberTitle', 'off', 'Name', '抖动数据');
hold on;
plot(data_shake);
title('抖动');

%--------------------------------------------------------------------------
%    smoothing data
%--------------------------------------------------------------------------
data_shake_smooth = [];
for idx = 1: (raw - window + 1)
    tmp = 0;
    for num = 0: (window - 1)
        tmp = tmp + data_shake(idx + num);
    end
    data_shake_smooth = [data_shake_smooth; tmp / window];
end
figure('NumberTitle', 'off', 'Name', '抖动平滑');
hold on;
plot(data_shake_smooth);
title('抖动平滑');
