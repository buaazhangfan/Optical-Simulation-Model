function varargout = youngdoublesilts(varargin)
% YOUNGDOUBLESILTS MATLAB code for youngdoublesilts.fig
%      YOUNGDOUBLESILTS, by itself, creates a new YOUNGDOUBLESILTS or raises the existing
%      singleton*.
%
%      H = YOUNGDOUBLESILTS returns the handle to a new YOUNGDOUBLESILTS or the handle to
%      the existing singleton*.
%
%      YOUNGDOUBLESILTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in YOUNGDOUBLESILTS.M with the given input arguments.
%
%      YOUNGDOUBLESILTS('Property','Value',...) creates a new YOUNGDOUBLESILTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before youngdoublesilts_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to youngdoublesilts_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help youngdoublesilts

% Last Modified by GUIDE v2.5 06-Dec-2016 20:58:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @youngdoublesilts_OpeningFcn, ...
                   'gui_OutputFcn',  @youngdoublesilts_OutputFcn, ...
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


% --- Executes just before youngdoublesilts is made visible.
function youngdoublesilts_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to youngdoublesilts (see VARARGIN)

% Choose default command line output for youngdoublesilts
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes youngdoublesilts wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = youngdoublesilts_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
D=get(handles.edit1,'string');
D=str2double(D);
d=get(handles.edit2,'string');
d=(str2double(d))/100;
Lambda=get(handles.edit3,'string');
Lambda=(str2double(Lambda)/1000000000);
ymax=2*Lambda*D/d;
ny=101;y=linspace(-ymax,ymax,ny);
x=y;
for i=1:ny
for j=1:ny 
l1=sqrt((y(i)-d/2)^2+0*x(j)+D^2);
 l2=sqrt((y(i)+d/2)^2+0*x(j)+D^2);
phi=2*pi*(l2-l1)/Lambda;
 I(i,j)=4*cos(phi/2)^2;
end   
end
plot(handles.axes1,y,I(:,1));
axis(handles.axes1,[-ymax,ymax,0,4]);
title(handles.axes1,'单色光强度曲线');
xlabel(handles.axes1,'x');
ylabel(handles.axes1,'强度');
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
D=get(handles.edit1,'string');
D=str2double(D);
d=get(handles.edit2,'string');
d=(str2double(d))/100;
Lambda=get(handles.edit3,'string');
Lambda=(str2double(Lambda)/1000000000);
ymax=2*Lambda*D/d;
ny=101;y=linspace(-ymax,ymax,ny);
x=y;
for i=1:ny
for j=1:ny 
l1=sqrt((y(i)-d/2)^2+0*x(j)+D^2);
 l2=sqrt((y(i)+d/2)^2+0*x(j)+D^2);
phi=2*pi*(l2-l1)/Lambda;
 I(i,j)=4*cos(phi/2)^2;
end   
end
nclevels=255;
br=I.*255/max(max(I));
image(x,y,br);
xlabel(handles.axes1,'x(m)');
ylabel(handles.axes1,'y(m)');
title(handles.axes1,'单色光二维干涉条纹');
axis(handles.axes1,[-ymax,ymax,-ymax,ymax]);
colormap(handles.axes1,pink(nclevels));

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
D=get(handles.edit1,'string');
D=str2double(D);
d=get(handles.edit2,'string');
d=(str2double(d))/100;
Lambda=get(handles.edit3,'string');
Lambda=(str2double(Lambda)/1000000000);
ymax=2*Lambda*D/d;
ny=101;y=linspace(-ymax,ymax,ny);
x=y;
for i=1:ny
for j=1:ny 
l1=sqrt((y(i)-d/2)^2+0*x(j)+D^2);
 l2=sqrt((y(i)+d/2)^2+0*x(j)+D^2);
phi=2*pi*(l2-l1)/Lambda;
 I(i,j)=4*cos(phi/2)^2;
end   
end
nclevels=255;
br=I.*255/max(max(I));
surf(handles.axes1,x,y,br);
view(handles.axes1,85,65);
axis(handles.axes1,[-ymax,ymax,-ymax,ymax,0,255]);
xlabel(handles.axes1,'y(m)');
ylabel(handles.axes1,'x(m)');
zlabel(handles.axes1,'I(x,y)');
title(handles.axes1,'单色光三维强度分布');
colormap(handles.axes1,pink(nclevels));
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
D=get(handles.edit1,'string');
D=str2double(D);
d=get(handles.edit2,'string');
d=(str2double(d))/100;
Lambda=get(handles.edit3,'string');
Lambda=(str2double(Lambda)/1000000000);
ymax=2*Lambda*D/d;
ny=101;y=linspace(-ymax,ymax,ny);
x=y;
for i=1:ny
for j=1:ny 
l1=sqrt((y(i)-d/2)^2+0*x(j)+D^2);
 l2=sqrt((y(i)+d/2)^2+0*x(j)+D^2);
phi=2*pi*(l2-l1)/Lambda;
 I(i,j)=4*cos(phi/2)^2;
end   
end
plot(handles.axes1,y,I(:,1));
axis(handles.axes1,[-ymax,ymax,0,4]);
title(handles.axes1,'单色光强度曲线');
xlabel(handles.axes1,'x');
ylabel(handles.axes1,'强度');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(youngdoublesilts);
get(mainsetup);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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


% --- Executes on button press in text10.
function text10_Callback(hObject, eventdata, handles)

% hObject    handle to text10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
D=get(handles.edit1,'string');
D=str2double(D);
d=get(handles.edit2,'string');
d=(str2double(d))/100;
Lambda=get(handles.edit3,'string');
Lambda=(str2double(Lambda)/1000000000);
jianju = (D*Lambda)/d;
jianju = num2str(jianju);
set(handles.edit4,'string',jianju);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
