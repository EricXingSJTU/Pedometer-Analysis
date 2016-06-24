%--------------------------------------------------------------------------
%    load data
%--------------------------------------------------------------------------
data_shake = importdata('����.txt');
[raw, col] = size(data_shake);
window = 4;

%--------------------------------------------------------------------------
%    original data
%--------------------------------------------------------------------------
figure('NumberTitle', 'off', 'Name', '��������');
hold on;
plot(data_shake);
title('����');

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
figure('NumberTitle', 'off', 'Name', '����ƽ��');
hold on;
plot(data_shake_smooth);
title('����ƽ��');
