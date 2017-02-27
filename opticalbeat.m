function varargout = opticalbeat(varargin)
% OPTICALBEAT MATLAB code for opticalbeat.fig
%      OPTICALBEAT, by itself, creates a new OPTICALBEAT or raises the existing
%      singleton*.
%
%      H = OPTICALBEAT returns the handle to a new OPTICALBEAT or the handle to
%      the existing singleton*.
%
%      OPTICALBEAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPTICALBEAT.M with the given input arguments.
%
%      OPTICALBEAT('Property','Value',...) creates a new OPTICALBEAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before opticalbeat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to opticalbeat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help opticalbeat

% Last Modified by GUIDE v2.5 06-Dec-2016 00:40:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @opticalbeat_OpeningFcn, ...
                   'gui_OutputFcn',  @opticalbeat_OutputFcn, ...
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


% --- Executes just before opticalbeat is made visible.
function opticalbeat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to opticalbeat (see VARARGIN)

% Choose default command line output for opticalbeat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes opticalbeat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = opticalbeat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton_yunxing.
function pushbutton_yunxing_Callback(hObject, eventdata, handles)


% hObject    handle to pushbutton_yunxing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_fnahui.
function pushbutton_fnahui_Callback(hObject, eventdata, handles)

% hObject    handle to pushbutton_fnahui (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
w1=get(handles.edit6,'string');
w1=str2double(w1);
w2=get(handles.edit2,'string');
w2=str2double(w2);
k1=get(handles.edit3,'string');
k1=str2double(k1);
k2=get(handles.edit4,'string');
k2=str2double(k2);
t=0.1:0.2:1.3;      %对时间进行等间隔取点
a =1;             %波动振幅
x =0:0.001:5;       %对传播方向x轴进行等间隔取点
A2= a*cos(k2*x-w2*t(end));      %A2波动函数
A1= a*cos(k1*x-w1*t(end));      %A1波动函数
plot(handles.axes4,x,A1,'k',x,A2,'b');
ylabel(handles.axes4,'振幅变化 A')
title(handles.axes4,'两列单色平面波')
legend(handles.axes4,'wave1','wave2');
x =0:0.001:20;
A =2*a*cos((k1-k2)/2*x-(w1-w2)/2*t(end));
l= A.*A;
plot(handles.axes6,x,l)
xlabel(handles.axes6,'变量 X')
ylabel(handles.axes6,'振幅变化 A')
title(handles.axes6,'合成波光强曲线')
legend(handles.axes6,'intensity of synthesis of wave')
x =0:0.001:20;
A =2*a*cos((k1-k2)/2*x-(w1-w2)/2*t(end));
v = a*cos(k1*x -w1*t(end))+a*cos(k2*x-w2*t(end));
plot(handles.axes5,x,v,'k-',x,A,x,-A);
axis([0 20 -2 2]);
%set(gcf,'color',[0 1 0])
set(gca,'YTick',[-2:1:2])
set(gca,'XTick',[0:5:20])
xlabel('变量 X')
ylabel(handles.axes5,'振幅变化 A')
title(handles.axes5,'合成波即光学拍')
legend(handles.axes5,'wave','amp1','amp2')


% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
close(opticalbeat);
get(mainsetup);

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
