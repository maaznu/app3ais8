function output_data = get_data_file(files_array, subject)
% Load a list of data samples for a subject from a file and save it in a structure
% Input :
%   files_array : Array of input files
%   subject : Subject's name
% Output :
%   output_data : Array of loaded structure

    output_data = [];
    for i = 1 : length(files_array)
        file = files_array(i, :);
        for j = 1 : 5
            ext = sprintf('00%d', j);
            data = load_file(subject, file, ext);
            
            fall_struct = struct( ...
            'Sensor1', data(:, 1), ...
            'Sensor2', data(:, 2), ...
            'Sensor3', data(:, 3), ...
            'Sensor4', data(:, 4), ... 
            'Sensor5', data(:, 5), ...
            'Sensor6', data(:, 6) ...
        );
        output_data = [output_data; fall_struct];
        end
    end