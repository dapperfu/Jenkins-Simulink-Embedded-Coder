%% Print Jenkins Environment for Log
% Jenkins Set Environment Variables
% https://wiki.jenkins-ci.org/display/JENKINS/Building+a+software+project#Buildingasoftwareproject-below
envs = {'BUILD_NUMBER', 'BUILD_ID', 'BUILD_URL', 'NODE_NAME', 'JOB_NAME', 'BUILD_TAG', 'JENKINS_URL', 'EXECUTOR_NUMBER', 'WORKSPACE'};
% Alphabetically sort the environmental variables to print.
envs = sort(envs);
% Loop through the variables and print their result to the diary.
for env = envs
    env = env{1};
    fprintf('%s: %s\n', env, getenv(env))
end

%% Build Process
bdclose('all');
model = 'arduino_BasicModel_ci';
% Open the system
open_system(model);
% 
cs = getActiveConfigSet(model);
cs.set_param('GenCodeOnly', 'off'); 
% Build the model
slbuild(model);


%% Exit Matlab
% Don't exit Matlab if BUILD_NUMBER is not set.
% For testing of script outside of Jenkins environment.
if ~isempty(getenv('BUILD_NUMBER'))
    exit(0);
end
