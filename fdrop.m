function [velocita, distanza] = drop(v0,t)
    g = 9.8;
    velocita = g*t + v0;
    distanza = t^2 * g + v0*t;
end