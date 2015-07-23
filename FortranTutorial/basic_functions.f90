!------------------------------------------------------------------------------
! BCEM - Fortran tutorial series.
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
    
    module Basic_Functions
    implicit none
    
    public num_divisors
    public is_perfect_square
    public next_perfect_square
    
    contains
    
    function num_divisors(n) result(x)
    integer, intent(in) :: n
    integer :: x
    integer :: i
    
    x= 0
    do i = 1, n
        if (mod(n, i) .EQ. 0) then
            x = x + 1
        end if
    end do
    end function num_divisors
    
    function is_perfect_square(n)
    integer, intent(in) :: n
    logical :: is_perfect_square
    integer :: i
    
    is_perfect_square = .false.
    do i = 1, n
        if (n .EQ. i ** 2) then
            is_perfect_square = .true.
            return
        end if
    end do
    end function is_perfect_square
    
    function next_perfect_square(n) result(x)
    integer, intent(in) :: n
    integer :: x
    
    x = n
    do
        x = x + 1
        if (is_perfect_square(x)) then
            return
        end if
    end do
    end function
    
    end module Basic_Functions
