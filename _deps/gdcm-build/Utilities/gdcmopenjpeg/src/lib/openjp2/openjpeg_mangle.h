/* This file was generated by CMake http://www.cmake.org */

#ifndef gdcmopenjp2_mangle_h
#define gdcmopenjp2_mangle_h

/*
 * This header file mangles all symbols exported from the openjpeg library.
 * It is included in all files while building the openjpeg library.  Due to
 * namespace pollution, no openjpeg headers should be included in .h files in
 * GDCM.
 *
 * The following command was used to obtain the symbol list:
 *
 * nm libgdcmopenjp2.a | grep " [RT] "
 */

#define opj_cond_create                                 gdcmopenjp2opj_cond_create
#define opj_cond_destroy                                gdcmopenjp2opj_cond_destroy
#define opj_cond_signal                                 gdcmopenjp2opj_cond_signal
#define opj_cond_wait                                   gdcmopenjp2opj_cond_wait
#define opj_get_num_cpus                                gdcmopenjp2opj_get_num_cpus
#define opj_has_thread_support                          gdcmopenjp2opj_has_thread_support
#define opj_mutex_create                                gdcmopenjp2opj_mutex_create
#define opj_mutex_destroy                               gdcmopenjp2opj_mutex_destroy
#define opj_mutex_lock                                  gdcmopenjp2opj_mutex_lock
#define opj_mutex_unlock                                gdcmopenjp2opj_mutex_unlock
#define opj_thread_create                               gdcmopenjp2opj_thread_create
#define opj_thread_join                                 gdcmopenjp2opj_thread_join
#define opj_thread_pool_create                          gdcmopenjp2opj_thread_pool_create
#define opj_thread_pool_destroy                         gdcmopenjp2opj_thread_pool_destroy
#define opj_thread_pool_get_thread_count                gdcmopenjp2opj_thread_pool_get_thread_count
#define opj_thread_pool_submit_job                      gdcmopenjp2opj_thread_pool_submit_job
#define opj_thread_pool_wait_completion                 gdcmopenjp2opj_thread_pool_wait_completion
#define opj_tls_get                                     gdcmopenjp2opj_tls_get
#define opj_tls_set                                     gdcmopenjp2opj_tls_set
#define opj_bio_create                                  gdcmopenjp2opj_bio_create
#define opj_bio_destroy                                 gdcmopenjp2opj_bio_destroy
#define opj_bio_flush                                   gdcmopenjp2opj_bio_flush
#define opj_bio_inalign                                 gdcmopenjp2opj_bio_inalign
#define opj_bio_init_dec                                gdcmopenjp2opj_bio_init_dec
#define opj_bio_init_enc                                gdcmopenjp2opj_bio_init_enc
#define opj_bio_numbytes                                gdcmopenjp2opj_bio_numbytes
#define opj_bio_read                                    gdcmopenjp2opj_bio_read
#define opj_bio_write                                   gdcmopenjp2opj_bio_write
#define opj_read_bytes_BE                               gdcmopenjp2opj_read_bytes_BE
#define opj_read_bytes_LE                               gdcmopenjp2opj_read_bytes_LE
#define opj_read_double_BE                              gdcmopenjp2opj_read_double_BE
#define opj_read_double_LE                              gdcmopenjp2opj_read_double_LE
#define opj_read_float_BE                               gdcmopenjp2opj_read_float_BE
#define opj_read_float_LE                               gdcmopenjp2opj_read_float_LE
#define opj_stream_create                               gdcmopenjp2opj_stream_create
#define opj_stream_default_create                       gdcmopenjp2opj_stream_default_create
#define opj_stream_default_read                         gdcmopenjp2opj_stream_default_read
#define opj_stream_default_seek                         gdcmopenjp2opj_stream_default_seek
#define opj_stream_default_skip                         gdcmopenjp2opj_stream_default_skip
#define opj_stream_default_write                        gdcmopenjp2opj_stream_default_write
#define opj_stream_destroy                              gdcmopenjp2opj_stream_destroy
#define opj_stream_flush                                gdcmopenjp2opj_stream_flush
#define opj_stream_get_number_byte_left                 gdcmopenjp2opj_stream_get_number_byte_left
#define opj_stream_has_seek                             gdcmopenjp2opj_stream_has_seek
#define opj_stream_read_data                            gdcmopenjp2opj_stream_read_data
#define opj_stream_read_seek                            gdcmopenjp2opj_stream_read_seek
#define opj_stream_read_skip                            gdcmopenjp2opj_stream_read_skip
#define opj_stream_seek                                 gdcmopenjp2opj_stream_seek
#define opj_stream_set_read_function                    gdcmopenjp2opj_stream_set_read_function
#define opj_stream_set_seek_function                    gdcmopenjp2opj_stream_set_seek_function
#define opj_stream_set_skip_function                    gdcmopenjp2opj_stream_set_skip_function
#define opj_stream_set_user_data                        gdcmopenjp2opj_stream_set_user_data
#define opj_stream_set_user_data_length                 gdcmopenjp2opj_stream_set_user_data_length
#define opj_stream_set_write_function                   gdcmopenjp2opj_stream_set_write_function
#define opj_stream_skip                                 gdcmopenjp2opj_stream_skip
#define opj_stream_tell                                 gdcmopenjp2opj_stream_tell
#define opj_stream_write_data                           gdcmopenjp2opj_stream_write_data
#define opj_stream_write_seek                           gdcmopenjp2opj_stream_write_seek
#define opj_stream_write_skip                           gdcmopenjp2opj_stream_write_skip
#define opj_write_bytes_BE                              gdcmopenjp2opj_write_bytes_BE
#define opj_write_bytes_LE                              gdcmopenjp2opj_write_bytes_LE
#define opj_write_double_BE                             gdcmopenjp2opj_write_double_BE
#define opj_write_double_LE                             gdcmopenjp2opj_write_double_LE
#define opj_write_float_BE                              gdcmopenjp2opj_write_float_BE
#define opj_write_float_LE                              gdcmopenjp2opj_write_float_LE
#define opj_dwt_calc_explicit_stepsizes                 gdcmopenjp2opj_dwt_calc_explicit_stepsizes
#define opj_dwt_decode                                  gdcmopenjp2opj_dwt_decode
#define opj_dwt_decode_real                             gdcmopenjp2opj_dwt_decode_real
#define opj_dwt_encode                                  gdcmopenjp2opj_dwt_encode
#define opj_dwt_encode_real                             gdcmopenjp2opj_dwt_encode_real
#define opj_dwt_getgain                                 gdcmopenjp2opj_dwt_getgain
#define opj_dwt_getgain_real                            gdcmopenjp2opj_dwt_getgain_real
#define opj_dwt_getnorm                                 gdcmopenjp2opj_dwt_getnorm
#define opj_dwt_getnorm_real                            gdcmopenjp2opj_dwt_getnorm_real
#define opj_event_msg                                   gdcmopenjp2opj_event_msg
#define opj_set_default_event_handler                   gdcmopenjp2opj_set_default_event_handler
#define opj_copy_image_header                           gdcmopenjp2opj_copy_image_header
#define opj_image_comp_header_update                    gdcmopenjp2opj_image_comp_header_update
#define opj_image_create                                gdcmopenjp2opj_image_create
#define opj_image_create0                               gdcmopenjp2opj_image_create0
#define opj_image_destroy                               gdcmopenjp2opj_image_destroy
#define opj_image_tile_create                           gdcmopenjp2opj_image_tile_create
#define opj_matrix_inversion_f                          gdcmopenjp2opj_matrix_inversion_f
#define j2k_destroy_cstr_index                          gdcmopenjp2j2k_destroy_cstr_index
#define j2k_dump                                        gdcmopenjp2j2k_dump
#define j2k_dump_image_comp_header                      gdcmopenjp2j2k_dump_image_comp_header
#define j2k_dump_image_header                           gdcmopenjp2j2k_dump_image_header
#define j2k_get_cstr_index                              gdcmopenjp2j2k_get_cstr_index
#define j2k_get_cstr_info                               gdcmopenjp2j2k_get_cstr_info
#define opj_j2k_convert_progression_order               gdcmopenjp2opj_j2k_convert_progression_order
#define opj_j2k_create_compress                         gdcmopenjp2opj_j2k_create_compress
#define opj_j2k_create_decompress                       gdcmopenjp2opj_j2k_create_decompress
#define opj_j2k_decode                                  gdcmopenjp2opj_j2k_decode
#define opj_j2k_decode_tile                             gdcmopenjp2opj_j2k_decode_tile
#define opj_j2k_destroy                                 gdcmopenjp2opj_j2k_destroy
#define opj_j2k_encode                                  gdcmopenjp2opj_j2k_encode
#define opj_j2k_end_compress                            gdcmopenjp2opj_j2k_end_compress
#define opj_j2k_end_decompress                          gdcmopenjp2opj_j2k_end_decompress
#define opj_j2k_get_tile                                gdcmopenjp2opj_j2k_get_tile
#define opj_j2k_read_header                             gdcmopenjp2opj_j2k_read_header
#define opj_j2k_read_tile_header                        gdcmopenjp2opj_j2k_read_tile_header
#define opj_j2k_set_decode_area                         gdcmopenjp2opj_j2k_set_decode_area
#define opj_j2k_set_decoded_components                  gdcmopenjp2opj_j2k_set_decoded_components
#define opj_j2k_set_decoded_resolution_factor           gdcmopenjp2opj_j2k_set_decoded_resolution_factor
#define opj_j2k_set_threads                             gdcmopenjp2opj_j2k_set_threads
#define opj_j2k_setup_decoder                           gdcmopenjp2opj_j2k_setup_decoder
#define opj_j2k_setup_encoder                           gdcmopenjp2opj_j2k_setup_encoder
#define opj_j2k_setup_mct_encoding                      gdcmopenjp2opj_j2k_setup_mct_encoding
#define opj_j2k_start_compress                          gdcmopenjp2opj_j2k_start_compress
#define opj_j2k_write_tile                              gdcmopenjp2opj_j2k_write_tile
#define jp2_dump                                        gdcmopenjp2jp2_dump
#define jp2_get_cstr_index                              gdcmopenjp2jp2_get_cstr_index
#define jp2_get_cstr_info                               gdcmopenjp2jp2_get_cstr_info
#define opj_jp2_create                                  gdcmopenjp2opj_jp2_create
#define opj_jp2_decode                                  gdcmopenjp2opj_jp2_decode
#define opj_jp2_decode_tile                             gdcmopenjp2opj_jp2_decode_tile
#define opj_jp2_destroy                                 gdcmopenjp2opj_jp2_destroy
#define opj_jp2_encode                                  gdcmopenjp2opj_jp2_encode
#define opj_jp2_end_compress                            gdcmopenjp2opj_jp2_end_compress
#define opj_jp2_end_decompress                          gdcmopenjp2opj_jp2_end_decompress
#define opj_jp2_get_tile                                gdcmopenjp2opj_jp2_get_tile
#define opj_jp2_read_header                             gdcmopenjp2opj_jp2_read_header
#define opj_jp2_read_tile_header                        gdcmopenjp2opj_jp2_read_tile_header
#define opj_jp2_set_decode_area                         gdcmopenjp2opj_jp2_set_decode_area
#define opj_jp2_set_decoded_components                  gdcmopenjp2opj_jp2_set_decoded_components
#define opj_jp2_set_decoded_resolution_factor           gdcmopenjp2opj_jp2_set_decoded_resolution_factor
#define opj_jp2_set_threads                             gdcmopenjp2opj_jp2_set_threads
#define opj_jp2_setup_decoder                           gdcmopenjp2opj_jp2_setup_decoder
#define opj_jp2_setup_encoder                           gdcmopenjp2opj_jp2_setup_encoder
#define opj_jp2_start_compress                          gdcmopenjp2opj_jp2_start_compress
#define opj_jp2_write_tile                              gdcmopenjp2opj_jp2_write_tile
#define opj_calculate_norms                             gdcmopenjp2opj_calculate_norms
#define opj_mct_decode                                  gdcmopenjp2opj_mct_decode
#define opj_mct_decode_custom                           gdcmopenjp2opj_mct_decode_custom
#define opj_mct_decode_real                             gdcmopenjp2opj_mct_decode_real
#define opj_mct_encode                                  gdcmopenjp2opj_mct_encode
#define opj_mct_encode_custom                           gdcmopenjp2opj_mct_encode_custom
#define opj_mct_encode_real                             gdcmopenjp2opj_mct_encode_real
#define opj_mct_get_mct_norms                           gdcmopenjp2opj_mct_get_mct_norms
#define opj_mct_get_mct_norms_real                      gdcmopenjp2opj_mct_get_mct_norms_real
#define opj_mct_getnorm                                 gdcmopenjp2opj_mct_getnorm
#define opj_mct_getnorm_real                            gdcmopenjp2opj_mct_getnorm_real
#define opj_mqc_bypass_enc                              gdcmopenjp2opj_mqc_bypass_enc
#define opj_mqc_bypass_flush_enc                        gdcmopenjp2opj_mqc_bypass_flush_enc
#define opj_mqc_bypass_get_extra_bytes                  gdcmopenjp2opj_mqc_bypass_get_extra_bytes
#define opj_mqc_bypass_init_enc                         gdcmopenjp2opj_mqc_bypass_init_enc
#define opj_mqc_encode                                  gdcmopenjp2opj_mqc_encode
#define opj_mqc_erterm_enc                              gdcmopenjp2opj_mqc_erterm_enc
#define opj_mqc_flush                                   gdcmopenjp2opj_mqc_flush
#define opj_mqc_init_dec                                gdcmopenjp2opj_mqc_init_dec
#define opj_mqc_init_enc                                gdcmopenjp2opj_mqc_init_enc
#define opj_mqc_numbytes                                gdcmopenjp2opj_mqc_numbytes
#define opj_mqc_raw_init_dec                            gdcmopenjp2opj_mqc_raw_init_dec
#define opj_mqc_reset_enc                               gdcmopenjp2opj_mqc_reset_enc
#define opj_mqc_resetstates                             gdcmopenjp2opj_mqc_resetstates
#define opj_mqc_restart_init_enc                        gdcmopenjp2opj_mqc_restart_init_enc
#define opj_mqc_segmark_enc                             gdcmopenjp2opj_mqc_segmark_enc
#define opj_mqc_setstate                                gdcmopenjp2opj_mqc_setstate
#define opq_mqc_finish_dec                              gdcmopenjp2opq_mqc_finish_dec
#define opj_codec_set_threads                           gdcmopenjp2opj_codec_set_threads
#define opj_create_compress                             gdcmopenjp2opj_create_compress
#define opj_create_decompress                           gdcmopenjp2opj_create_decompress
#define opj_decode                                      gdcmopenjp2opj_decode
#define opj_decode_tile_data                            gdcmopenjp2opj_decode_tile_data
#define opj_destroy_codec                               gdcmopenjp2opj_destroy_codec
#define opj_destroy_cstr_index                          gdcmopenjp2opj_destroy_cstr_index
#define opj_destroy_cstr_info                           gdcmopenjp2opj_destroy_cstr_info
#define opj_dump_codec                                  gdcmopenjp2opj_dump_codec
#define opj_encode                                      gdcmopenjp2opj_encode
#define opj_end_compress                                gdcmopenjp2opj_end_compress
#define opj_end_decompress                              gdcmopenjp2opj_end_decompress
#define opj_get_cstr_index                              gdcmopenjp2opj_get_cstr_index
#define opj_get_cstr_info                               gdcmopenjp2opj_get_cstr_info
#define opj_get_decoded_tile                            gdcmopenjp2opj_get_decoded_tile
#define opj_image_data_alloc                            gdcmopenjp2opj_image_data_alloc
#define opj_image_data_free                             gdcmopenjp2opj_image_data_free
#define opj_read_header                                 gdcmopenjp2opj_read_header
#define opj_read_tile_header                            gdcmopenjp2opj_read_tile_header
#define opj_set_decode_area                             gdcmopenjp2opj_set_decode_area
#define opj_set_decoded_components                      gdcmopenjp2opj_set_decoded_components
#define opj_set_decoded_resolution_factor               gdcmopenjp2opj_set_decoded_resolution_factor
#define opj_set_default_decoder_parameters              gdcmopenjp2opj_set_default_decoder_parameters
#define opj_set_default_encoder_parameters              gdcmopenjp2opj_set_default_encoder_parameters
#define opj_set_error_handler                           gdcmopenjp2opj_set_error_handler
#define opj_set_info_handler                            gdcmopenjp2opj_set_info_handler
#define opj_set_MCT                                     gdcmopenjp2opj_set_MCT
#define opj_setup_decoder                               gdcmopenjp2opj_setup_decoder
#define opj_setup_encoder                               gdcmopenjp2opj_setup_encoder
#define opj_set_warning_handler                         gdcmopenjp2opj_set_warning_handler
#define opj_start_compress                              gdcmopenjp2opj_start_compress
#define opj_stream_create_default_file_stream           gdcmopenjp2opj_stream_create_default_file_stream
#define opj_stream_create_file_stream                   gdcmopenjp2opj_stream_create_file_stream
#define opj_version                                     gdcmopenjp2opj_version
#define opj_write_tile                                  gdcmopenjp2opj_write_tile
#define opj_clock                                       gdcmopenjp2opj_clock
#define opj_pi_create_decode                            gdcmopenjp2opj_pi_create_decode
#define opj_pi_create_encode                            gdcmopenjp2opj_pi_create_encode
#define opj_pi_destroy                                  gdcmopenjp2opj_pi_destroy
#define opj_pi_initialise_encode                        gdcmopenjp2opj_pi_initialise_encode
#define opj_pi_next                                     gdcmopenjp2opj_pi_next
#define opj_pi_update_encoding_parameters               gdcmopenjp2opj_pi_update_encoding_parameters
#define opj_t1_create                                   gdcmopenjp2opj_t1_create
#define opj_t1_decode_cblks                             gdcmopenjp2opj_t1_decode_cblks
#define opj_t1_destroy                                  gdcmopenjp2opj_t1_destroy
#define opj_t1_encode_cblks                             gdcmopenjp2opj_t1_encode_cblks
#define opj_t2_create                                   gdcmopenjp2opj_t2_create
#define opj_t2_decode_packets                           gdcmopenjp2opj_t2_decode_packets
#define opj_t2_destroy                                  gdcmopenjp2opj_t2_destroy
#define opj_t2_encode_packets                           gdcmopenjp2opj_t2_encode_packets
#define opj_alloc_tile_component_data                   gdcmopenjp2opj_alloc_tile_component_data
#define opj_tcd_copy_tile_data                          gdcmopenjp2opj_tcd_copy_tile_data
#define opj_tcd_create                                  gdcmopenjp2opj_tcd_create
#define opj_tcd_decode_tile                             gdcmopenjp2opj_tcd_decode_tile
#define opj_tcd_destroy                                 gdcmopenjp2opj_tcd_destroy
#define opj_tcd_encode_tile                             gdcmopenjp2opj_tcd_encode_tile
#define opj_tcd_get_decoded_tile_size                   gdcmopenjp2opj_tcd_get_decoded_tile_size
#define opj_tcd_get_encoded_tile_size                   gdcmopenjp2opj_tcd_get_encoded_tile_size
#define opj_tcd_init                                    gdcmopenjp2opj_tcd_init
#define opj_tcd_init_decode_tile                        gdcmopenjp2opj_tcd_init_decode_tile
#define opj_tcd_init_encode_tile                        gdcmopenjp2opj_tcd_init_encode_tile
#define opj_tcd_is_band_empty                           gdcmopenjp2opj_tcd_is_band_empty
#define opj_tcd_is_subband_area_of_interest             gdcmopenjp2opj_tcd_is_subband_area_of_interest
#define opj_tcd_makelayer                               gdcmopenjp2opj_tcd_makelayer
#define opj_tcd_makelayer_fixed                         gdcmopenjp2opj_tcd_makelayer_fixed
#define opj_tcd_rateallocate                            gdcmopenjp2opj_tcd_rateallocate
#define opj_tcd_rateallocate_fixed                      gdcmopenjp2opj_tcd_rateallocate_fixed
#define opj_tcd_reinit_segment                          gdcmopenjp2opj_tcd_reinit_segment
#define opj_tcd_update_tile_data                        gdcmopenjp2opj_tcd_update_tile_data
#define opj_tgt_create                                  gdcmopenjp2opj_tgt_create
#define opj_tgt_decode                                  gdcmopenjp2opj_tgt_decode
#define opj_tgt_destroy                                 gdcmopenjp2opj_tgt_destroy
#define opj_tgt_encode                                  gdcmopenjp2opj_tgt_encode
#define opj_tgt_init                                    gdcmopenjp2opj_tgt_init
#define opj_tgt_reset                                   gdcmopenjp2opj_tgt_reset
#define opj_tgt_setvalue                                gdcmopenjp2opj_tgt_setvalue
#define opj_procedure_list_add_procedure                gdcmopenjp2opj_procedure_list_add_procedure
#define opj_procedure_list_clear                        gdcmopenjp2opj_procedure_list_clear
#define opj_procedure_list_create                       gdcmopenjp2opj_procedure_list_create
#define opj_procedure_list_destroy                      gdcmopenjp2opj_procedure_list_destroy
#define opj_procedure_list_get_first_procedure          gdcmopenjp2opj_procedure_list_get_first_procedure
#define opj_procedure_list_get_nb_procedures            gdcmopenjp2opj_procedure_list_get_nb_procedures
#define opj_aligned_32_malloc                           gdcmopenjp2opj_aligned_32_malloc
#define opj_aligned_32_realloc                          gdcmopenjp2opj_aligned_32_realloc
#define opj_aligned_free                                gdcmopenjp2opj_aligned_free
#define opj_aligned_malloc                              gdcmopenjp2opj_aligned_malloc
#define opj_aligned_realloc                             gdcmopenjp2opj_aligned_realloc
#define opj_calloc                                      gdcmopenjp2opj_calloc
#define opj_free                                        gdcmopenjp2opj_free
#define opj_malloc                                      gdcmopenjp2opj_malloc
#define opj_realloc                                     gdcmopenjp2opj_realloc
#define opj_sparse_array_int32_create                   gdcmopenjp2opj_sparse_array_int32_create
#define opj_sparse_array_int32_free                     gdcmopenjp2opj_sparse_array_int32_free
#define opj_sparse_array_int32_read                     gdcmopenjp2opj_sparse_array_int32_read
#define opj_sparse_array_int32_write                    gdcmopenjp2opj_sparse_array_int32_write
#define opj_sparse_array_is_region_valid                gdcmopenjp2opj_sparse_array_is_region_valid

#endif