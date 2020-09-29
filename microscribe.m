function varargout = microscribe(varargin)
% MICROSCRIBE MATLAB code for microscribe.fig
%      MICROSCRIBE, by itself, creates a new MICROSCRIBE or raises the existing
%      singleton*.
%
%      H = MICROSCRIBE returns the handle to a new MICROSCRIBE or the handle to
%      the existing singleton*.
%
%      MICROSCRIBE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MICROSCRIBE.M with the given input arguments.
%
%      MICROSCRIBE('Property','Value',...) creates a new MICROSCRIBE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before microscribe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to microscribe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help microscribe

% Last Modified by GUIDE v2.5 11-Feb-2015 13:28:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @microscribe_OpeningFcn, ...
                   'gui_OutputFcn',  @microscribe_OutputFcn, ...
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


% --- Executes just before microscribe is made visible.
function microscribe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to microscribe (see VARARGIN)

% Choose default command line output for microscribe
handles.output = hObject;
handles.robot = []; % the robot 
handles.a=0;  %its joints
handles.b = 0;
handles.c=0;  %its joints
handles.d = 0;
handles.e=0;  %its joints
handles.f = 0;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes microscribe wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = microscribe_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function j1_Callback(hObject, eventdata, handles)
% hObject    handle to j1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.f = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function j1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function j2_Callback(hObject, eventdata, handles)
% hObject    handle to j2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.e = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function j2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function j3_Callback(hObject, eventdata, handles)
% hObject    handle to j3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.d = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function j3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function j4_Callback(hObject, eventdata, handles)
% hObject    handle to j4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.c = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function j4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function j5_Callback(hObject, eventdata, handles)
% hObject    handle to j5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.b = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function j5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function j6_Callback(hObject, eventdata, handles)
% hObject    handle to j6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.a = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function j6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to j6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in microscribe.
function microscribe_Callback(hObject, eventdata, handles)
% hObject    handle to microscribe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%           theta d a alpha
L(1)= Link([0 0.21082 0 0]);
L(2)= Link([0 -0.02253 0.02418 0.4999*pi]);
L(3)= Link([0 -0.00030 0.26068 -0.0002*pi]);
L(4)= Link([0 0.23470 0.01389 0.4972*pi]);
L(5)= Link([0 0.00810 -0.01026 -0.5007*pi]);
L(6)= Link([0 -0.13416 0.01016 -0.4994*pi]);
handles.robot = SerialLink(L, 'name', 'MicroScribe');
handles.robot.plot ([handles.a, handles.b, handles.c, handles.d, handles.e, handles.f]);

%Updating the handles structure
guidata(hObject, handles);


% --- Executes on button press in reach.
function reach_Callback(hObject, eventdata, handles)
% hObject    handle to reach (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
for i=1:2*(pi)
    for j=1:(2*pi)
        for k=1:(2*pi)
        t=handles.robot.fkine([i,0,0,0,0,0]);
        p=t(1:3,4);
        hold on
        plot3(p(1),p(2),p(3),'--rs');
       
        end
    end
end
%Updating the handles structure
guidata(hObject, handles);

% --- Executes on button press in ikine.
function ikine_Callback(hObject, eventdata, handles)
% hObject    handle to ikine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q=[1 1 1 1 1 1];
T=handles.robot.fkine(q);
p=transl(T);
qz=handles.robot.ikine(T,q)
plot3(qz(1),qz(2),qz(3));
%Updating the handles structure
guidata(hObject, handles);
