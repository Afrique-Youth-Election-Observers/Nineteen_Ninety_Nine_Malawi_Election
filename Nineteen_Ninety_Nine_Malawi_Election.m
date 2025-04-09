
% Program to determine the majority winner of an election.
% This software prompts the user to enter the total valid votes for each candidate.
% It calculates and compares the votes to determine the candidate with the highest vote count.
% The program is designed to handle multiple candidates and identifies the winner of the election.
%
% Developed by: Ian Carter Kulani
% Purpose: To calculate and display the winner of an election based on vote counts.
% Contact: iancarterkulani@gmail.com | Phone: +265988061969



% MATLAB code to calculate and display election results

% Input for total registered voters and votes
Total_Registered_Voters = input('Enter Total Number of Registered Voters:');
Total_Votes = input('Enter Total Number of Votes: ');
% Input for the total valid votes (updated to ensure it's an input)
Total_Valid_Votes = input('Enter Total Valid Votes (Sum of all parties):');
% Declare variables
Total_Registered_Voters = input('Enter Total Number of Registered Voters:');
Total_Votes = input('Enter Total Number of Votes:');
Total_Valid_Votes = input('Enter Total Number of Valid Votes:');
Total_Blank_Votes = input('Enter Total Number of Invalid Votes/Blank Votes:');

% Input for votes for each political party
Total_Valid_Votes_For_United_Democratic_Front = input('Enter Total Valid Votes For United Democratic Front (UDF):');
Total_Valid_Votes_Malawi_Congress_Party = input('Enter Total Valid Votes For Malawi Congress Party (MCP):');
Total_Valid_Votes_For_Malawi_Democratic_Party = input('Enter Total Valid Votes For Malawi Democratic Party (MDP):');
Total_Valid_Votes_For_Congress_For_National_Unity = input('Enter Total Valid Votes For Congress For National Unity (CNU):');
Total_Valid_Votes_For_United_Party = input('Enter Total Valid Votes For United Party (UP):');

% Calculate majority (more than half of total valid votes)
Majority = Total_Valid_Votes / 2 + 1;

% Calculate percentages for each party
Percentage_UDF = (Total_Valid_Votes_For_United_Democratic_Front / Total_Valid_Votes) * 100;
Percentage_MCP = (Total_Valid_Votes_Malawi_Congress_Party / Total_Valid_Votes) * 100;
Percentage_MDP = (Total_Valid_Votes_For_Malawi_Democratic_Party / Total_Valid_Votes) * 100;
Percentage_CNU = (Total_Valid_Votes_For_Congress_For_National_Unity / Total_Valid_Votes) * 100;
Percentage_UP = (Total_Valid_Votes_For_United_Party / Total_Valid_Votes) * 100;

% Display percentages for each party
fprintf('\nPercentage of Votes for Each Party:\n');
fprintf('United Democratic Front (UDF): %.2f%%\n', Percentage_UDF);
fprintf('Malawi Congress Party (MCP): %.2f%%\n', Percentage_MCP);
fprintf('Malawi Democratic Party (MDP): %.2f%%\n', Percentage_MDP);
fprintf('Congress For National Unity (CNU): %.2f%%\n', Percentage_CNU);
fprintf('United Party (UP): %.2f%%\n', Percentage_UP);

% Determine the winner based on majority
if Total_Valid_Votes_For_United_Democratic_Front >= Majority
    disp('United Democratic Front (UDF) is the Winner of the Election');
elseif Total_Valid_Votes_Malawi_Congress_Party >= Majority
    disp('Malawi Congress Party (MCP) is the Winner of the Election');
elseif Total_Valid_Votes_For_Malawi_Democratic_Party >= Majority
    disp('Malawi Democratic Party (MDP) is the Winner of the Election');
elseif Total_Valid_Votes_For_Congress_For_National_Unity >= Majority
    disp('Congress For National Unity (CNU) is the Winner of the Election');
elseif Total_Valid_Votes_For_United_Party >= Majority
    disp('United Party (UP) is the Winner of the Election');
else
    disp('No Political Party has a Majority Winner in the Election');
end

% Create the data for the pie chart and bar chart
data = [Percentage_UDF, Percentage_MCP, Percentage_MDP, Percentage_CNU, Percentage_UP];
labels = {'United Democratic Front (UDF)', 'Malawi Congress Party (MCP)', 'Malawi Democratic Party (MDP)', 'Congress For National Unity (CNU)', 'United Party (UP)'};

% Set colors for the pie chart
colors = [1, 1, 0;  % UDF - Yellow
          1, 0, 0;  % MCP - Red
          0.5, 0.5, 0.5;  % MDP - Grey
          0.25, 0.25, 0.25;  % CNU - Dark Grey
          0, 0, 0];  % UP - Black

% Plot Pie Chart
figure;
pie(data, labels);
colormap(colors);
title('Election Results - Pie Chart');

% Plot Bar Chart
figure;
bar(data, 'FaceColor', 'flat');
set(gca, 'XTickLabel', labels);
colormap(colors);
title('Election Results - Bar Chart');
ylabel('Percentage of Votes (%)');
xtickangle(45);

Total_Blank_Votes = input('Enter Total Number of Invalid Votes/ Blank Votes: ');



% Input for votes for each political party
Total_Valid_Votes_For_United_Democratic_Front = input('Enter Total Valid Votes For United Democratic Front (UDF): ');
Total_Valid_Votes_Malawi_Congress_Party = input('Enter Total Valid Votes For Malawi Congress Party (MCP): ');
Total_Valid_Votes_For_Malawi_Democratic_Party = input('Enter Total Valid Votes For Malawi Democratic Party (MDP): ');
Total_Valid_Votes_For_Congress_For_National_Unity = input('Enter Total Valid Votes For Congress For National Unity (CNU): ');
Total_Valid_Votes_For_United_Party = input('Enter Total Valid Votes For United Party (UP): ');

% Calculate total number of valid votes
Total_Number_of_Valid_Votes = Total_Valid_Votes_For_United_Democratic_Front + ...
                               Total_Valid_Votes_Malawi_Congress_Party + ...
                               Total_Valid_Votes_For_Malawi_Democratic_Party + ...
                               Total_Valid_Votes_For_Congress_For_National_Unity + ...
                               Total_Valid_Votes_For_United_Party;

% Display the total number of valid votes
fprintf('Total Number of Valid Votes: %d\n', Total_Number_of_Valid_Votes);

% Check if the provided "Total Valid Votes" matches the sum of individual votes
if Total_Valid_Votes ~= Total_Number_of_Valid_Votes
    fprintf('Warning: The entered Total Valid Votes does not match the sum of individual party votes.\n');
end

% Calculate majority vote
Majority = Total_Votes / 2 + 1;  % Majority is based on total votes

% Calculate percentages for each party
percentage_UDF = (Total_Valid_Votes_For_United_Democratic_Front / Total_Votes) * 100;
percentage_MCP = (Total_Valid_Votes_Malawi_Congress_Party / Total_Votes) * 100;
percentage_MDP = (Total_Valid_Votes_For_Malawi_Democratic_Party / Total_Votes) * 100;
percentage_CNU = (Total_Valid_Votes_For_Congress_For_National_Unity / Total_Votes) * 100;
percentage_UP = (Total_Valid_Votes_For_United_Party / Total_Votes) * 100;

% Display percentages for each party
fprintf('\nPercentage of Votes for Each Party:\n');
fprintf('United Democratic Front (UDF): %.2f%%\n', percentage_UDF);
fprintf('Malawi Congress Party (MCP): %.2f%%\n', percentage_MCP);
fprintf('Malawi Democratic Party (MDP): %.2f%%\n', percentage_MDP);
fprintf('Congress For National Unity (CNU): %.2f%%\n', percentage_CNU);
fprintf('United Party (UP): %.2f%%\n', percentage_UP);

% Determine the winner
if Total_Valid_Votes_For_United_Democratic_Front >= Majority
    disp('United Democratic Front (UDF) is the Winner of the Election');
elseif Total_Valid_Votes_Malawi_Congress_Party >= Majority
    disp('Malawi Congress Party (MCP) is the Winner of the Election');
elseif Total_Valid_Votes_For_Malawi_Democratic_Party >= Majority
    disp('Malawi Democratic Party (MDP) is the Winner of the Election');
elseif Total_Valid_Votes_For_Congress_For_National_Unity >= Majority
    disp('Congress For National Unity (CNU) is the Winner of the Election');
elseif Total_Valid_Votes_For_United_Party >= Majority
    disp('United Party (UP) is the Winner of the Election');
else
    disp('No Political Party has a Majority Winner in the Election');
end

% Plot Pie Chart with specified colors for each party
figure;
labels = {'United Democratic Front (UDF)', 'Malawi Congress Party (MCP)', ...
          'Malawi Democratic Party (MDP)', 'Congress For National Unity (CNU)', 'United Party (UP)'};
data = [percentage_UDF, percentage_MCP, percentage_MDP, percentage_CNU, percentage_UP];
colors = [1, 1, 0; 1, 0, 0; 0.5, 0.5, 0.5; 0.25, 0.25, 0.25; 0, 0, 0]; % RGB colors for the pie chart

pie(data, labels);
colormap(colors);
title('Election Results - Pie Chart');

% Plot Bar Chart with specified colors for each party
figure;
bar(data, 'FaceColor', 'flat');
set(gca, 'XTickLabel', labels);
colormap(colors);
title('Election Results - Bar Chart');
ylabel('Percentage of Votes (%)');
xtickangle(45);
