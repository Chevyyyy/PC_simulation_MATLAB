

y=audioread("30s_45deg_cafe.wav");



cc4=zeros(1,31);
for i=1:1000:44100
    cc4=plot_cross(i,y,12);
    cc4=cc4+plot_cross(i,y,23);
    cc4=cc4+plot_cross(i,y,34);
    mid=(length(cc4)+1)/2;
    cc4=cc4(mid-6:mid+6);
    figure
    plot(-6:6,cc4);
end




function b=plot_cross(start_point,y,x)

range=1024;
y1=y(start_point:range+start_point-1,1);
y2=y(start_point:range+start_point-1,2);
y3=y(start_point:range+start_point-1,3);
y4=y(start_point:range+start_point-1,4);


if x==12
[a,b,c]=gccphat(y1,y2);
elseif x==23
[a,b,c]=gccphat(y1,y2);
elseif x==34
[a,b,c]=gccphat(y1,y2);
end

end


function theta=get_theta(delay_sample)
vs=340;
sampling_rate=44100;
mic_d=0.035;
theta=asin(delay_sample/sampling_rate*vs/mic_d)*180/pi;
    
end
