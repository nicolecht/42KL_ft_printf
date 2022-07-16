#include "ft_printf.h"
#include "libft.h"

int	ft_printnbr(int n)
{
	int	len;
	char	*num;

	len = 0;
	num = ft_itoa(n);
	len = ft_printstr(num);
	free(num);
	return (len);
}