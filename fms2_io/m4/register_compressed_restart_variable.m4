include(`macros.m4')dnl
!> @brief Add a compressed restart variable.
`subroutine register_compressed_restart_variable_'NUM_DIMS`d(fileobj, &'
                                                             variable_name, &
                                                             vdata, &
                                                             dimensions)
    class(FmsNetcdfCompressedFile_t),intent(inout) :: fileobj !< File object.
    character(len=*),intent(in) :: variable_name !< Variable name.
    class(*),dim_declare(NUM_DIMS) intent(in),target :: vdata !< Variable data.
    character(len=*),dimension(:),intent(in),optional :: dimensions !< Dimension names.
    call append_compressed_variable(fileobj, &
                                    variable_name, &
                                    dimensions)
    call netcdf_add_restart_variable(fileobj, &
                                     variable_name, &
                                     vdata, &
                                     dimensions)
`end subroutine register_compressed_restart_variable_'NUM_DIMS`d'
