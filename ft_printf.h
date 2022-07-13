/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nchee <nchee@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/13 19:06:39 by nchee             #+#    #+#             */
/*   Updated: 2022/07/13 19:08:30 by nchee            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifdef FT_PRINTF_H
#define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>

int	ft_printf(const char *str, ...);
int	ft_formats(va_list args, const char format)
int	ft_printchar(int c);




#endif