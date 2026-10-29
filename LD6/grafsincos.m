% Data: 2026-10-15
% Variantas: 19
% Erika Kutyrina

function varargout = grafsincos(x)
    sin_reiksmes = sin(x);
    cos_reiksmes = cos(x);
    
    if nargout > 0
        varargout{1} = sin_reiksmes;
        if nargout >= 2
            varargout{2} = cos_reiksmes;
        end
    else
        figure;
        plot(x, sin_reiksmes, 'r-', 'LineWidth', 1.5);
        hold on;
        plot(x, cos_reiksmes, 'b--', 'LineWidth', 1.5);
        title('sin(x) ir cos(x)');
        xlabel('x');
        ylabel('Reiksmes');
        legend('sin(x)', 'cos(x)');
        grid on;
        hold off;
    end
end