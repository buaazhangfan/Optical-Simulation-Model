function varargout = msgs(varargin)
% MSGS MATLAB code for msgs.fig
%      MSGS, by itself, creates a new MSGS or raises the existing
%      singleton*.
%
%      H = MSGS returns the handle to a new MSGS or the handle to
%      the existing singleton*.
%
%      MSGS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MSGS.M with the given input arguments.
%
%      MSGS('Property','Value',...) creates a new MSGS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before msgs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to msgs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help msgs

% Last Modified by GUIDE v2.5 09-Dec-2016 00:44:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @msgs_OpeningFcn, ...
                   'gui_OutputFcn',  @msgs_OutputFcn, ...
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


% --- Executes just before msgs is made visible.
function msgs_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to msgs (see VARARGIN)

% Choose default command line output for msgs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes msgs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = msgs_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(msgs);
get(mainsetup);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
xmax = 10;
ymax = 10;
lam = 632.8;
lam = lam*(1e-6);
f = 200;
N = 200;
x = linspace(-xmax,xmax,N);
y = linspace(-ymax,ymax,N);
h = get(handles.slider1,'Value');
h = get(handles.slider1,'Value');
e = num2str(h);
set(handles.edit1,'string',e);
e = num2str(h);
set(handles.edit1,'string',e);
%h = 0.3900;%mm
I = ones(N,N);
for i=1:N
    for j=1:N
        r = sqrt(x(i)*x(i)+y(j)*y(j));
        delta = 2*h*cos(atan(r/f));
        theta = (2*pi*delta)/lam;
        I(i,j) = (cos(theta/2)).^2;
    end
end
NClevels = 255;
II = 2.5*I*NClevels;
image(x,y,II);
colormap(gray(NClevels));

% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



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
xmax = 10;
ymax = 10;
lam = 632.8;
lam = lam*(1e-6);
f = 200;
N = 200;
x = linspace(-xmax,xmax,N);
y = linspace(-ymax,ymax,N);
h = get(handles.slider1,'Value');
e = num2str(h);
set(handles.edit1,'string',e);
%h = 0.3900;%mm
I = ones(N,N);
for i=1:N
    for j=1:N
        r = sqrt(x(i)*x(i)+y(j)*y(j));
        delta = 2*h*cos(atan(r/f));
        theta = (2*pi*delta)/lam;
        I(i,j) = (cos(theta/2)).^2;
    end
end
NClevels = 255;
II = 2.5*I*NClevels;
image(x,y,II);
colormap(gray(NClevels));
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
