function varargout = primeroimagencambio(varargin)
% primeroimagencambio MATLAB code for primeroimagencambio.fig
%      primeroimagencambio, by itself, creates a new primeroimagencambio or raises the existing
%      singleton*.
%
%      H = primeroimagencambio returns the handle to a new primeroimagencambio or the handle to
%      the existing singleton*.
%
%      primeroimagencambio('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in primeroimagencambio.M with the given input arguments.
%
%      primeroimagencambio('Property','Value',...) creates a new primeroimagencambio or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before primeroimagencambio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to primeroimagencambio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help primeroimagencambio

% Last Modified by GUIDE v2.5 10-Apr-2020 15:45:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @primeroimagencambio_OpeningFcn, ...
                   'gui_OutputFcn',  @primeroimagencambio_OutputFcn, ...
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


% --- Executes just before primeroimagencambio is made visible.
function primeroimagencambio_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to primeroimagencambio (see VARARGIN)
fondo=imread('imagen1brazo.jpg');
axes(handles.axes1);
axis off;
imshow(fondo);

% Choose default command line output for primeroimagencambio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes primeroimagencambio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = primeroimagencambio_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fondo
inf = get(hObject,'Value');
switch inf
     case 1
        fondo=imread('imagen1brazo.jpg');
        axes(handles.axes1);
        axis off;
        imshow(fondo);
    case 2
        fondo=imread('Renderizado2.jpg');
        axes(handles.axes1);
        axis off;
        imshow(fondo);
end
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


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function posx_Callback(hObject, eventdata, handles)
% hObject    handle to posx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of posx as text
%        str2double(get(hObject,'String')) returns contents of posx as a double


% --- Executes during object creation, after setting all properties.
function posx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to posx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function posy_Callback(hObject, eventdata, handles)
% hObject    handle to posy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of posy as text
%        str2double(get(hObject,'String')) returns contents of posy as a double


% --- Executes during object creation, after setting all properties.
function posy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to posy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function posz_Callback(hObject, eventdata, handles)
% hObject    handle to posz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of posz as text
%        str2double(get(hObject,'String')) returns contents of posz as a double


% --- Executes during object creation, after setting all properties.
function posz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to posz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cinematicainversa.
function cinematicainversa_Callback(hObject, eventdata, handles)
% hObject    handle to cinematicainversa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


c1 = handles.theta_1.String;
c2 = handles.theta_2.String;
c3 = handles.theta_3.String;
c4 = handles.theta_4.String;
c5 = handles.theta_5.String;
c6 = handles.theta_6.String;

% cadtot = strcat('d-',c1,'a-',c2,'a',0,'a',0,'a',0,'a',0,'b')
%  
% 
% seriallist
% conf = serial('COM5','BaudRate',115200);
% fopen(conf)
% pause (1);
% fprintf(conf,cadtot)
% fclose(instrfindall);
% delete(instrfindall);
% matrizpruebainversa=[pox poy poz]

%set(handles.panelprueba,'String',num2str(matrizpruebainversa));



function theta_1_Callback(hObject, eventdata, handles)
% hObject    handle to theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_1 as text
%        str2double(get(hObject,'String')) returns contents of theta_1 as a double


% --- Executes during object creation, after setting all properties.
function theta_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_2_Callback(hObject, eventdata, handles)
% hObject    handle to theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_2 as text
%        str2double(get(hObject,'String')) returns contents of theta_2 as a double


% --- Executes during object creation, after setting all properties.
function theta_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_3_Callback(hObject, eventdata, handles)
% hObject    handle to theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_3 as text
%        str2double(get(hObject,'String')) returns contents of theta_3 as a double


% --- Executes during object creation, after setting all properties.
function theta_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_4_Callback(hObject, eventdata, handles)
% hObject    handle to theta_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_4 as text
%        str2double(get(hObject,'String')) returns contents of theta_4 as a double


% --- Executes during object creation, after setting all properties.
function theta_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_5_Callback(hObject, eventdata, handles)
% hObject    handle to theta_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_5 as text
%        str2double(get(hObject,'String')) returns contents of theta_5 as a double


% --- Executes during object creation, after setting all properties.
function theta_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_6_Callback(hObject, eventdata, handles)
% hObject    handle to theta_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_6 as text
%        str2double(get(hObject,'String')) returns contents of theta_6 as a double


% --- Executes during object creation, after setting all properties.
function theta_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cinematicadirecta.
function cinematicadirecta_Callback(hObject, eventdata, handles)
% hObject    handle to cinematicadirecta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB

c1 = handles.theta_1.String;
c2 = handles.theta_2.String;
c3 = handles.theta_3.String;
c4 = handles.theta_4.String;
c5 = handles.theta_5.String;
c6 = handles.theta_6.String;

c111=str2double(c1)
c222=str2double(c2)
c333=str2double(c3)
c444=str2double(c4)
c555=str2double(c5)
c666=str2double(c6)

if ((c111>30)||(c222>30)||(c333>90)||(c444>90)||(c555>90)||(c666>90))
    c1='0';c2='0';c3='0';c4='0';c5='0';c6='0';
    
elseif ((c111<-30)||(c222<-30)||(c333<-90)||(c444<-90)||(c555<-90)||(c666<-90))
    c1='0';c2='0';c3='0';c4='0';c5='0';c6='0';
    
else
    c1 = handles.theta_1.String
    c2 = handles.theta_2.String;
    c3 = handles.theta_3.String;
    c4 = handles.theta_4.String;
    c5 = handles.theta_5.String;
    c6 = handles.theta_6.String;
end

% cadtot = strcat('d',c1,'a',c2,'a',c3,'a',c4,'a',c5,'a',c6,'b')
%  
% 
% seriallist
% conf = serial('COM5','BaudRate',115200);
% fopen(conf)
% pause (1);
% fprintf(conf,cadtot)
% 
% fclose(instrfindall);
% delete(instrfindall);
Th_1 = str2double(handles.angf1.String);
Th_2 = str2double(handles.angf2.String);
Th_3 = str2double(handles.angf3.String);
Th_4 = str2double(handles.angf4.String);
Th_5 = str2double(handles.angf5.String);
Th_6 = str2double(handles.angf6.String);

matrizprueba=[Th_1 Th_2 Th_3 Th_4 Th_5 Th_6];

syms T3 T4 T5 T6 L3 L4 L5 L6 D1 D2 
pi=sym('pi');

% V1=[   180,  D1,   0, -90];
% V2=[    90,  D2,   0,  90];
% V3=[T3+180,  L3,   0,  90];
% V4=[ T4-90,   0, -L4,   0];
% V5=[    T5,   0, -L5,   0];
% V6=[    T6,   0, -L6,   0];

d2 =Th_1;
d1 =Th_2;
q3 = Th_3;
q4 =Th_4;
q5 =Th_5;
q6 =Th_6;

if (q3==0)
    q3=0.01;
elseif (q3==90)
    q3=89;
elseif (q3==-90)
    q3=-89;
else
    q3=Th_3;
end

V1=[    180,   d1,     0, -90];
V2=[     90,   d2,     0,  90];
V3=[ q3+180,    0,     0,  90];
V4=[  q4-90,    0, -15.5,   0];
V5=[     q5,    0, -15.5,   0];
V6=[     q6,    0,  -5.7,   0];

A1=[cosd(V1(1)), -cosd(V1(4))*sind(V1(1)),  sind(V1(4))*sind(V1(1)), V1(3)*cosd(V1(1));
    sind(V1(1)),  cosd(V1(4))*cosd(V1(1)), -sind(V1(4))*cosd(V1(1)), V1(3)*sind(V1(1));
              0,              sind(V1(4)),              cosd(V1(4)),             V1(2);
              0,                        0,                        0,                1];

A2=[cosd(V2(1)), -cosd(V2(4))*sind(V2(1)),  sind(V2(4))*sind(V2(1)), V2(3)*cosd(V2(1));
    sind(V2(1)),  cosd(V2(4))*cosd(V2(1)), -sind(V2(4))*cosd(V2(1)), V2(3)*sind(V2(1));
              0,              sind(V2(4)),              cosd(V2(4)),             V2(2);
              0,                        0,                        0,                1];

A3=[cosd(V3(1)), -cosd(V3(4))*sind(V3(1)),  sind(V3(4))*sind(V3(1)), V3(3)*cosd(V3(1));
    sind(V3(1)),  cosd(V3(4))*cosd(V3(1)), -sind(V3(4))*cosd(V3(1)), V3(3)*sind(V3(1));
              0,              sind(V3(4)),              cosd(V3(4)),             V3(2);
              0,                        0,                        0,                1];

A4=[cosd(V4(1)), -cosd(V4(4))*sind(V4(1)),  sind(V4(4))*sind(V4(1)), V4(3)*cosd(V4(1));
    sind(V4(1)),  cosd(V4(4))*cosd(V4(1)), -sind(V4(4))*cosd(V4(1)), V4(3)*sind(V4(1));
              0,              sind(V4(4)),              cosd(V4(4)),             V4(2);
              0,                        0,                        0,                1];

A5=[cosd(V5(1)), -cosd(V5(4))*sind(V5(1)),  sind(V5(4))*sind(V5(1)), V5(3)*cosd(V5(1));
    sind(V5(1)),  cosd(V5(4))*cosd(V5(1)), -sind(V5(4))*cosd(V5(1)), V5(3)*sind(V5(1));
              0,              sind(V5(4)),              cosd(V5(4)),             V5(2);
              0,                        0,                        0,                1];

A6=[cosd(V6(1)), -cosd(V6(4))*sind(V6(1)),  sind(V6(4))*sind(V6(1)), V6(3)*cosd(V6(1));
    sind(V6(1)),  cosd(V6(4))*cosd(V6(1)), -sind(V6(4))*cosd(V6(1)), V6(3)*sind(V6(1));
              0,              sind(V6(4)),              cosd(V6(4)),             V6(2);
              0,                        0,                        0,                1];

Z=A1*A2*A3*A4*A5*A6

a11=Z(1,1);
a12=Z(1,2);
a21=Z(2,1);
a22=Z(2,2);
a23=Z(2,3);
a31=Z(3,1);
a32=Z(3,2);
a33=Z(3,3);
Py=Z(2,4)
Pz=Z(3,4)
Px=Z(1,4)
L7=0;
L4=0;
L3=0;
L6=15.5;
L8=5.7;
L5=15.5;
ST3 = sind(q3);
CT3 = cosd(q3);
CT4 = cosd(q4);
CT45 = cosd(q4+q5);
CT456 = cosd(q4+q5+q6);
ST4 = sind(q4);
ST45 = sind(q4+q5);
ST456 = sind(q4+q5+q6);

A = Px+L3;
B = Py + L7*CT3 + L4*ST3
C = Pz + L4*CT3 - L7*ST3
D = (B+d2)/ST3;
D2 = (C-d1)/CT3;
Q1 = (a33/-a23)*(C-d1)-B
E = D + L8*ST456;
F = -Px - L8*CT456 - L3;
G = L6^2 - L5^2 - E^2 - F^2;
H = G/(2*L5);
R = sqrt(E^2+F^2);

M = L7/ST3;
K = CT3*Py;
L = ST3*Pz;
N = K/ST3;
O = CT3/ST3;
P = L/ST3;
T = M/CT3;
U = N/CT3;
V = Pz/CT3;
W = O/CT3;
X = C/CT3 + T + U - V;
Y = B/ST3;

AA = X + W*d2;
AB = Y + d2/ST3;
AC = W - 1/ST3;
AD = Y-X;
AE = d2*(W - 1/ST3);

RQ2 = (Y - X)/AC;

Q2 = -M-N-O*d2 + Pz

RT3 = atand(a33/-a23)

alfa = atand(F/E);
RT4 = -asind(H/R) + alfa;
RT41 = asind(H/R) - alfa;
RT42 = -asind(H/R) - alfa;
RT43 = asind(H/R) + alfa;
RT44 = -asind(H/R) + alfa - 180;
RT45 = -asind(H/R) - alfa + 180;
RT46 = -asind(H/R) - alfa - 180;
RT47 = asind(H/R) + alfa - 180;
RT48 = asind(H/R) + alfa + 180;
RT49 = asind(H/R) - alfa + 180;

MRTT4=[RT4 RT41 RT42 RT43 RT44 RT45 RT46 RT47 RT48 RT49];

MRTT4B =find(abs(MRTT4-q4)< 0.001);
MRTT4B1=(MRTT4B(1));
RRTT4=abs(MRTT4(MRTT4B1));
RRTT41=RRTT4(1)

T45 =RRTT41+q5;
RT5 = T45-RRTT41
%
% T451 =RT4+q5;
% RT51 = T451-RT4;
% 
% T452 =RT41+q5;
% RT52 = T452-RT41;
% 
% T453 =RT42+q5;
% RT52 = T453-RT42;
% 
% T454 =RT43+q5;
% RT54 = T454-RT43;
% 
% T455 =RT44+q5;
% RT55 = T455-RT44;
% 
% T4566 =RT45+q5;
% RT56 = T4566-RT45;
% 
% T457 =RT46+q5;
% RT57 = T457-RT46;
% 
% T458 =RT47+q5;
% RT58 = T458-RT47;
% 
% T459 =RT48+q5;
% RT59 = T459-RT48;
% 
% T4510 =RT49+q5;
% RT510 = T4510-RT49;

T456 = RRTT41+RT5+q6;
RT6 = T456-RT5-RRTT41
% T45 = q4+q5;
% RT5 = T45-q4
% 
% T456 = q4+q5+q6;
% RT6 = T456-q5-q4
angulosfinales=[Q1 0 0 0 0 0 0 0 0 0; Q2  0 0 0 0 0 0 0 0 0;RT3 0 0 0 0 0 0 0 0 0;RT4 RT41 RT42 RT43 RT44 RT45 RT46 RT47 RT48 RT49;RT5 0 0 0 0 0 0 0 0 0 ;RT6 0 0 0 0 0 0 0 0 0];
set(handles.resx,'String',Z(3,4));
set(handles.resy,'String',Z(2,4));
set(handles.resz,'String',Z(1,4));
set(handles.respuesta,'data',Z);
set(handles.tablangulos,'data',angulosfinales);
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function panelprueba_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panelprueba (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when entered data in editable cell(s) in respuesta.
function respuesta_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to respuesta (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function resx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function resy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function resz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when entered data in editable cell(s) in tablangulos.
function tablangulos_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tablangulos (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in coordinada1.
function coordinada1_Callback(hObject, eventdata, handles)
% hObject    handle to coordinada1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Th_1 = str2double(handles.theta_1.String);
Th_2 = str2double(handles.theta_2.String);
Th_3 = str2double(handles.theta_3.String);
Th_4 = str2double(handles.theta_4.String);
Th_5 = str2double(handles.theta_5.String);
Th_6 = str2double(handles.theta_6.String);

anf1 = str2double(handles.angf1.String);
anf2 = str2double(handles.angf2.String);
anf3 = str2double(handles.angf3.String);
anf4 = str2double(handles.angf4.String);
anf5 = str2double(handles.angf5.String);
anf6 = str2double(handles.angf6.String);
%Valores articulares iniciales
D1 = Th_1;
D2 = Th_2;
Q3 = Th_3;
Q4 = Th_4;
Q5 = Th_5;
Q6 = Th_6;
%Valores articulares finales
qf1 = anf1;
qf2 = anf2;
qf3 = anf3;
qf4 = anf4;
qf5 = anf5;
qf6 = anf6;
%Numero de puntos
ti = 2;
N = 100;
V = 3;
a = 2;

T1 = TrapezoidalTiempoCoordinado(D1, qf1, 2, 3, N, ti);
T2 = TrapezoidalTiempoCoordinado(D2, qf2, 2, 3, N, ti);
T3 = TrapezoidalTiempoCoordinado(Q3, qf3, 2, 3, N, ti);
T4 = TrapezoidalTiempoCoordinado(Q4, qf4, 2, 3, N, ti);
T5 = TrapezoidalTiempoCoordinado(Q5, qf5, 2, 3, N, ti);
T6 = TrapezoidalTiempoCoordinado(Q6, qf6, 2, 3, N, ti);
pause(1);

T = [T1, T2, T3, T4, T5, T6];
TM = max(T)+ti;

figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

S1 = InterpoladorTCoordinado(D1, qf1, a, V, N, ti, TM,1,2,3);

S2 = InterpoladorTCoordinado(D2, qf2, a, V, N, ti, TM,4,5,6);

S3 = InterpoladorTCoordinado(Q3, qf3, a, V, N, ti, TM,7,8,9);

S4 = InterpoladorTCoordinado(Q4, qf4, a, V, N, ti, TM,10,11,12);

S5 = InterpoladorTCoordinado(Q5, qf5, a, V, N, ti, TM,13,14,15);

S6 = InterpoladorTCoordinado(Q6, qf6, a, V, N, ti, TM,16,17,18);
pause(1);

Y = ManipuladorCartesianoCoordinada(S1, S2, S3, S4, S5, S6, N);
pause(2);



% --- Executes on button press in ejeaeje1.
function ejeaeje1_Callback(hObject, eventdata, handles)
% hObject    handle to ejeaeje1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Th_1 = str2double(handles.theta_1.String);
Th_2 = str2double(handles.theta_2.String);
Th_3 = str2double(handles.theta_3.String);
Th_4 = str2double(handles.theta_4.String);
Th_5 = str2double(handles.theta_5.String);
Th_6 = str2double(handles.theta_6.String);

anf1 = str2double(handles.angf1.String);
anf2 = str2double(handles.angf2.String);
anf3 = str2double(handles.angf3.String);
anf4 = str2double(handles.angf4.String);
anf5 = str2double(handles.angf5.String);
anf6 = str2double(handles.angf6.String);

%Valores articulares iniciales
D1 = Th_1;
D2 = Th_2;
Q3 = Th_3;
Q4 = Th_4;
Q5 = Th_5;
Q6 = Th_6;
%Valores articulares finales
qf1 = anf1;
qf2 = anf2;
qf3 = anf3;
qf4 = anf4;
qf5 = anf5;
qf6 = anf6;
ti = 0;
N = 100;

figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

T1 = TrapezoidalTiempoEje(D1, qf1, 2, 3, N);
T2 = TrapezoidalTiempoEje(D2, qf2, 2, 3, N);
T3 = TrapezoidalTiempoEje(Q3, qf3, 2, 3, N);
T4 = TrapezoidalTiempoEje(Q4, qf4, 2, 3, N);
T5 = TrapezoidalTiempoEje(Q5, qf5, 2, 3, N);
T6 = TrapezoidalTiempoEje(Q6, qf6, 2, 3, N);
pause(1);

S1 = InterpoladorTrapezoidalEje(D1, qf1, 2, 3, N,1,2,3, ti);

S2 = InterpoladorTrapezoidalEje(D2, qf2, 2, 3, N,4,5,6, T1);

S3 = InterpoladorTrapezoidalEje(Q3, qf3, 2, 3, N,7,8,9, T2+T1);

S4 = InterpoladorTrapezoidalEje(Q4, qf4, 2, 3, N,10,11,12, T3+T2+T1);

S5 = InterpoladorTrapezoidalEje(Q5, qf5, 2, 3, N,13,14,15, T4+T3+T2+T1);

S6 = InterpoladorTrapezoidalEje(Q6, qf6, 2, 3, N,16,17,18, T5+T4+T3+T2+T1);
pause(0.5);

figure
Y = ManipuladorCartesianoEjeTrapezoidal(S1, S2, S3, S4, S5, S6, D2, Q3, Q4, Q5, Q6, N);
pause(2);



% --- Executes on button press in simultanea1.
function simultanea1_Callback(hObject, eventdata, handles)
% hObject    handle to simultanea1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Th_1 = str2double(handles.theta_1.String);
Th_2 = str2double(handles.theta_2.String);
Th_3 = str2double(handles.theta_3.String);
Th_4 = str2double(handles.theta_4.String);
Th_5 = str2double(handles.theta_5.String);
Th_6 = str2double(handles.theta_6.String);

anf1 = str2double(handles.angf1.String);
anf2 = str2double(handles.angf2.String);
anf3 = str2double(handles.angf3.String);
anf4 = str2double(handles.angf4.String);
anf5 = str2double(handles.angf5.String);
anf6 = str2double(handles.angf6.String);
%Valores articulares iniciales
D1 = Th_1;
D2 = Th_2;
Q3 = Th_3;
Q4 = Th_4;
Q5 = Th_5;
Q6 = Th_6;
%Valores articulares finales
qf1 = anf1;
qf2 = anf2;
qf3 = anf3;
qf4 = anf4;
qf5 = anf5;
qf6 = anf6;
%Numero de puntos
ti = 2;
N = 200;
V = 3;
a = 2;

T1 = TrapezoidalTiempoSimultaneo(D1, qf1, 2, 3, N, ti);
T2 = TrapezoidalTiempoSimultaneo(D2, qf2, 2, 3, N, ti);
T3 = TrapezoidalTiempoSimultaneo(Q3, qf3, 2, 3, N, ti);
T4 = TrapezoidalTiempoSimultaneo(Q4, qf4, 2, 3, N, ti);
T5 = TrapezoidalTiempoSimultaneo(Q5, qf5, 2, 3, N, ti);
T6 = TrapezoidalTiempoSimultaneo(Q6, qf6, 2, 3, N, ti);
pause(1);

T = [T1, T2, T3, T4, T5, T6];
TM = max(T)+ti;

figure(1);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);


S1 = InterpoladorTrapezoidalSimultaneo(D1, qf1, a, V, N, ti,1,2,3);

S2 = InterpoladorTrapezoidalSimultaneo(D2, qf2, a, V, N, ti,4,5,6);

S3 = InterpoladorTrapezoidalSimultaneo(Q3, qf3, a, V, N, ti,7,8,9);

S4 = InterpoladorTrapezoidalSimultaneo(Q4, qf4, a, V, N, ti,10,11,12);

S5 = InterpoladorTrapezoidalSimultaneo(Q5, qf5, a, V, N, ti,13,14,15);

S6 = InterpoladorTrapezoidalSimultaneo(Q6, qf6, a, V, N, ti,16,17,18);
pause(1);

M1 = PruebaTSimultaneo(D1, qf1, a, V, N, TM);
M2 = PruebaTSimultaneo(D2, qf2, a, V, N, TM);
M3 = PruebaTSimultaneo(Q3, qf3, a, V, N, TM);
M4 = PruebaTSimultaneo(Q4, qf4, a, V, N, TM);
M5 = PruebaTSimultaneo(Q5, qf5, a, V, N, TM);
M6 = PruebaTSimultaneo(Q6, qf6, a, V, N, TM);

Y = ManipuladorCartesianoSimultaneaTrapezoidal(M1, M2, M3, M4, M5, M6, N);
pause(1);



% --- Executes on button press in continua1.
function continua1_Callback(hObject, eventdata, handles)
% hObject    handle to continua1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function angf1_Callback(hObject, eventdata, handles)
% hObject    handle to angf1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angf1 as text
%        str2double(get(hObject,'String')) returns contents of angf1 as a double


% --- Executes during object creation, after setting all properties.
function angf1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angf1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angf2_Callback(hObject, eventdata, handles)
% hObject    handle to angf2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angf2 as text
%        str2double(get(hObject,'String')) returns contents of angf2 as a double


% --- Executes during object creation, after setting all properties.
function angf2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angf2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angf3_Callback(hObject, eventdata, handles)
% hObject    handle to angf3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angf3 as text
%        str2double(get(hObject,'String')) returns contents of angf3 as a double


% --- Executes during object creation, after setting all properties.
function angf3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angf3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angf4_Callback(hObject, eventdata, handles)
% hObject    handle to angf4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angf4 as text
%        str2double(get(hObject,'String')) returns contents of angf4 as a double


% --- Executes during object creation, after setting all properties.
function angf4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angf4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angf5_Callback(hObject, eventdata, handles)
% hObject    handle to angf5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angf5 as text
%        str2double(get(hObject,'String')) returns contents of angf5 as a double


% --- Executes during object creation, after setting all properties.
function angf5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angf5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function angf6_Callback(hObject, eventdata, handles)
% hObject    handle to angf6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of angf6 as text
%        str2double(get(hObject,'String')) returns contents of angf6 as a double


% --- Executes during object creation, after setting all properties.
function angf6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to angf6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in coordinada2.
function coordinada2_Callback(hObject, eventdata, handles)
% hObject    handle to coordinada2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Th_1 = str2double(handles.theta_1.String);
Th_2 = str2double(handles.theta_2.String);
Th_3 = str2double(handles.theta_3.String);
Th_4 = str2double(handles.theta_4.String);
Th_5 = str2double(handles.theta_5.String);
Th_6 = str2double(handles.theta_6.String);

anf1 = str2double(handles.angf1.String);
anf2 = str2double(handles.angf2.String);
anf3 = str2double(handles.angf3.String);
anf4 = str2double(handles.angf4.String);
anf5 = str2double(handles.angf5.String);
anf6 = str2double(handles.angf6.String);

N1 = 6;     %Numero de q para la primera trayectoria
n = 100;

D1 = Th_1;
DF1 = anf1;
inc1 = (DF1-D1)/5;

D2 = Th_2;
DF2 = anf2;
inc2 = (DF2-D2)/5;

Q3 = Th_3;
QF3 = anf3;
inc3 = (QF3-Q3)/5;

Q4 = Th_4;
QF4 = anf4;
inc4 = (QF4-Q4)/5;

Q5 = Th_5;
QF5 = anf5;
inc5 = (QF5-Q5)/5;

Q6 = Th_6;
QF6 = anf6;
inc6 = (QF6-Q6)/5;

x = 0:0.22:22;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = PrimerInterpoladorCoordinado(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x,A11),title('Grafica de Posición Q1');

A12 = PrimerInterpoladorCoordinado(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);     %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x,A12),title('Grafica de Posición Q2');

A13 = PrimerInterpoladorCoordinado(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x,A13),title('Grafica de Posición Q3');

A14 = PrimerInterpoladorCoordinado(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x,A14),title('Grafica de Posición Q4');

A15 = PrimerInterpoladorCoordinado(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x,A15),title('Grafica de Posición Q5');

A16 = PrimerInterpoladorCoordinado(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x,A16),title('Grafica de Posición Q8');
pause(0.5)

Y = ManipuladorCartesianoCoordinada(A11, A12, A13, A14, A15, A16, n);  %Grafico los vectores de posicion obtenidos
pause(2);



% --- Executes on button press in ejeaeje2.
function ejeaeje2_Callback(hObject, eventdata, handles)
% hObject    handle to ejeaeje2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Th_1 = str2double(handles.theta_1.String);
Th_2 = str2double(handles.theta_2.String);
Th_3 = str2double(handles.theta_3.String);
Th_4 = str2double(handles.theta_4.String);
Th_5 = str2double(handles.theta_5.String);
Th_6 = str2double(handles.theta_6.String);

anf1 = str2double(handles.angf1.String);
anf2 = str2double(handles.angf2.String);
anf3 = str2double(handles.angf3.String);
anf4 = str2double(handles.angf4.String);
anf5 = str2double(handles.angf5.String);
anf6 = str2double(handles.angf6.String);

N1 = 6;     %Numero de q para la primera trayectoria
n = 100;

D1 = Th_1;
DF1 = anf1;
inc1 = (DF1-D1)/5;

D2 = Th_2;
DF2 = anf2;
inc2 = (DF2-D2)/5;

Q3 = Th_3;
QF3 = anf3;
inc3 = (QF3-Q3)/5;

Q4 = Th_4;
QF4 = anf4;
inc4 = (QF4-Q4)/5;

Q5 = Th_5;
QF5 = anf5;
inc5 = (QF5-Q5)/5;

Q6 = Th_6;
QF6 = anf6;
inc6 = (QF6-Q6)/5;

T1 = PrimerInterpoladorTiempoCubico(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1);
T2 = PrimerInterpoladorTiempoCubico(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);
T3 = PrimerInterpoladorTiempoCubico(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);
T4 = PrimerInterpoladorTiempoCubico(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);
T5 = PrimerInterpoladorTiempoCubico(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);
T6 = PrimerInterpoladorTiempoCubico(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);

x1 = 0:T1/n:T1;
x2 = 0:T2/n:T2;
x3 = 0:T3/n:T3;
x4 = 0:T4/n:T4;
x5 = 0:T5/n:T5;
x6 = 0:T6/n:T6;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = InterpoladorEjeCubico(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x1,A11),title('Grafica de Posición Q1');

A12 = InterpoladorEjeCubico(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);     %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x2+T1,A12),title('Grafica de Posición Q2');

A13 = InterpoladorEjeCubico(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x3+T1+T2,A13),title('Grafica de Posición Q3');

A14 = InterpoladorEjeCubico(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x4+T1+T2+T3,A14),title('Grafica de Posición Q4');

A15 = InterpoladorEjeCubico(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x5+T1+T2+T3+T4,A15),title('Grafica de Posición Q5');

A16 = InterpoladorEjeCubico(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x6+T1+T2+T3+T4+T5,A16),title('Grafica de Posición Q6');
pause(0.5)

Y = ManipuladorCartesianoEjeCubico(A11, A12, A13, A14, A15, A16, D2, Q3, Q4, Q5, Q6, n);  %Grafico los vectores de posicion obtenidos
pause(2);




% --- Executes on button press in simultanea2.
function simultanea2_Callback(hObject, eventdata, handles)
% hObject    handle to simultanea2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Th_1 = str2double(handles.theta_1.String);
Th_2 = str2double(handles.theta_2.String);
Th_3 = str2double(handles.theta_3.String);
Th_4 = str2double(handles.theta_4.String);
Th_5 = str2double(handles.theta_5.String);
Th_6 = str2double(handles.theta_6.String);

anf1 = str2double(handles.angf1.String);
anf2 = str2double(handles.angf2.String);
anf3 = str2double(handles.angf3.String);
anf4 = str2double(handles.angf4.String);
anf5 = str2double(handles.angf5.String);
anf6 = str2double(handles.angf6.String);

N1 = 6;     %Numero de q para la primera trayectoria
n = 100;

D1 = Th_1;
DF1 = anf1;
inc1 = (DF1-D1)/5;
t1 = [0,4,8,14,18,24];
TM1 = max(t1);

D2 = Th_2;
DF2 = anf2;
inc2 = (DF2-D2)/5;
t2 = [0,2,5,11,14,20];
TM2 = max(t2);

Q3 = Th_3;
QF3 = anf3;
inc3 = (QF3-Q3)/5;
t3 = [0,5,10,15,19,26];
TM3 = max(t3);

Q4 = Th_4;
QF4 = anf4;
inc4 = (QF4-Q4)/5;
t4 = [0,5,10,14,18,23];
TM4 = max(t4);

Q5 = Th_5;
QF5 = anf5;
inc5 = (QF5-Q5)/5;
t5 = [0,6,11,17,21,27];
TM5 = max(t5);

Q6 = Th_6;
QF6 = anf6;
inc6 = (QF6-Q6)/5;
t6 = [0,4,8,12,17,22];
TM6 = max(t6);

TM = [TM1, TM2, TM3, TM4, TM5, TM6];
Tmax = max(TM);

x = 0:0.22:22;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = InterpoladorCubicoSimultaneo(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x,A11),title('Grafica de Posición Q1');

A12 = InterpoladorCubicoSimultaneo(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1);  %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x,A12),title('Grafica de Posición Q2');

A13 = InterpoladorCubicoSimultaneo(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x,A13),title('Grafica de Posición Q3');

A14 = InterpoladorCubicoSimultaneo(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1);  %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x,A14),title('Grafica de Posición Q4');

A15 = InterpoladorCubicoSimultaneo(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1);  %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x,A15),title('Grafica de Posición Q5');

A16 = InterpoladorCubicoSimultaneo(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1);  %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x,A16),title('Grafica de Posición Q6');
pause(0.5)

M1 = InterpoladorCubicoVector(D1, D1+(inc1*1), D1+(inc1*2), D1+(inc1*3), D1+(inc1*4), DF1, N1, t1, n, Tmax); 
pause(0.5)
M2 = InterpoladorCubicoVector(D2, D2+(inc2*1), D2+(inc2*2), D2+(inc2*3), D2+(inc2*4), DF2, N1, t2, n, Tmax);      
pause(0.5)
M3 = InterpoladorCubicoVector(Q3, Q3+(inc3*1), Q3+(inc3*2), Q3+(inc3*3), Q3+(inc3*4), QF3, N1, t3, n, Tmax);  
pause(0.5)
M4 = InterpoladorCubicoVector(Q4, Q4+(inc4*1), Q4+(inc4*2), Q4+(inc4*3), Q4+(inc4*4), QF4, N1, t4, n, Tmax);      
pause(0.5)
M5 = InterpoladorCubicoVector(Q5, Q5+(inc5*1), Q5+(inc5*2), Q5+(inc5*3), Q5+(inc5*4), QF5, N1, t5, n, Tmax);     
pause(0.5)
M6 = InterpoladorCubicoVector(Q6, Q6+(inc6*1), Q6+(inc6*2), Q6+(inc6*3), Q6+(inc6*4), QF6, N1, t6, n, Tmax);     
pause(0.5)

Y = ManipuladorCartesianoSimultaneaCubico(M1, M2, M3, M4, M5, M6, n);  %Grafico los vectores de posicion obtenidos
pause(2);



% --- Executes on button press in continua2.
function continua2_Callback(hObject, eventdata, handles)
% hObject    handle to continua2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opcionesco = str2double(handles.texconti.String);
    %%%%%%%%%%%%%%%%%%%%%%PUNTOS VALIDOS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%INGRESO DE LOS PUNTOS INICIAL Y FINAL
R=opcionesco;

if ((R>=1) && (R<=10))
    %%Puntos
%INICIAL PI = [-19.0532, -35.9398, 4.9788]
%FINAL   PF = [-1.2, -26.0432, -11.0618]
    if R==1
        T1 =[5,5,5,5,5,5]; 
        T2 =[10,7,6,6,7,8];
        T3 =[90,83,76,69,60,53];
        T4 =[35,35,35,35,35,35];
        T5 =[25,36,47,56,69,80];
        T6 =[50,50,50,50,50,50];
    
%%Puntos
%INICIAL PI = [-8.4571, 3.7157, -9.667]
%FINAL   PF = [-20.8683, 13.6262, 5.74455]
    elseif R==2
        T1 =[10,12,14,16,15,12]; 
        T2 =[10,10,10,10,10,10];
        T3 =[-35,-40,-45,-50,-60,-75];
        T4 =[20,20,20,20,20,20];
        T5 =[80,73,66,59,52,45];
        T6 =[30,30,30,30,30,30];
    
%Puntos
%INICIAL PI = [-36.7, -11.994, 0]
%FINAL   PF = [-24.8682, -17.7422, 9.9912]
    elseif R==3
        T1 =[0,2,4,6,8,10]; 
        T2 =[12,12,12,12,12,12];
        T3 =[0,18,36,54,72,90];
        T4 =[0,-10,-20,-30,-40,-50];
        T5 =[0,18,36,54,72,90];
        T6 =[0,6,12,18,24,30];
    
%Puntos
%INICIAL PI = [-28.6156, -15.3857, 19.9905]
%FINAL   PF = [-28.6085, -10.3877, 10.0046]
    elseif R==4
        T1 =[20,18,16,14,12,10]; 
        T2 =[15,14,13,12,11,10];
        T3 =[90,90,90,90,90,90];
        T4 =[-50,-50,-50,-50,-50,-50];
        T5 =[90,90,90,90,90,90];
        T6 =[-40,-40,-40,-40,-40,-40];
    
%Puntos
%INICIAL PI = [-36.7, -2.9986, 4.9977]
%FINAL   PF = [-36.7, -14.9931, 19.9907]
    elseif R==5
        T1 =[5,8,11,14,17,20]; 
        T2 =[3,5.4,7.8,10.2,12.6,15];
        T3 =[0,0,0,0,0,0];
        T4 =[0,0,0,0,0,0];
        T5 =[0,0,0,0,0,0];
        T6 =[0,0,0,0,0,0];
    
%Puntos
%INICIAL PI = [-36.7, -19.9907, 14.9931]
%FINAL   PF = [-36.7, -9.9954, 14.9931]
    elseif R==6
        T1 =[15,15,15,15,15,15]; 
        T2 =[20,18,16,14,12,10];
        T3 =[0,0,0,0,0,0];
        T4 =[0,0,0,0,0,0];
        T5 =[0,0,0,0,0,0];
        T6 =[0,0,0,0,0,0];
    
%Puntos
%INICIAL PI = [-36.7, -11.994, 4.9977]
%FINAL   PF = [-36.7, -11.9944, 14.9931]
    elseif R==7
        T1 =[5,7,9,11,13,15]; 
        T2 =[12,12,12,12,12,12];
        T3 =[0,0,0,0,0,0];
        T4 =[0,0,0,0,0,0];
        T5 =[0,0,0,0,0,0];
        T6 =[0,0,0,0,0,0];
    
%Puntos
%INICIAL PI = [-28.6156, -10.3871, 9.9951]
%FINAL   PF = [-28.6156, -10.3871, 24.9881]
    elseif R==8
        T1 =[10,13,16,19,22,25]; 
        T2 =[10,10,10,10,10,10];
        T3 =[90,90,90,90,90,90];
        T4 =[-50,-50,-50,-50,-50,-50];
        T5 =[90,90,90,90,90,90];
        T6 =[-40,-40,-40,-40,-40,-40];
 
%Puntos
%INICIAL PI = [-28.6085, -3.3863, 14.9931]
%FINAL   PF = [-28.6085, -16.3816, 15]
    elseif R==9
        T1 =[15,15,15,15,15,15]; 
        T2 =[3,5.6,8.2,10.8,13.4,16];
        T3 =[90,90,90,90,90,90];
        T4 =[-50,-50,-50,-50,-50,-50];
        T5 =[90,90,90,90,90,90];
        T6 =[-40,-40,-40,-40,-40,-40];
    
%Puntos
%INICIAL PI = [-28.6085, -10.38301 9.9954]
%FINAL   PF = [-28.6085, -15.3853, 15.0023]
    elseif R==10
        T1 =[10,12,14,16,18,20]; 
        T2 =[10,11,12,13,14,15];
        T3 =[90,90,90,90,90,90];
        T4 =[-50,-50,-50,-50,-50,-50];
        T5 =[90,90,90,90,90,90];
        T6 =[-40,-40,-40,-40,-40,-40];
    end
else
    %valor por defecto R=1;
    T1 =[5,5,5,5,5,5]; 
    T2 =[10,7,6,6,7,8];
    T3 =[90,83,76,69,60,53];
    T4 =[35,35,35,35,35,35];
    T5 =[25,36,47,56,69,80];
    T6 =[50,50,50,50,50,50];
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
N1 = 6;     %Numero de q para la primera trayectoria
n = 100;

D1 = T1(1);
DF1 = T1(6);

D2 = T2(1);
DF2 = T2(6);

Q3 = T3(1);
QF3 = T3(6);

Q4 = T4(1);
QF4 = T4(6);

Q5 = T5(1);
QF5 = T5(6);

Q6 = T6(1);
QF6 = T6(6);

x = 0:0.22:22;
figure(2);
pause(0.00001);
frame_h = get(handle(gcf),'JavaFrame');
set(frame_h,'Maximized',1);

A11 = PrimerInterpoladorContinua(T1(1),T1(2),T1(3),T1(4),T1(5),T1(6),N1); %Valores para q1 en la trayectoria 1
subplot(2,3,1),plot(x,A11),title('Grafica de Posición Q1');

A12 = PrimerInterpoladorContinua(T2(1),T2(2),T2(3),T2(4),T2(5),T2(6),N1);     %Valores para q2 en la trayectoria 1
subplot(2,3,2),plot(x,A12),title('Grafica de Posición Q2');

A13 = PrimerInterpoladorContinua(T3(1),T3(2),T3(3),T3(4),T3(5),T3(6), N1);  %Valores para q3 en la trayectoria 1
subplot(2,3,3),plot(x,A13),title('Grafica de Posición Q3');

A14 = PrimerInterpoladorContinua(T4(1),T4(2),T4(3),T4(4),T4(5),T4(6), N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,4),plot(x,A14),title('Grafica de Posición Q4');

A15 = PrimerInterpoladorContinua(T5(1),T5(2),T5(3),T5(4),T5(5), T5(6),N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,5),plot(x,A15),title('Grafica de Posición Q5');

A16 = PrimerInterpoladorContinua(T6(1),T6(2),T6(3),T6(4),T6(5),T6(6), N1);     %Valores para q4 en la trayectoria 1
subplot(2,3,6),plot(x,A16),title('Grafica de Posición Q6');
pause(0.5)

Y = ManipuladorCartesianoContinua(A11, A12, A13, A14, A15, A16, n);  %Grafico los vectores de posicion obtenidos
pause(2);


% --- Executes during object creation, after setting all properties.
function uipanel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function texconti_Callback(hObject, eventdata, handles)
% hObject    handle to texconti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of texconti as text
%        str2double(get(hObject,'String')) returns contents of texconti as a double


% --- Executes during object creation, after setting all properties.
function texconti_CreateFcn(hObject, eventdata, handles)
% hObject    handle to texconti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object deletion, before destroying properties.
function uitable5_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to uitable5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in listbox6.
function listbox6_Callback(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox6


% --- Executes during object creation, after setting all properties.
function listbox6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
