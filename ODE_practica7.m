% Parametros del motor
Ra = 2;        
La = 0.023;    
Kt = 0.01;      
Ke = 0.01;     
b  = 0.0012;   
J  = 0.001;     
va = 5.0;      

params = [Ra, La, Kt, Ke, b, J, va];

% Condiciones iniciales [ia(0); wm(0); theta(0)]
ia0    = 0;  
wm0    = 0;  
theta0 = 0;  

x_inicial = [ia0; wm0; theta0];

% Tiempo de simulacion
t_inicio = 0;
t_final  = 1.5;
tspan    = [t_inicio t_final];

% Solucion mediante ODE45
[t, x] = ode45(@(t,x) practica7(t, x, params), tspan, x_inicial);

% GRAFICAS
figure;

% Corriente de armadura
subplot(3, 1, 1);
plot(t, x(:,1), 'r', 'LineWidth', 1.5);
grid on;
title('Corriente');
ylabel('Corriente (A)');

% Velocidad angular
subplot(3, 1, 2);
plot(t, x(:,2), 'b', 'LineWidth', 1.5);
grid on;
title('Velocidad angular ');
ylabel('Velocidad (rad/s)');

% Posicion angular
subplot(3, 1, 3);
plot(t, x(:,3), 'm', 'LineWidth', 1.5);
grid on;
title('Posicion angular');
xlabel('Tiempo (s)');
ylabel('Posicion (rad)');