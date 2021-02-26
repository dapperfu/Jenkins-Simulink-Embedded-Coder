%% Build Process
bdclose('all');
model = 'arduino_BasicModel_ci';
% Open the system
open_system(model);
% 
cs = getActiveConfigSet(model);
cs.set_param('GenCodeOnly', getenv('GEN_CODE_ONLY')); 
% Build the model
slbuild(model);

% Save the system and close it.
% Saves are not pushed back to the version control but it eliminates a
% dialog prompt that pauses the build process.
save_system(model);
close_system(model, 1);
% Close out Models.
bdclose('all');
