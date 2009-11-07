function datatest%     close all%     clear all%     clc    Fe = 2000;    f = 20;        falls = [...        '3ITB1A'; ...        '3ITB1B'; ...        '3ITB1C'; ...        '3ATF2A'; ...        '3ATF2B'; ...        '3ATF2C'; ...        '3SVF3A'; ...        '3SVF3B'; ...        '3SVF3C';];        non_falls = [...        '3ITB1D'; ...        '3ATF2D'; ...        '3NNC4A'; ...        '3NNC4B'; ...        '3NNC4C'; ...        '3NNC4D'];        figure    hold on        colours = 'rgbcmykrgbcmykrgbcmyk';        % Plot falls    for i = 1 : length(falls)        file = falls(i, :);        for j = 1:5            ext = sprintf('00%d', j);            data = load_file('Sujet_3', file, ext);        end                plot_data = data(:,3);        plot_data = downsample_signal(plot_data, f, Fe);        plot_data = diff(plot_data);        plot(plot_data, colours(i))    end        figure    hold on      % Plot non falls    for i = 1 : length(non_falls)        file = non_falls(i, :);        for j = 1:5            ext = sprintf('00%d', j);            data = load_file('Sujet_3', file, ext);        end        plot_data = data(:,3);        plot_data = downsample_signal(plot_data, f, Fe);        plot_data = diff(plot_data);        plot(plot_data, colours(i))    end