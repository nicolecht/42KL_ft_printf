#include "ft_printf.h"
# include <stdarg.h>
#include <unistd.h>

int	ft_printchar(int c)
{
	write(1, &c, 1);
	return (1);
}

int	ft_formats(va_list args, const char format)
{
	int	print_length;

	print_length = 0;
	if (format == 'c')
		print_length += ft_printchar(va_args(args, int));
	return (print_length);
}

int	ft_printf(const char *str, ...)
{
	int	i;
	va_list args;
	int	print_length;

	i = 0;
	print_length = 0;
	va_start(args, str);
	while (str[i])
	{
		if (str[i] == '%')
		{
			print_length += ft_formats(args, str[i + 1]);
			i++;
		}
		else
			print_length += ft_printchar(str[i]);
		i++;
	}
	va_end(args);
	return (print_length);
}

int main(void)
{
	ft_printf("%c", 'A');
}