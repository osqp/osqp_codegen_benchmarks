% Run all FiOrdOs tests


% Number of assets
n_vec = [50, 80, 100, 120, 150, 200, 250, 300, 400, 500];
n_probs = length(n_vec);

% Get current folder
cur_dir = pwd;

% Define statistics for fiordos
fiordos_stats = [];


% Simulate system for all problems
for i = 1:n_probs
    cd(sprintf('n%i', n_vec(i)))

    % Construct function handle
    fh = str2func(sprintf('portfolion%i', n_vec(i)));

    % Call simulation function
    time_temp = fh();

    % Compute statistics
    fiordos_stats = [fiordos_stats;
                     n_vec(i)*ones(length(time_temp),1), time_temp];

    % Go back to original directory
    cd(cur_dir)


end


% Store matrix to file
save('fiordos_stats.mat', 'fiordos_stats');
