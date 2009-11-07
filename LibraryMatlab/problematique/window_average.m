function data = window_average(x, window_size)
    data = x;
    wsize = window_size / 2;
    for i = 1 : wsize
        data(i) = mean(x(1):x(i));
    end
    for i = wsize+1 : length(x) - wsize
        data(i) = mean(x(i - wsize: i + wsize));
    end
    for i = length(x) - wsize + 1 : length(x)
        data(i) = mean(x(i : length(x)));
    end