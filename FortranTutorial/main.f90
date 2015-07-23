!------------------------------------------------------------------------------
! BCEM - Fortran tutorial series
!------------------------------------------------------------------------------
!
! MODULE: Basic functions
!
!> @author
!> Guillermo G. Luque y Guzman S. - Research Engineer
!
! DESCRIPTION:
!> Basic functions to introduce yourself into Fortran programming.
!
! REVISION HISTORY
! 23 Jul 2015 - Initial version
!------------------------------------------------------------------------------
    
    program Main
    
    use Basic_Functions
    implicit none
    
    integer :: i, n
    
    print 99, "Enter an integer:"
    read *, n
    
    do i = 1,20
        print 10, i, " has ", num_divisors(i), " divisors"
        if (is_perfect_square(i)) then
            print 20, i, " is a perfect square"
            print 20, next_perfect_square(i), " is the next perfect square"
        end if
    end do
    
10  format (i2, a, i2, a)
20  format (i2, a)
99  format (a)
        
    end program Main