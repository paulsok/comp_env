function varargout = untitled242(varargin)
% UNTITLED242 M-file for untitled242.fig
%      UNTITLED242, by itself, creates a new UNTITLED242 or raises the existing
%      singleton*.
%
%      H = UNTITLED242 returns the handle to a new UNTITLED242 or the handle to
%      the existing singleton*.
%
%      UNTITLED242('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED242.M with the given input arguments.
%
%      UNTITLED242('Property','Value',...) creates a new UNTITLED242 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled242_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled242_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help untitled242

% Last Modified by GUIDE v2.5 10-May-2011 15:26:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled242_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled242_OutputFcn, ...
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


% --- Executes just before untitled242 is made visible.
function untitled242_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled242 (see VARARGIN)

% Choose default command line output for untitled242
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled242 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled242_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Min.
function Min_Callback(hObject, eventdata, handles)
% hObject    handle to Min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
interval=str2num(get(handles.limit,'String'));
x1=interval(1);
x2=interval(2);
f=inline(get(handles.func,'String'));
g=-sym(f);
fs=inline(g);
x=fminbnd(fs,x1,x2);
y=f(x);
plot(x,y,'r.','MarkerSize',30)


function func_Callback(hObject, eventdata, handles)
% hObject    handle to func (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of func as text
%        str2double(get(hObject,'String')) returns contents of func as a double


% --- Executes during object creation, after setting all properties.
function func_CreateFcn(hObject, eventdata, handles)
% hObject    handle to func (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function limit_Callback(hObject, eventdata, handles)
% hObject    handle to limit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of limit as text
%        str2double(get(hObject,'String')) returns contents of limit as a double


% --- Executes during object creation, after setting all properties.
function limit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to limit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
interval=str2num(get(handles.limit,'String'));
f=inline(get(handles.func,'String'));
[x,y]=fplot(f,interval);
handles.line=plot(x,y,'B-');
guidata(gcbo,handles);
hold on


% --- Executes on button press in Zero.
function Zero_Callback(hObject, eventdata, handles)
% hObject    handle to Zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
interval=str2num(get(handles.limit,'String'));
x1=interval(1);
x2=interval(2);
f=inline(get(handles.func,'String'));
x=fzero(f,(x1+x2)/2);
y=f(x);
plot(x,y,'G.','MarkerSize',30)



% --- Executes on button press in cbX.
function cbX_Callback(hObject, eventdata, handles)
% hObject    handle to cbX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbX
if get(hObject,'Value')
    set(gca,'XGrid','on')
    set(gca,'YGrid','on')
else set(gca,'XGrid','off')
     set(gca,'YGrid','off')
end

% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on selection change in pmcolor.
function pmcolor_Callback(hObject, eventdata, handles)
% hObject    handle to pmcolor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns pmcolor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmcolor

Num=get(hObject,'Value');
switch Num
    case 1
        set(handles.line,'Color','Black');
    case 2
        set(handles.line,'Color','Green'); 
    case 3
        set(handles.line,'Color','Yellow');
end
% --- Executes during object creation, after setting all properties.
function pmcolor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmcolor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

% --- Executes on button press in pus4.
function pus4_Callback(hObject, eventdata, handles)
% hObject    handle to pus4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
interval=str2num(get(handles.limit,'String'));
d=int(get(handles.func,'String'));
t=inline(d);
fplot(t,interval,'R-');
s=char(d);
set(handles.Integral,'String',s);



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;

