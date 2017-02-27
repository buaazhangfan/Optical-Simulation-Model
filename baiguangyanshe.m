function varargout = baiguangyanshe(varargin)
% BAIGUANGYANSHE MATLAB code for baiguangyanshe.fig
%      BAIGUANGYANSHE, by itself, creates a new BAIGUANGYANSHE or raises the existing
%      singleton*.
%
%      H = BAIGUANGYANSHE returns the handle to a new BAIGUANGYANSHE or the handle to
%      the existing singleton*.
%
%      BAIGUANGYANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BAIGUANGYANSHE.M with the given input arguments.
%
%      BAIGUANGYANSHE('Property','Value',...) creates a new BAIGUANGYANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before baiguangyanshe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to baiguangyanshe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help baiguangyanshe

% Last Modified by GUIDE v2.5 18-Dec-2016 13:05:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @baiguangyanshe_OpeningFcn, ...
                   'gui_OutputFcn',  @baiguangyanshe_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before baiguangyanshe is made visible.
function baiguangyanshe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to baiguangyanshe (see VARARGIN)

% Choose default command line output for baiguangyanshe
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes baiguangyanshe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = baiguangyanshe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
k=1;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1];%三原色的RGB值 
Ig = zeros(150,1048,3);%光屏矩阵 
Iw = zeros(150,1048,3);%RGB值矩阵 
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi);%衍射角范围  
%theta=(-0.015*pi:0.00001:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;%单缝因子
Igs=(sin(N*zeta)./sin(zeta)).^2;%干涉因子
I=4*Idf.*Igs;
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); %将包含颜色信息的光强用矩阵保存下来 

%Ig=Ig+Iw; %把各色光衍射的RGB 值矩阵计入仿真结果RGB 值图像矩阵中

end
Ig = Iw;
Br=1/max(max(max(Ig))); %调整矩阵元素最大值
II=Ig*Br*B;%计算相对光强 
imshow(II);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
k=2;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1];%三原色的RGB值 
Ig = zeros(150,1048,3);%光屏矩阵 
Iw = zeros(150,1048,3);%RGB值矩阵 
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi);%衍射角范围  
%theta=(-0.015*pi:0.00001:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;%单缝因子
Igs=(sin(N*zeta)./sin(zeta)).^2;%干涉因子
I=4*Idf.*Igs;
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); %将包含颜色信息的光强用矩阵保存下来 

%Ig=Ig+Iw; %把各色光衍射的RGB 值矩阵计入仿真结果RGB 值图像矩阵中

end
Ig = Iw;
Br=1/max(max(max(Ig))); %调整矩阵元素最大值
II=Ig*Br*B;%计算相对光强 
imshow(II);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
k=3;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1];%三原色的RGB值 
Ig = zeros(150,1048,3);%光屏矩阵 
Iw = zeros(150,1048,3);%RGB值矩阵 
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi);%衍射角范围  
%theta=(-0.015*pi:0.00001:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;%单缝因子
Igs=(sin(N*zeta)./sin(zeta)).^2;%干涉因子
I=4*Idf.*Igs;
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); %将包含颜色信息的光强用矩阵保存下来 

%Ig=Ig+Iw; %把各色光衍射的RGB 值矩阵计入仿真结果RGB 值图像矩阵中

end
Ig = Iw;
Br=1/max(max(max(Ig))); %调整矩阵元素最大值
II=Ig*Br*B;%计算相对光强 
imshow(II);
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
k=4;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1];%三原色的RGB值 
Ig = zeros(150,1048,3);%光屏矩阵 
Iw = zeros(150,1048,3);%RGB值矩阵 
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi);%衍射角范围  
%theta=(-0.015*pi:0.00001:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;%单缝因子
Igs=(sin(N*zeta)./sin(zeta)).^2;%干涉因子
I=4*Idf.*Igs;
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); %将包含颜色信息的光强用矩阵保存下来 

%Ig=Ig+Iw; %把各色光衍射的RGB 值矩阵计入仿真结果RGB 值图像矩阵中

end
Ig = Iw;
Br=1/max(max(max(Ig))); %调整矩阵元素最大值
II=Ig*Br*B;%计算相对光强 
imshow(II);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
k=5;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1];%三原色的RGB值 
Ig = zeros(150,1048,3);%光屏矩阵 
Iw = zeros(150,1048,3);%RGB值矩阵 
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi);%衍射角范围  
%theta=(-0.015*pi:0.00001:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;%单缝因子
Igs=(sin(N*zeta)./sin(zeta)).^2;%干涉因子
I=4*Idf.*Igs;
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); %将包含颜色信息的光强用矩阵保存下来 

%Ig=Ig+Iw; %把各色光衍射的RGB 值矩阵计入仿真结果RGB 值图像矩阵中

end
Ig = Iw;
Br=1/max(max(max(Ig))); %调整矩阵元素最大值
II=Ig*Br*B;%计算相对光强 
imshow(II);
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
k=6;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1];%三原色的RGB值 
Ig = zeros(150,1048,3);%光屏矩阵 
Iw = zeros(150,1048,3);%RGB值矩阵 
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi);%衍射角范围  
%theta=(-0.015*pi:0.00001:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;%单缝因子
Igs=(sin(N*zeta)./sin(zeta)).^2;%干涉因子
I=4*Idf.*Igs;
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); %将包含颜色信息的光强用矩阵保存下来 

%Ig=Ig+Iw; %把各色光衍射的RGB 值矩阵计入仿真结果RGB 值图像矩阵中

end
Ig = Iw;
Br=1/max(max(max(Ig))); %调整矩阵元素最大值
II=Ig*Br*B;%计算相对光强 
imshow(II);
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
k=7;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1];%三原色的RGB值 
Ig = zeros(150,1048,3);%光屏矩阵 
Iw = zeros(150,1048,3);%RGB值矩阵 
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi);%衍射角范围  
%theta=(-0.015*pi:0.00001:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;%单缝因子
Igs=(sin(N*zeta)./sin(zeta)).^2;%干涉因子
I=4*Idf.*Igs;
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); %将包含颜色信息的光强用矩阵保存下来 

%Ig=Ig+Iw; %把各色光衍射的RGB 值矩阵计入仿真结果RGB 值图像矩阵中

end
Ig = Iw;
Br=1/max(max(max(Ig))); %调整矩阵元素最大值
II=Ig*Br*B;%计算相对光强 
imshow(II);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
clear;
d = 8e-6;
a = 4e-5;
N = 20;
B = 80;
lambda = [610 600 570 550 460 440 410]*1e-9;
RGB = [1,0,0;1,0.5,0;1,1,0;0,1,0;0,1,1;0,0,1;0.67,0,1]; 
Ig = zeros(150,1048,3); 
Iw = zeros(150,1048,3); 
for k=1:7
theta=(-0.015*pi+0.03*pi/1048:0.03*pi/1048:0.015*pi); 
alpha=pi*a*sin(theta)/lambda(k); 
zeta=pi*d*sin(theta)/lambda(k); 
x=d*sin(theta)/lambda(k);  
Idf=(sin(alpha)./alpha).^2;
Igs=(sin(N*zeta)./sin(zeta)).^2;
I=4*Idf.*Igs;	
for i=1:150  
    Iw(i,:,1)=I*RGB(k,1); 
    Iw(i,:,2)=I*RGB(k,2);  
    Iw(i,:,3)=I*RGB(k,3); 
end
 
Ig=Ig+Iw; 
 
end
Br=1/max(max(max(Ig))); 
II=Ig*Br*B; 
imshow(II);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
close(baiguangyanshe);
get(mainsetup);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
