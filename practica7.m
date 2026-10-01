function dxdt = practica7(t, x, params)

% Parametros del sistema
Ra = params(1);
La = params(2);
Kt = params(3);
Ke = params(4);
b  = params(5);
J  = params(6);
va = params(7);

% Estados actuales
ia    = x(1); % Corriente [A]
wm    = x(2); % Velocidad angular [rad/s]
theta = x(3); % Posicion angular [rad]

dxdt = zeros(3,1);

% Ecuacion 1: di_a/dt
dxdt(1) = (1/La)*va - (Ra/La)*ia - (Ke/La)*wm;

% Ecuacion 2: dw_m/dt
dxdt(2) = (Kt/J)*ia - (b/J)*wm;

% Ecuacion 3: dtheta_m/dt
dxdt(3) = wm;

end