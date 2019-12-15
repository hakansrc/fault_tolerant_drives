load('TestData/TestData151219172903.mat');
% TheSaveArrayRaw = TheSaveArrayRaw;
%% Tag 1 conversion and elimination
Tag_1_Indices = strfind(TheSaveArrayRaw',TagNumber1);
IsMainSignalOffsetProper = 0;
if(isempty(Tag_1_Indices)==0)
    if(IsMainSignalOffsetProper==0)
        MainSignalOffset = mod((Tag_1_Indices(1)-1),4);
        IsMainSignalOffsetProper = 1;
    end
    Tag_1_Value = zeros(1,numel(Tag_1_Indices));
    for i=1:numel(Tag_1_Indices)
        Tag_1_Indices(i) = Tag_1_Indices(i)-(i-1)*8;
        if (Tag_1_Indices(i)+8)<=numel(TheSaveArrayRaw)
            Tag_1_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayRaw(7+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayRaw(6+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayRaw(5+Tag_1_Indices(i)),2),dec2hex(TheSaveArrayRaw(4+Tag_1_Indices(i)),2)))),'single');
            for j = 1:8
                TheSaveArrayRaw(Tag_1_Indices(i)) = [];
            end
        else
            for j = 1:(numel(TheSaveArrayRaw)-Tag_1_Indices(i))
                TheSaveArrayRaw(Tag_1_Indices(i)) = [];
            end
        end
    end
end
%% Tag 2 conversion and elimination
Tag_2_Indices = strfind(TheSaveArrayRaw',TagNumber2);
if(isempty(Tag_2_Indices)==0)
    if(IsMainSignalOffsetProper==0)
        MainSignalOffset = mod((Tag_2_Indices(1)-1),4);
        IsMainSignalOffsetProper = 1;
    end
    Tag_2_Value = zeros(1,numel(Tag_2_Indices));
    for i=1:numel(Tag_2_Indices)
        Tag_2_Indices(i) = Tag_2_Indices(i)-(i-1)*8;
        if (Tag_2_Indices(i)+8)<=numel(TheSaveArrayRaw)
            Tag_2_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayRaw(7+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayRaw(6+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayRaw(5+Tag_2_Indices(i)),2),dec2hex(TheSaveArrayRaw(4+Tag_2_Indices(i)),2)))),'single');
            for j = 1:8
                TheSaveArrayRaw(Tag_2_Indices(i)) = [];
            end
        else
            for j = 1:(numel(TheSaveArrayRaw)-Tag_2_Indices(i))
                TheSaveArrayRaw(Tag_2_Indices(i)) = [];
            end
        end
    end
end
%% Tag 3 conversion and elimination
Tag_3_Indices = strfind(TheSaveArrayRaw',TagNumber3);
if(isempty(Tag_3_Indices)==0)
    if(IsMainSignalOffsetProper==0)
        MainSignalOffset = mod((Tag_3_Indices(1)-1),4);
        IsMainSignalOffsetProper = 1;
    end
    Tag_3_Value = zeros(1,numel(Tag_3_Indices));
    for i=1:numel(Tag_3_Indices)
        Tag_3_Indices(i) = Tag_3_Indices(i)-(i-1)*8;
        if (Tag_3_Indices(i)+8)<=numel(TheSaveArrayRaw)
            Tag_3_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayRaw(7+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayRaw(6+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayRaw(5+Tag_3_Indices(i)),2),dec2hex(TheSaveArrayRaw(4+Tag_3_Indices(i)),2)))),'single');
            for j = 1:8
                TheSaveArrayRaw(Tag_3_Indices(i)) = [];
            end
        else
            for j = 1:(numel(TheSaveArrayRaw)-Tag_3_Indices(i))
                TheSaveArrayRaw(Tag_3_Indices(i)) = [];
            end
        end
    end
end
%% Tag 4 conversion and elimination
Tag_4_Indices = strfind(TheSaveArrayRaw',TagNumber4);
if(isempty(Tag_4_Indices)==0)
    if(IsMainSignalOffsetProper==0)
        MainSignalOffset = mod((Tag_4_Indices(1)-1),4);
        IsMainSignalOffsetProper = 1;
    end
    Tag_4_Value = zeros(1,numel(Tag_4_Indices));
    for i=1:numel(Tag_4_Indices)
        Tag_4_Indices(i) = Tag_4_Indices(i)-(i-1)*8;
        if (Tag_4_Indices(i)+8)<=numel(TheSaveArrayRaw)
            Tag_4_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayRaw(7+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayRaw(6+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayRaw(5+Tag_4_Indices(i)),2),dec2hex(TheSaveArrayRaw(4+Tag_4_Indices(i)),2)))),'single');
            for j = 1:8
                TheSaveArrayRaw(Tag_4_Indices(i)) = [];
            end
        else
            for j = 1:(numel(TheSaveArrayRaw)-Tag_4_Indices(i))
                TheSaveArrayRaw(Tag_4_Indices(i)) = [];
            end
        end
    end
end
%% Tag 5 conversion and elimination
Tag_5_Indices = strfind(TheSaveArrayRaw',TagNumber5);
if(isempty(Tag_5_Indices)==0)
    if(IsMainSignalOffsetProper==0)
        MainSignalOffset = mod((Tag_5_Indices(1)-1),4);
        IsMainSignalOffsetProper = 1;
    end
    Tag_5_Value = zeros(1,numel(Tag_5_Indices));
    for i=1:numel(Tag_5_Indices)
        Tag_5_Indices(i) = Tag_5_Indices(i)-(i-1)*8;
        if (Tag_5_Indices(i)+8)<=numel(TheSaveArrayRaw)
            Tag_5_Value(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayRaw(7+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayRaw(6+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayRaw(5+Tag_5_Indices(i)),2),dec2hex(TheSaveArrayRaw(4+Tag_5_Indices(i)),2)))),'single');
            for j = 1:8
                TheSaveArrayRaw(Tag_5_Indices(i)) = [];
            end
        else
            for j = 1:(numel(TheSaveArrayRaw)-Tag_5_Indices(i))
                TheSaveArrayRaw(Tag_5_Indices(i)) = [];
            end
        end
    end
end
%% Raw data conversion
MainSignalConverted = zeros(numel(TheSaveArrayRaw)/4-MainSignalOffset-8*numel(Tag_1_Indices)-8*numel(Tag_2_Indices)-8*numel(Tag_3_Indices)-8*numel(Tag_4_Indices)-8*numel(Tag_5_Indices),1); %init the array
for i=1:1:(numel(TheSaveArrayRaw)/4-MainSignalOffset-8*numel(Tag_1_Indices)-8*numel(Tag_2_Indices)-8*numel(Tag_3_Indices)-8*numel(Tag_4_Indices)-8*numel(Tag_5_Indices))
    MainSignalConverted(i) = typecast(uint32(hex2dec(strcat(dec2hex(TheSaveArrayRaw(4+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayRaw(3+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayRaw(2+4*(i-1)+MainSignalOffset),2),dec2hex(TheSaveArrayRaw(1+4*(i-1)+MainSignalOffset),2)))),'single');
end
plot(MainSignalConverted);
ylim([0 1])