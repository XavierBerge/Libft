/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: xberger <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/04 12:47:12 by xberger           #+#    #+#             */
/*   Updated: 2023/10/17 06:41:02 by xberger          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	unsigned char		*d;
	const unsigned char	*s;

	d = (unsigned char *) dest;
	s = (const unsigned char *) src;
	if (d == s)
		return (dest);
	if (d < s)
	{
		while (n--)
			*d++ = *s++;
	}
	else
	{
		d += n;
		s += n;
		while (n--)
			*(--d) = (*--s);
	}
	return (dest);
}

int     main()
{
        int     source[10] = {0,1,2,3,4,5,6,7,8,9};
//        int     destination[10];
        for (int i = 0; i < 12; i++)
		printf("source[%d]=%d, adresse = %p\n",i, source[i], (void*)&source[i]);

	printf("\n\n\n");
        ft_memmove(source + 2, source, sizeof(int) * 2);

//        for (int i = 0; i < 10; i++)
//                printf("destination[%d]=%d, adresse = %p\n",i, destination[i], (void*)&destination[i]);
        for (int i = 0; i < 10; i++)
                printf("source[%d]=%d, adresse = %p\n",i, source[i], (void*)&source[i]);
}

