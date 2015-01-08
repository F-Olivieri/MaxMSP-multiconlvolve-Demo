%% Channel List
% Prints a sequence of numbers. Useful for the ADC and DAC objects in
% MaxMSP

NumCh = 36
num2str(1:NumCh) % Copy/Paste list of numbers to MaxMSP objects

%% Multiconvolve string
FiltPrefixStr = 'FiltPref';

str = ''; % Initializing string
for idx = 1:NumCh
    idx_str = num2str(idx);
    
        FiltPref_currCh = [FiltPrefixStr '_ch' idx_str]; % Buffer name for current channel
    str = [str 'set ' idx_str ' ' idx_str ' ' FiltPref_currCh]; % concatenation
    if idx < NumCh
        str = [str ', '];
    end
end

str % Copy/Paste string into a Max message to control the convolver