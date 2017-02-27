function varargout = fulanghefei(varargin)
% FULANGHEFEI MATLAB code for fulanghefei.fig
%      FULANGHEFEI, by itself, creates a new FULANGHEFEI or raises the existing
%      singleton*.
%
%      H = FULANGHEFEI returns the handle to a new FULANGHEFEI or the handle to
%      the existing singleton*.
%
%      FULANGHEFEI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FULANGHEFEI.M with the given input arguments.
%
%      FULANGHEFEI('Property','Value',...) creates a new FULANGHEFEI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fulanghefei_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fulanghefei_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fulanghefei

% Last Modified by GUIDE v2.5 07-Dec-2016 22:52:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fulanghefei_OpeningFcn, ...
                   'gui_OutputFcn',  @fulanghefei_OutputFcn, ...
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


% --- Executes just before fulanghefei is made visible.
function fulanghefei_OpeningFcn(hObject, eventdata, handles, varargin)
axes(handles.axes1);
imshow(imread('juxing.jpg'));
axes(handles.axes4);
imshow(imread('danfeng.jpg'));
axes(handles.axes5);
imshow(imread('yuankong.jpg'));
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fulanghefei (see VARARGIN)

% Choose default command line output for fulanghefei
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fulanghefei wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fulanghefei_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
close(fulanghefei);
get(juxingyanshe);

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(fulanghefei);
get(danfengyanshe);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
close(fulanghefei);
get(yuankongyanshe);

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
close(fulanghefei);
get(mainsetup);

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
