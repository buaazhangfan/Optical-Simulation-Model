function varargout = juxingyanshe(varargin)
% JUXINGYANSHE MATLAB code for juxingyanshe.fig
%      JUXINGYANSHE, by itself, creates a new JUXINGYANSHE or raises the existing
%      singleton*.
%
%      H = JUXINGYANSHE returns the handle to a new JUXINGYANSHE or the handle to
%      the existing singleton*.
%
%      JUXINGYANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in JUXINGYANSHE.M with the given input arguments.
%
%      JUXINGYANSHE('Property','Value',...) creates a new JUXINGYANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before juxingyanshe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to juxingyanshe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help juxingyanshe

% Last Modified by GUIDE v2.5 07-Dec-2016 20:28:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @juxingyanshe_OpeningFcn, ...
                   'gui_OutputFcn',  @juxingyanshe_OutputFcn, ...
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


% --- Executes just before juxingyanshe is made visible.
function juxingyanshe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to juxingyanshe (see VARARGIN)

% Choose default command line output for juxingyanshe
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes juxingyanshe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = juxingyanshe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
a = str2double(get(handles.edit2,'string'));
a = a*(1e-3);
b = str2double(get(handles.edit3,'string'));
b = b*(1e-3);
lambda = str2double(get(handles.edit1,'string'));
lambda = lambda*(1e-9);
f = 1; %透镜焦距为1m
m = 500; %确定屏幕上点数
ym = 8000*lambda*f;      %屏幕上y的范围
ys = linspace(-ym,ym,m); 
xs = ys;                 %屏幕上x的范围
n = 255;
B=zeros(m,m);
for i=1:m
    for j=1:m;
    sinth1 = xs(j)/sqrt(xs(j)^2+f^2);
    sinth2 = ys(i)/sqrt(ys(i)^2+f^2);
    angleA = pi*a*sinth1/lambda;
    angleB = pi*b*sinth2/lambda;
    B(i,j)=(sin(angleA).^2.*sin(angleB).^2./(angleA.^2.*angleB.^2));
    end;
end
axes(handles.axes1);
image(xs,ys,(B.*2250));
colormap(gray(255));
axes(handles.axes2);
Br=(B/4.0)*n;
mesh(xs,ys,Br);
axis([-ym,ym,-ym,ym,0,255]);
view(65,65);
colormap(hot(512));



% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(juxingyanshe);
get(fulanghefei);

% hObject    handle to pushbutton2 (see GCBO)
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
