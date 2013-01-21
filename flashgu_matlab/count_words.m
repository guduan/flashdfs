function [counter] = count_words(string)
% counter the number of words in a string

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% log:
% 2012-12-19: Complete
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% remove whitespace from the front and rear of string
string = strtrim(string);

% count words
counter = 0;
while ~isempty(string)
[~, string] = strtok(string);
counter = counter + 1;
end