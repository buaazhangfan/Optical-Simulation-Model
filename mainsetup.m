function varargout = mainsetup(varargin)
% MAINSETUP MATLAB code for mainsetup.fig
%      MAINSETUP, by itself, creates a new MAINSETUP or raises the existing
%      singleton*.
%
%      H = MAINSETUP returns the handle to a new MAINSETUP or the handle to
%      the existing singleton*.
%
%      MAINSETUP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAINSETUP.M with the given input arguments.
%
%      MAINSETUP('Property','Value',...) creates a new MAINSETUP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mainsetup_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mainsetup_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mainsetup

% Last Modified by GUIDE v2.5 18-Dec-2016 13:40:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainsetup_OpeningFcn, ...
                   'gui_OutputFcn',  @mainsetup_OutputFcn, ...
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


% --- Executes just before mainsetup is made visible.
function mainsetup_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mainsetup (see VARARGIN)
axes(handles.axes1);
imshow(imread('optical_1.jpg'));
% Choose default command line output for mainsetup

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainsetup wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mainsetup_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
close(mainsetup);
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
close(mainsetup);
get(fulanghefei);

% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
close(mainsetup);
get(guangshanyanshe);

% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_opticalbeats.
function pushbutton_opticalbeats_Callback(hObject, eventdata, handles)
close(mainsetup);
get(opticalbeat);

% hObject    handle to pushbutton_opticalbeats (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_youngdoubleslit.
function pushbutton_youngdoubleslit_Callback(hObject, eventdata, handles)
close(mainsetup);
get(youngdoublesilts);


% hObject    handle to pushbutton_youngdoubleslit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_equalinclinationinterference.
function pushbutton_equalinclinationinterference_Callback(hObject, eventdata, handles)
close(mainsetup);
get(denghouganshe);

% hObject    handle to pushbutton_equalinclinationinterference (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_newtoncircle.
function pushbutton_newtoncircle_Callback(hObject, eventdata, handles)
close(mainsetup);
get(msgs);
% hObject    handle to pushbutton_newtoncircle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
close(mainsetup);
get(qiumianboganshe);
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
close(mainsetup);
get(baiguangyanshe);

% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
close(mainsetup);
get(zhubo);
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
