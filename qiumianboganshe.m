function varargout = qiumianboganshe(varargin)
% QIUMIANBOGANSHE MATLAB code for qiumianboganshe.fig
%      QIUMIANBOGANSHE, by itself, creates a new QIUMIANBOGANSHE or raises the existing
%      singleton*.
%
%      H = QIUMIANBOGANSHE returns the handle to a new QIUMIANBOGANSHE or the handle to
%      the existing singleton*.
%
%      QIUMIANBOGANSHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in QIUMIANBOGANSHE.M with the given input arguments.
%
%      QIUMIANBOGANSHE('Property','Value',...) creates a new QIUMIANBOGANSHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before qiumianboganshe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to qiumianboganshe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help qiumianboganshe

% Last Modified by GUIDE v2.5 13-Dec-2016 19:37:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @qiumianboganshe_OpeningFcn, ...
                   'gui_OutputFcn',  @qiumianboganshe_OutputFcn, ...
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


% --- Executes just before qiumianboganshe is made visible.
function qiumianboganshe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to qiumianboganshe (see VARARGIN)

% Choose default command line output for qiumianboganshe
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes qiumianboganshe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = qiumianboganshe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)


% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
% set(handles.pushbutton_zhuangzhi, 'Enable', 'on');
set(handles.pushbutton3, 'Enable', 'on');
set(handles.pushbutton4, 'Enable', 'on');
D=str2double(get(handles.edit1,'string'));
d=str2double(get(handles.edit2,'string'))/100;
Lambda=str2double(get(handles.edit3,'string'))/1000000000;
k=Lambda*D/d*1000;
% set(handles.edit_zhi, 'String', k);
E=1;
ymax=0.0005;
ny=161;
y=linspace(-ymax,ymax,ny);
z=y;
   for j=1:ny 
   l1=sqrt(y(j)^2+(D-d/2)^2+z(j)^2);
   l2=sqrt(y(j)^2+(D+d/2)^2+z(j)^2);
   phi=2*pi*(l2-l1)/Lambda;
   I(j)=(E/l1)^2+(E/l2)^2+2*E^2/l1/l2*cos(phi);
   end;   
M = max(I);
axes(handles.axes1);
plot(y,I,'b');
title('单色光强度曲线');
xlabel('x');
ylabel('强度');
axis([-ymax ymax 0 M]);
    case 2
% set(handles.pushbutton_zhuangzhi, 'Enable', 'on');
set(handles.pushbutton3, 'Enable', 'on');
set(handles.pushbutton4, 'Enable', 'on');
D=str2double(get(handles.edit1,'string'));
d=str2double(get(handles.edit2,'string'))/100;
Lambda=str2double(get(handles.edit3,'string'))/1000000000;
width=str2double(get(handles.edit4,'string'))/100;
x=str2double(get(handles.edit5,'string'))/1000;
k1=2*pi/(Lambda*(1+width/100));
k2=2*pi/(Lambda*(1-width/100));
dk=k2-k1;
delta=d*x/D;
Pa=dk*delta/2;
%edit_zhi=abs(sin(Pa)/Pa);
%set(handles.edit_zhi, 'String', edit_zhi);
E=1;
ymax=0.0007;
ny=161;
y=linspace(-ymax,ymax,ny);
z=y;
    for j=1:ny
   l1=sqrt(y(j)^2+(D-d/2)^2+z(j)^2);
   l2=sqrt(y(j)^2+(D+d/2)^2+z(j)^2);
   NI=11;
   dL=linspace(-width,width,NI);
   Lambda1=Lambda*(1+dL); 
   phi=2*pi*(l2-l1)./Lambda1;
   b(j)=sum((E/l1)^2+(E/l2)^2+2*E^2/l1/l2.*cos(phi))/NI;
    end;
M = max(b);
axes(handles.axes1);
plot(y,b,'b');
title('复色光强度曲线');
xlabel('x');
ylabel('强度');
axis([-ymax,ymax,0,M]);
end
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
% set(handles.pushbutton_zhuangzhi, 'Enable', 'on');
set(handles.pushbutton3, 'Enable', 'on');
set(handles.pushbutton4, 'Enable', 'on');
D=str2double(get(handles.edit1,'string'));
d=str2double(get(handles.edit2,'string'))/100;
Lambda=str2double(get(handles.edit3,'string'))/1000000000;
k=Lambda*D/d*1000;
% set(handles.edit_zhi, 'String', k);
E=1;
ymax=0.0005;
ny=161;
y=linspace(-ymax,ymax,ny);
z=y;
for i=1:ny
   for j=1:ny 
   l1=sqrt(y(i)^2+(D-d/2)^2+z(j)^2);
   l2=sqrt(y(i)^2+(D+d/2)^2+z(j)^2);
   phi=2*pi*(l2-l1)/Lambda;
   I(i,j)=(E/l1)^2+(E/l2)^2+2*E^2/l1/l2*cos(phi);
   end;   
end;
nclevels=255;
br=I.*255/max(max(I));
axes(handles.axes1);
image(y,z,br);
xlabel('y(m)');
ylabel('z(m)');
title('单色光二维干涉条纹');
axis([-ymax,ymax,-ymax,ymax]);
colormap(pink(nclevels));
    case 2
% set(handles.pushbutton_zhuangzhi, 'Enable', 'on');
set(handles.pushbutton3, 'Enable', 'on');
set(handles.pushbutton4, 'Enable', 'on');
D=str2double(get(handles.edit1,'string'));
d=str2double(get(handles.edit2,'string'))/100;
Lambda=str2double(get(handles.edit3,'string'))/1000000000;
width=str2double(get(handles.edit4,'string'))/100;
x=str2double(get(handles.edit5,'string'))/1000;
k1=2*pi/(Lambda*(1+width/100));
k2=2*pi/(Lambda*(1-width/100));
dk=k2-k1;
delta=d*x/D;
Pa=dk*delta/2;
edit_zhi=abs(sin(Pa)/Pa);
% set(handles.edit_zhi, 'String', edit_zhi);
E=1;
ymax=0.0007;
ny=161;
y=linspace(-ymax,ymax,ny);
z=y;
for i=1:ny
    for j=1:ny
   l1=sqrt(y(i)^2+(D-d/2)^2+z(j)^2);
   l2=sqrt(y(i)^2+(D+d/2)^2+z(j)^2);
   NI=11;
   dL=linspace(-width,width,NI);
   Lambda1=Lambda*(1+dL); 
   phi=2*pi*(l2-l1)./Lambda1;
   b(i,j)=sum((E/l1)^2+(E/l2)^2+2*E^2/l1/l2.*cos(phi))/NI;
    end;
end
nclevels=255;
br=b.*255/max(max(b));
axes(handles.axes1);
image(y,z,br);
xlabel('y(m)');
ylabel('z(m)');
title('复色光二维干涉条纹');
axis([-ymax,ymax,-ymax,ymax]);
colormap(pink(nclevels));
end
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(qiumianboganshe);
get(mainsetup);
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
