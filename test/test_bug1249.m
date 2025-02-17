function test_bug1249

% MEM 2gb
% WALLTIME 00:10:00
% DEPENDENCY ft_componentanalysis ft_rejectcomponent
% DATA private

load(dccnpath('/home/common/matlab/fieldtrip/data/test/latest/raw/meg/preproc_ctf275.mat'));

cfg = [];
cfg.method = 'fastica';
cfg.numcomponent = 20;
cfg.channel = 'MEG';
comp = ft_componentanalysis(cfg, data);

cfg = [];
cfg.component = 1:5;
datanew = ft_rejectcomponent(cfg, comp);

if size(datanew.grad.chanpos,1)~=numel(datanew.grad.label)
  error('labels in the grad structure are inconsistent with the chanpos');
end
