program fortran_coarray
    write (*,*) "Hello from image ", this_image(), &
        " out of ", num_images(), " total images"
end program fortran_coarray