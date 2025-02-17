function test_bug1894

% MEM 2gb
% WALLTIME 00:10:00
% DEPENDENCY ft_singleplotTFR ft_daattype_freq ft_datatype_sens ft_chantype
% DATA private

load(dccnpath('/home/common/matlab/fieldtrip/data/test/bug1894.mat'));

cfg = [];
ft_multiplotTFR (cfg, freq);
ft_singleplotTFR(cfg, freq);
ft_topoplotTFR  (cfg, freq);

ft_datatype_sens(freq.grad);
