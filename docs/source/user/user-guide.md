{August 12, 2024}  
{C. Gobat and M.K. Crombie}

> Note to authors who use this outline: The outline is a
> suggestion only. It includes the minimum of content needed to inform the
> dictionary user. Authors are expected to tailor the outline to their particular
> purposes, elaborating and providing context as needed.

# Introduction
   1. Purpose of this User’s Guide
   1. Audience
   1. Applicable Documents

# Overview of the *Lucy* Local Data Dictionary

The *Lucy* mission's local data dictionary is used to describe and enumerate *Lucy*
Mission specific classes and attributes in PDS4 labels. It also includes Lucy
Instrumentation specific classes and attributes. 

# Organization of Classes and Attributes

The *Lucy* mission dictionary is organized as set of four general classes and four
instrument specific classes. The general classes are used to desribe either observational
parameters common to all mission instruments, or general data processing parameters. 
The instrument specific classes are used to describe instrument specific metadata that
does not easily fit into a discipline specific data dictionary due to a mission specific
nuance.

The *Lucy* mission dictionary hierarchy is an alphabetical list of the eight main classes.
There is not a genaric wrapper class. The eight main classes are as follows:
 
     LEISA_Instrument_Parameters
     LLORRI_Instrument_Parameters
     LRalph_Instrument_Common_Parameters
     Lucy_Observation_Planning
     Lucy_Observation_Time_Information
     Lucy_Product_Information
     Lucy_Target_List
     MVIC_Instrument_Parameters


General classes used for all Lucy products begin with the "Lucy_", whereas
instrument specific classes begin with the instrument or instrument suite name.
Instrument specific classes may contain sub-classes. Use case examples for each class
can be found in the Examples section of this document.

## `Lucy_Observation_Time_Information`

The Lucy_Observation_Time_Informtion class is used to record the observation indentification
and timing information attached to each science observation sequence. The attributes in this 
class are listed below:

      lucy:observation_id
      lucy:observation_id_count
      lucy:observation_complete
      lucy:observation_missing_packets
      lucy:start_sclk
      lucy:mid_sclk
      lucy:stop_sclk
      lucy:mid_utc
      lucy:mid_sclk_string
      lucy:mid_utc_doy
      lucy:mid_utc_jd
      lucy:mid_ephemeris_time
      lucy:ccsds_sclk_time

The observation_id attribute is the only required element.

## `Lucy_Observation_Planning`

The Lucy_Observation_Planning class is a general *Lucy* class used to record the science
planning metadata that describes how the observation sequence was planned and the status of
the instruments during that observation. The attributes included in this class are as folllows:

      lucy:load_identifier
      lucy:mission_segment
      lucy:sap_identifier
      lucy:visit_name
      lucy:instrument_side
      lucy:llorri_status
      lucy:lralph_status
      lucy:ltes_status
      lucy:ttcam_status

The mission_segment attribute is the only required element in this class.

## `Lucy_Target_List`

The Lucy_Targt_List class and attributes describe the list of potential targets in a given 
science observation. This information is supplemental to the Target_Identification class
found in all observational data products and is derived from SPICE calculations. The attributes
included in this class are as follows:

      lucy:target_fov_count
      lucy:target_fov_name

The target_fov_count attribute is the only required element in the class.      

## `Lucy_Product_Information`

The Lucy_Product_Information class and attributes describe any *Lucy* data processing pipeline
specific data product information. Attributes collected in this class do not have counterparts
in any PDS4 discipline dictionary. For general data processing information the processing 
dictinary (proc:) is used. The attributes found in the Lucy_Product_Information are as follows:

   lucy:internal_product_version_id
  
The internal_product_verion_id is the only element in this class and is required. It is possible
that additional attributes could be added over the course of the mission. 

## `LLORRI_Instrument_Parameters`

The LLORRI_Instrument_Parameters class is the wrapper class for all L'LORRI instrument specific
parameters. This class only appears in L'LORRI data products. The LLORRI_Instrument_Parameters class
contians the attributes and sub-classes listed below:

      lucy:attached_sync_marker_dec
      lucy:attached_sync_marker_hex
      lucy:latch_count
      lucy:calibration_lamp_level_1
      lucy:calibration_lamp_level_2
      lucy:bias_level
      lucy:read_noise
      lucy:ccd_gain
      lucy:bias_offset
      lucy:frame_transfer_scrub_time
      Radiometric_Conversion_Constants

The lucy:Radiometric_Conversion_Constants class provides the values needed to perform the conversion from
the calibrated pixel values to physical units. This conversion is dependent on the spectral distribition
of the source, the detector wavelength range, and whether or not the source is resolved. A description of
how to convert from data values to physical units is provided in the LLORRI SIS document. The sub-class
contians attributes and sub-sub-classes as follows:

      lucy:pivot_wavelength
      lucy:Diffuse_Source
      lucy:Point_Source
      lucy:photometric_zero_point

All attributes and classes are required for the Radiometric_Conversion_Constants class. 

The lucy:Diffuse_Source sub-class presents radiometric conversion constants for converting calibrated pixel 
values into physical units for unresolved sources. 

      lucy:units_of_conversion_constants
      lucy:solar_constant
      lucy:red_trojan_constant
      lucy:gray_trojan_constant
      lucy:dinkinesh_constant

The units, solar, red and gray constant attribues are required. Target sepcific constants are not required and
will be extended as the mission progresses.

The lucy:Point_Source sub-class presents radiometric conversion constants for converting calibrated pixel 
values into physical units for resolved/extended sources.

      lucy:units_of_conversion_constants
      lucy:solar_constant
      lucy:red_trojan_constant
      lucy:gray_trojan_constant
      lucy:dinkinesh_constant

The units, solar, red and gray constant attribues are required. Target sepcific constants are not required and
will be extended as the mission progresses.

## `LRalph_Instrument_Common_Parameters`

The LRalph_Instrument_Common_Paramters class is a set of instrument attributes that are specific to the L'Ralph
instrument suite which comprises the LEISA and MVIC components. This class only appears in LEISA or MVIC data products.
The LRalph_Instrument_Common_Paramters class contains the following attributes:

      lucy:playback_start
      lucy:playback_end
      lucy:playback_bad_pixel_mask_status
      lucy:playback_truncation_status
      lucy:playback_header_type
      lucy:test_pattern_setting
      lucy:hs_xtrack_start_row
      lucy:scan_row_pixels
      lucy:fpecrc_error_flag
      lucy:m4_calibration_state
      lucy:m4_blackbody_setting
      lucy:m4_filament_setting
      lucy:fpe_drop_frames
      lucy:mce_scan_rate
      lucy:first_packet_timestamp
      lucy:last_packet_timestamp
      lucy:xsum_error_flag_status
      lucy:lr_acquisition_start_block
      lucy:mce_start_postion
      lucy:mce_end_postion
      lucy:board_selection
      lucy:blocks_allocated

None of the attributes are required for this class.

## `LEISA_Instrument_Parameters`

The LEISA_Instrument_Parameters class contians attributes specific to the LEISA instrument and
only appears in LEISA dt products. The attributes contained in this calss area as follows:

      lucy:leisa_mode
      lucy:leisa_observation_allocation
      lucy:leisa_integration_time
      lucy:leisa_atrack_start_channel
      lucy:leisa_atrack_num_channels
      lucy:leisa_xtrack_start_row
      lucy:leisa_xtrack_num_rows
      lucy:leisa_offset
      lucy:leisa_fpa_temperature

None of the attributes are required.  
      
## `MVIC_Instrument_Parameters`

The MVIC_Instrument_Parameters class contians attributes specific to the MVIC instrument and
only appears in LEISA dt products. The attributes contained in this calss area as follows:

      lucy:mvic_ccd_list
      lucy:mvic_actual_atrack_summing
      lucy:mvic_actual_xtrack_summing
      lucy:mvic_planned_atrack_summing
      lucy:mvic_planned_xtrack_summing
      lucy:mvic_summing_mode
      lucy:actual_ccd1_tdi_configuration
      lucy:actual_ccd2_tdi_configuration
      lucy:actual_ccd3_tdi_configuration
      lucy:actual_ccd4_tdi_configuration
      lucy:actual_ccd5_tdi_configuration
      lucy:actual_ccd6_tdi_configuration
      lucy:planned_ccd1_tdi_configuration
      lucy:planned_ccd2_tdi_configuration
      lucy:planned_ccd3_tdi_configuration
      lucy:planned_ccd4_tdi_configuration
      lucy:planned_ccd5_tdi_configuration
      lucy:planned_ccd6_tdi_configuration
      lucy:mvic_fpe_vis_temperature
      lucy:mvic_observation_allocation
      lucy:mvic_tdi_row_integration_time

None of the attributes are required.    


# Definitions

|Type	   | 	Name	                           | Description                                            |
---------- |  ----------------------------------   | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|Class	   | 	Lucy_Observation_Time_Information	|	Lucy Mission observation identification and timing information.                                               |
|Attribute | 	observation_id	|	The lucy:observation_id attribute appears in all mission science data products and reports the Lucy mission observation identifier. 	|
|Attribute | 	observation_id_count	|	The lucy:observation_id_count attribute appears in all mission science data products and reports the Lucy mission observation identifier counter. This number increments by 1 with each planned observation sequence (L'LORRI only). 	|
|Attribute |	observation_complete	|	The lucy:observation_complete attribute appears in all mission science data products and reports the observation completion status. 	|
|Attribute |	observation_missing_packets	|	The lucy:observation_missing_packets attribute appears in all mission science data products and reports the number of missing packets in the observation. The best data quality has no missing packets. 	|
|Attribute |  	start_sclk	|	The lucy:start_sclk attribute appears in all mission science data products and reports the Lucy spacecraft clock (SCLK) time (in seconds) at the start of the observation. 	|
|Attribute |	mid_sclk	|	The lucy:mid_sclk attribute appears in all mission science data products and reports the Lucy spacecraft clock (SCLK) time (in seconds) at the mid-time of the observation. 	|
|Attribute |	stop_sclk	|	The lucy:stop_sclk attribute appears in all mission science data products and reports the Lucy spacecraft clock (SCLK) time (in seconds) at the end of the observation. 	|
|Attribute |	mid_utc	|	The lucy:mid_utc attribute appears in all mission science data products and reports the middle time of the observation in ISO UTC format "YYYY-MM-DDTHH:MM:SS.sss" 	|
|Attribute |	mid_sclk_string	|	The lucy:mid_sclk_string attribute appears in all mission science data products and reports the middle time of the observation in Lucy spacecraft clock string partition/SSSSSSSSSS-PPPPP, where S is seconds and P are ticks in units of 1/66535 of a second. 	|
|Attribute |	mid_utc_doy	|	The lucy:mid_utc_doy attribute appears in all mission science data products and reports the middle time of the observation in ISO DOY format, YYYY-DOYTHH:MM:SS.sss	|
|Attribute |	mid_utc_jd	|	The lucy:mid_utc_jd attribute appears in all mission science data products and reports the middle time of the observation in Julian day format.	|
|Attribute |	mid_ephemeris_time	|	The lucy:mid_ephemeris_time attribute appears in all mission science data products and reports the middle time of the observation in ephemeris time, seconds past J2000, TDB.	|
|Attribute |	ccsds_sclk_time	|	The lucy:ccsds_sclk_time attribute appears in all mission science data products and reports the Lucy spacecraft clock time of the CCSDS (Consultative Committee for Space Data Systems) playback timestamp in seconds.	|
|Class	   |    Lucy_Observation_Planning	|	The Lucy Mission observation planning class and attributes describe the observation planning information needed to understand the planned spacecraft observations.	|
|Attribute |	load_identifier	|	The lucy:load_identifier attribute appears in all mission science data products and reports the Lucy mission command sequence load identifier	|
|Attribute |	mission_segment	|	The lucy:mission_segment attribute appears in all mission science data products and reports the Lucy Mission segment during which the observation occurred.	|
|Attribute |	sap_identifier	|	The lucy:sap_identifier attribute appears in all mission science data products and reports the Lucy mission science activity plan (sap) identifier.	|
|Attribute |	visit_name	|	The lucy:visit_name appears in all mission science data products and reports the Lucy mission asteroid or target visit name.	|
|Attribute |	instrument_side	|	The lucy:instrument_side attribute appears in all mission science data products and reports the Lucy spacecraft elctronics side.	|
|Attribute |	llorri_status	|	The lucy:llorri_status attribute appears in all mission science data products and reports the operational status of the L'LORRI instrument.	|
|Attribute |	lralph_status	|	The lucy:lralph_status attribute appears in all mission science data products and reports the operational status of the L'RALPH instrument.	|
|Attribute |	ltes_status	|	The lucy:ltes_status attribute appears in all mission science data products and reports the operational status of the L'TES instrument.	|
|Attribute |	ttcam_status	|	The lucy:ttcam_status attribute appears in all mission science data products and reports the operational status of the TTCAM instrument.	|
|Class	   |   	Lucy_Target_List	|	The Lucy Mission class that contains the target list of potential targets in a given observation.	|
|Attribute |	target_fov_count	|	The lucy:target_fov_count attribute appears in all mission science data products and reports the number of possible targets in the field of view (FOV) (SPICE-derived attribute).	|
|Attribute |	target_fov_name	|	The lucy:target_fov_name attribute appears in all mission science data products and reports the name of the possible target in the field of view (FOV) (SPICE-derived attribute).	|
|Class	   |   	Lucy_Product_Information	|	The Lucy Mission class that contains attributes specific to the labeled data product.	|
|Attribute |	internal_product_version_id	|	The lucy:internal_product_version_id attribute appears in all mission science data products and reports the Lucy pipeline internal data processing version number. This number is likely to be grater than the PDS version number given in the version_id attribute in the Observation_Area.	|
|Class	   |  	LLORRI_Instrument_Parameters|	The Lucy LORRI instrument class that contains instrument specific attributes relevant to the labeled data product.	|
|Attribute |	attached_sync_marker_dec	|	The lucy:attached_sync_marker_dec attribute appears in L'LORRI science data products and reports the attached syncronization marker, decimal representation.	|
|Attribute |	attached_sync_marker_hex	|	The lucy:attached_sync_marker_hex attribute appears in L'LORRI science data products and reports the attached syncronization marker, hexidecimal representation.	|
|Attribute |	latch_count	 	|	The lucy:latch_count attribute appears in L'LORRI science data products and reports the number of times a latchup has occurred.	|
|Attribute |	calibration_lamp_level_1	|	The lucy:calibration_lamp_level_1 attribute appears in L'LORRI science data products and reports the digital number (DN) setting for calibration lamp one.	|
|Attribute |	calibration_lamp_level_2	|	The lucy:calibration_lamp_level_2 attribute appears in L'LORRI science data products and reports the digital number (DN) setting for calibration lamp two.	|
|Attribute |	bias_level	|	The lucy:bias_level attribute appears in calibrated L'LORRI data products and contains the mean bias level of the detector's dark columns.	|
|Attribute |	read_noise	|	The lucy:read_noise attribute appears in calibrated L'LORRI data products and provides the CCD read noise for the image.	|
|Attribute |	ccd_gain	|	The lucy:ccd_gain attribute appears in calibrated L'LORRI data products and provides the CCD gain setting for the image.	|
|Attribute |	bias_offset	|	The lucy:bias_offset attribute appears in calibrated L'LORRI data products and provides the CCD bias offset between the active and inactive regions of the detector.	|
|Attribute |    frame_transfer_scrub_time	|	 The lucy:frame_transfer_scrub_time attribute appears in calibrated L'LORRI data products and contains the instrument's frame transfer/scrub time. For the L'LORRI instrument, these two quantities (transfer and scrub times) are exactly equal. 	|
|Class	   | 	LRalph_Instrument_Common_Parameters		|	The Lucy LRalph instrument class that contains the common (LEISA and MVIC) instrument specific attributes relevant to the labeled data product. 	|
|Attribute |	playback_start	|	The lucy:playback_start attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the playback science header timstamp of the first m4 packet in spacecraft clock seconds.	|
|Attribute |	playback_end	|	The lucy:playback_end attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the playback science header timstamp of the last m4 packet in spacecraft clock seconds.	|
|Attribute |	playback_bad_pixel_mask_status	|	The lucy:playback_bad_pixel_masl_status attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the status of the bad pixel map, true or false.			|
|Attribute |	playback_truncation_status	|	The lucy:playback_truncation attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the status of the truncation enable, true or false.					|
|Attribute |	playback_header_type	|	The lucy:playback_header_type attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the playback header type													|
|Attribute |	test_pattern_setting	|	The lucy:test_pattern_setting attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the instrument test pattern setting, 0 is science, 1 is test pattern.	|
|Attribute |	hs_xtrack_start_row	|	The lucy:hs_xtrack_start_row attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the cross track start row from the high speed header.	|
|Attribute |	scan_row_pixels	|	The lucy:scan_row_pixels attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the number of pixels in the scan row.	|
|Attribute |	scan_row_pixels	|	The lucy:scan_row_pixels attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the number of pixels in the scan row.	|
|Attribute |	fpecrc_error_flag	|	The lucy:fpecrc_error_flag attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the floating point error 9FPE) checksum error flag, true or false. |
|Attribute |	m4_calibration_state	|	The lucy:m4_calibration_state attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the multi-mission mass memory card (m4) calibration state.	|
|Attribute |	m4_blackbody_setting	|	The lucy:m4_blackbody_state attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the multi-mission mass memory card (m4) blackbody state. 	|
|Attribute |	m4_filament_setting	|	The lucy:m4_filament_state attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the multi-mission mass memory card (m4) filament setting. 	|
|Attribute |	fpe_drop_frames	|	The lucy:fpe_drop_frames attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the number of focal plane electronics (FPE) drop frames. 	|
|Attribute |	mce_scan_rate	|	The lucy:mce_scan_rate attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the mechanism control electronics (MCE) scan rate. 	|
|Attribute |	first_packet_timestamp	|	The lucy:first_packet_timestamp appears in L'Ralph (MVIC and LEISA) science data products and reports the timestamp of the first packet recorded in spacecraft clock seconds.	|
|Attribute |	last_packet_timestamp	|	The lucy:last_packet_timestamp attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the timestamp of the last packet recorded in spacecraft clock seconds.	|
|Attribute |	xsum_error_flag_status	|	The lucy:xsum_error_flag_status attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the xsum flag indicating if there are errors in the stored data packet, true or false. 	|
|Attribute |	lr_acquisition_start_block	|	The lucy:lr_acquisition_start_block attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the L'Ralph observation acquisition start block address. |
|Attribute |	mce_start_postion	|	The lucy:mce_start_postion attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the Mechanism Control Electronics (MCE) cards start position. |
|Attribute |	mce_end_postion		|	The lucy:mce_end_postion attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the Mechanism Control Electronics (MCE) cards end position. |
|Attribute |	board_selection		|	The lucy:board_selection attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the instrument electronics side selected. |
|Attribute |	blocks_allocated	|	The lucy:blocks_allocated attribute appears in L'Ralph (MVIC and LEISA) science data products and reports the number of blocks allocated. |
|Class	   |   	LEISA_Instrument_Parameters	|	The Lucy LRalph LEISA class that contains the instrument specific attributes relevant to the labeled data product. |
|Attribute |	leisa_mode	|	The lucy:leisa_mode attribute appears in LEISA science data products and reports the LEISA observation mode, T is CDS - correlated double sample, F is NONCDS - non correlated double sample. |
|Attribute |	leisa_observation_allocation	|	The lucy:leisa_observation_allocation attribute appears in LEISA science data products and reports the LEISA observation allocation duration. |
|Attribute |	leisa_integration_time	|	The lucy:leisa_integration_time attribute appears in LEISA science data products and reports the LEISA observation integration time. |
|Attribute |	leisa_atrack_start_channel	|	The lucy:leisa_atrack_start_channel appears in LEISA science data products and reports the LEISA along track start channel. |
|Attribute |	leisa_atrack_num_channels	|	The lucy:leisa_atrack_num_channels appears in LEISA science data products and reports the LEISA along track number of channels. |
|Attribute |	leisa_xtrack_start_row 	|	The lucy:leisa_xtrack_start_row appears in LEISA science data products and reports the LEISA cross track start row. |
|Attribute |	leisa_xtrack_num_rows	|	The lucy:leisa_xtrack_num_row appears in LEISA science data products and reports the LEISA cross track number of rows. |
|Attribute |	leisa_offset	|	The lucy:leisa_offset appears in LEISA science data products and reports the LEISA offset. |
|Attribute |	leisa_fpa_temperature	|	The lucy:leisa_offset appears in LEISA science data products and reports the LEISA focal plane array temperature. |
|Class	   |   	MVIC_Instrument_Parameters	|	The Lucy LRalph MVIC class that contains the instrument specific attributes relevant to the labeled data product. |
|Attribute |	mvic_ccd_list 	|	The lucy:mvic_ccd_list attribute appears in MVIC science data products and reports the list of the MVIC charge coupled devices (CCDs) used in this observation. |
|Attribute |	mvic_actual_atrack_summing	|	The lucy:mvic_actual_atrack_summing attribute appears in MVIC science data products and reports the MVIC actual along track pixel summing.          |
|Attribute |	mvic_actual_xtrack_summing	|	The lucy:mvic_actual_xtrack_summing attribute appears in MVIC science data products and reports the MVIC actual cross track pixel summing.			|
|Attribute |	mvic_planned_atrack_summing	|	The lucy:mvic_planned_atrack_summing attribute appears in MVIC science data products and reports the MVIC actual summing mode.						|
|Attribute |	mvic_planned_xtrack_summing	|	The lucy:mvic_planned_xtrack_summing attribute appears in MVIC science data products and reports the MVIC planned along track pixel summing.		|
|Attribute |	mvic_summing_mode	|	The lucy:mvic_summing_mode attribute appears in MVIC science data products and reports the MVIC planned summing mode.										|
|Attribute |	actual_ccd1_tdi_configuration	|	The lucy:actual_ccd1_tdi_configuration attribute appears in MVIC science data products and reports the acctual CCD 1 TDI (time delay integration) configuration.	|
|Attribute |	actual_ccd2_tdi_configuration	|	The lucy:actual_ccd2_tdi_configuration attribute appears in MVIC science data products and reports the acctual CCD 2 TDI (time delay integration) configuration.	|
|Attribute |	actual_ccd3_tdi_configuration	|	The lucy:actual_ccd3_tdi_configuration attribute appears in MVIC science data products and reports the acctual CCD 3 TDI (time delay integration) configuration.	|
|Attribute |	actual_ccd4_tdi_configuration	|	The lucy:actual_ccd4_tdi_configuration attribute appears in MVIC science data products and reports the acctual CCD 4 TDI (time delay integration) configuration.	|
|Attribute |	actual_ccd5_tdi_configuration	|	The lucy:actual_ccd5_tdi_configuration attribute appears in MVIC science data products and reports the acctual CCD 5 TDI (time delay integration) configuration.	|
|Attribute |	actual_ccd6_tdi_configuration	|	The lucy:actual_ccd6_tdi_configuration attribute appears in MVIC science data products and reports the acctual CCD 6 TDI (time delay integration) configuration.	|
|Attribute |	planned_ccd1_tdi_configuration	|	The lucy:planned_ccd1_tdi_configuration attribute appears in MVIC science data products and reports the planned CCD 1 TDI (time delayed integration) configuration.	|
|Attribute |	planned_ccd2_tdi_configuration	|	The lucy:planned_ccd2_tdi_configuration attribute appears in MVIC science data products and reports the planned CCD 2 TDI (time delayed integration) configuration.	|
|Attribute |	planned_ccd3_tdi_configuration	|	The lucy:planned_ccd3_tdi_configuration attribute appears in MVIC science data products and reports the planned CCD 3 TDI (time delayed integration) configuration.	|
|Attribute |	planned_ccd4_tdi_configuration	|	The lucy:planned_ccd4_tdi_configuration attribute appears in MVIC science data products and reports the planned CCD 4 TDI (time delayed integration) configuration.	|
|Attribute |	planned_ccd5_tdi_configuration	|	The lucy:planned_ccd5_tdi_configuration attribute appears in MVIC science data products and reports the planned CCD 5 TDI (time delayed integration) configuration.	|
|Attribute |	planned_ccd6_tdi_configuration	|	The lucy:planned_ccd6_tdi_configuration attribute appears in MVIC science data products and reports the planned CCD 6 TDI (time delayed integration) configuration.	|
|Attribute |	mvic_fpe_vis_temperature	|	The lucy:mvic_fpe_vis_temperature attribute appears in MVIC science data products and reports the MVIC focal plane electronics visible card (FPE VIS) temperature.		|
|Attribute |	mvic_observation_allocation	|	The lucy:mvic_observation_allocation attribute appears in MVIC science data products and reports the MVIC allocated observation duration. 								|
|Attribute |	mvic_tdi_row_integration_time	|	The lucy:mvic_tdi_row_integration_time attribute appears in MVIC science data products and reports the MVIC time delay integration (TDI) row integration time.		|
|Class	   |    Point_Source	|	 The lucy:Point_Source class presents radiometric conversion constants for converting calibrated pixel values into physical units for unresolved/point sources. 					|
|Attribute |	units_of_conversion_constants	|	 For resolved sources, the radiometric conversion produces data in units of radiance. For unresolved sources, the conversion results in units of flux (irradiance). The lucy:units_of_conversion_constants attribute contains the appropriate physical units for the conversion constants in the class in which it is contained to produce either radiance or flux units, as appropriate, when the conversion is applied. 	|
|Attribute |	solar_constant	|	 The lucy:solar_constant attribute supplies the constant to be used for sources with a spectral distribution similar to the Sun to convert calibrated pixel values to physical units. 	|
|Attribute |	red_trojan_constant	|	 The lucy:red_trojan_constant attribute supplies the constant to be used for sources with a spectral distribution similar to that of "red" Trojans to convert calibrated pixel values to physical units. | 
|Attribute |	gray_trojan_constant	|	 The lucy:gray_trojan_constant attribute supplies the constant to be used for sources with a spectral distribution similar to that of "gray" Trojans to convert calibrated pixel values to physical units. 	|
|Attribute |	dinkinesh_constant	|	 The lucy:dinkinesh_constant attribute supplies the constant to be used for sources with a spectral distribution similar to that of Dinkinesh to convert calibrated pixel values to physical units.  |
|Class	   |  	Radiometric_Conversion_Constants	|	 The lucy:Radiometric_Conversion_Constants class provides the values needed to perform the conversion from the calibrated pixel values to physical units. This conversion is dependent on the spectral distribition of the source, the detector wavelength range, and whether or not the source is resolved. A description of how to convert from data values to physical units is provided in the LLORRI SIS document. |
|Attribute |	pivot_wavelength	|	 The value contained in the lucy:pivot_wavelength attribute is used when converting L'LORRI calibrated pixel values to physical units.  |
|Attribute |	photometric_zero_point	|	 The lucy:photometric_zero_point attribute supplies the photometric zero point to be used to convert between units of (ir)radiance and visual magnitude, V. |
|Class	   |    Diffuse_Source		| The lucy:Point_Source class presents radiometric conversion constants for converting calibrated pixel values into physical units for resolved/extended sources.   |
|Attribute |	units_of_conversion_constants	|	 For resolved sources, the radiometric conversion produces data in units of radiance. For unresolved sources, the conversion results in units of flux (irradiance). The lucy:units_of_conversion_constants attribute contains the appropriate physical units for the conversion constants in the class in which it is contained to produce either radiance or flux units, as appropriate, when the conversion is applied. 	|
|Attribute |	solar_constant		| The lucy:solar_constant attribute supplies the constant to be used for sources with a spectral distribution similar to the Sun to convert calibrated pixel values to physical units.  |
|Attribute |	red_trojan_constant	|	 The lucy:red_trojan_constant attribute supplies the constant to be used for sources with a spectral distribution similar to that of "red" Trojans to convert calibrated pixel values to physical units. 	|
|Attribute |	gray_trojan_constant	|	 The lucy:gray_trojan_constant attribute supplies the constant to be used for sources with a spectral distribution similar to that of "gray" Trojans to convert calibrated pixel values to physical units. |
|Attribute |	dinkinesh_constant	|	 The lucy:dinkinesh_constant attribute supplies the constant to be used for sources with a spectral distribution similar to that of Dinkinesh to convert calibrated pixel values to physical units. 	|


# Examples

Note: the examples below reside within the `Mission_Area` section of their PDS4 labels.

## Observational parameters common to all instruments

```xml
<lucy:Lucy_Observation_Planning>
  <lucy:load_identifier>22289 </lucy:load_identifier>
  <lucy:mission_segment>EGA_1</lucy:mission_segment>
  <lucy:sap_identifier>SAP.RA.C.013.v01__Earth_Radiometry</lucy:sap_identifier>
  <lucy:visit_name>22289.ega1.RA.C.013.v01.288ae__Earth_Radiometry</lucy:visit_name>
  <lucy:instrument_side>SIDE_1</lucy:instrument_side>
  <lucy:llorri_status>UNKNOWN</lucy:llorri_status>
  <lucy:lralph_status>ACTIVE</lucy:lralph_status>
  <lucy:ltes_status>ACTIVE</lucy:ltes_status>
  <lucy:ttcam_status>UNKNOWN</lucy:ttcam_status>
</lucy:Lucy_Observation_Planning>
<lucy:Lucy_Observation_Time_Information>
  <lucy:observation_id>2230</lucy:observation_id>
  <lucy:observation_complete>COMPLETE</lucy:observation_complete>
  <lucy:observation_missing_packets>0</lucy:observation_missing_packets>
  <lucy:start_sclk unit="s"> 719078053.248</lucy:start_sclk>
  <lucy:mid_sclk unit="s">719078082.0999761 </lucy:mid_sclk>
  <lucy:stop_sclk unit="s">719078110.9519521</lucy:stop_sclk>
  <lucy:mid_utc>2022-10-15T03:54:59.454Z</lucy:mid_utc>
  <lucy:mid_sclk_string>1/0719078082-06552</lucy:mid_sclk_string>
  <lucy:mid_utc_doy>2022-288T03:54:59.454Z</lucy:mid_utc_doy>
  <lucy:mid_utc_jd unit="julian day">JD 2459867.6631881</lucy:mid_utc_jd>
  <lucy:mid_ephemeris_time unit="s">719078168.6364158 </lucy:mid_ephemeris_time>
  <lucy:ccsds_sclk_time unit="s"> 71942620</lucy:ccsds_sclk_time>
</lucy:Lucy_Observation_Time_Information>
<lucy:Lucy_Target_List>
  <lucy:target_fov_count>1</lucy:target_fov_count>
  <lucy:target_fov_name>Earth</lucy:target_fov_name>
</lucy:Lucy_Target_List>
<lucy:Lucy_Product_Information>
  <lucy:internal_product_version_id>1</lucy:internal_product_version_id>
</lucy:Lucy_Product_Information>
```

## L'LORRI instrument parameters

```xml
<lucy:LLORRI_Instrument_Parameters>
                <lucy:attached_sync_marker_dec>449838109</lucy:attached_sync_marker_dec>
                <lucy:attached_sync_marker_hex>0x1ACFFC1D</lucy:attached_sync_marker_hex>
                <lucy:latch_count>0</lucy:latch_count>
                <lucy:calibration_lamp_level_1 unit="DN">0</lucy:calibration_lamp_level_1>
                <lucy:calibration_lamp_level_2 unit="DN">0</lucy:calibration_lamp_level_2>
                <lucy:bias_level unit="DN">120.0531862745098</lucy:bias_level>
                <lucy:read_noise unit="DN">0.9</lucy:read_noise>
                <lucy:ccd_gain unit="electron/DN">21.1</lucy:ccd_gain>
                <lucy:bias_offset unit="DN">3.2</lucy:bias_offset>
                <lucy:frame_transfer_scrub_time unit="ms">11.7762</lucy:frame_transfer_scrub_time>
                <lucy:Radiometric_Conversion_Constants>
                    <lucy:pivot_wavelength unit="Angstrom">6030.0</lucy:pivot_wavelength>
                    <lucy:Diffuse_Source>
                        <lucy:units_of_conversion_constants>(DN/s/pixel)/(erg/cm^2/s/Angstrom/sr)</lucy:units_of_conversion_constants>
                        <lucy:solar_constant>271300.0</lucy:solar_constant>
                        <lucy:red_trojan_constant>278400.0</lucy:red_trojan_constant>
                        <lucy:gray_trojan_constant>271200.0</lucy:gray_trojan_constant>
                        <lucy:dinkinesh_constant>286000.0</lucy:dinkinesh_constant>
                    </lucy:Diffuse_Source>
                    <lucy:Point_Source>
                        <lucy:units_of_conversion_constants>(DN/s)/(erg/cm^2/s/Angstrom)</lucy:units_of_conversion_constants>
                        <lucy:solar_constant>1.101e+16</lucy:solar_constant>
                        <lucy:red_trojan_constant>1.13e+16</lucy:red_trojan_constant>
                        <lucy:gray_trojan_constant>1.101e+16</lucy:gray_trojan_constant>
                    </lucy:Point_Source>
                    <lucy:photometric_zero_point>18.93</lucy:photometric_zero_point>
                </lucy:Radiometric_Conversion_Constants>
            </lucy:LLORRI_Instrument_Parameters>
```

## L'Ralph common instrument parameters (shared between MVIC and LEISA)

```xml
<lucy:LRalph_Instrument_Common_Parameters>
  <lucy:playback_start unit="s">719548332</lucy:playback_start>
  <lucy:playback_end unit="s">719549015</lucy:playback_end>
  <lucy:playback_bad_pixel_mask_status>false</lucy:playback_bad_pixel_mask_status>
  <lucy:playback_truncation_status>true</lucy:playback_truncation_status>
  <lucy:playback_header_type>MVIC</lucy:playback_header_type>
  <lucy:test_pattern_setting>0</lucy:test_pattern_setting>
  <lucy:hs_xtrack_start_row>79</lucy:hs_xtrack_start_row>
  <lucy:scan_row_pixels>5024</lucy:scan_row_pixels>
  <lucy:fpecrc_error_flag>false</lucy:fpecrc_error_flag>
  <lucy:m4_calibration_state>0</lucy:m4_calibration_state>
  <lucy:m4_blackbody_setting>0</lucy:m4_blackbody_setting>
  <lucy:m4_filament_setting>0</lucy:m4_filament_setting>
  <lucy:fpe_drop_frames>25</lucy:fpe_drop_frames>
  <lucy:mce_scan_rate unit="rad/s">0.004</lucy:mce_scan_rate>
  <lucy:first_packet_timestamp unit="s">719212908.1950001 </lucy:first_packet_timestamp>
  <lucy:last_packet_timestamp unit="s">719212919.048</lucy:last_packet_timestamp>
  <lucy:xsum_error_flag_status>false</lucy:xsum_error_flag_status>
  <lucy:lr_acquisition_start_block>2419</lucy:lr_acquisition_start_block>
  <lucy:mce_start_postion>-18200</lucy:mce_start_postion>
  <lucy:mce_end_postion>17000</lucy:mce_end_postion>
  <lucy:board_selection>FM 1</lucy:board_selection>
  <lucy:blocks_allocated>24</lucy:blocks_allocated>
</lucy:LRalph_Instrument_Common_Parameters>
```

## L'Ralph/MVIC-specific instrument parameters

```xml
<lucy:MVIC_Instrument_Parameters>
  <lucy:mvic_ccd_list>2,3,4,5,6</lucy:mvic_ccd_list>
  <lucy:mvic_actual_atrack_summing>0</lucy:mvic_actual_atrack_summing>
  <lucy:mvic_actual_xtrack_summing>0</lucy:mvic_actual_xtrack_summing>
  <lucy:mvic_planned_atrack_summing>0</lucy:mvic_planned_atrack_summing>
  <lucy:mvic_planned_xtrack_summing>0</lucy:mvic_planned_xtrack_summing>
  <lucy:mvic_summing_mode>0</lucy:mvic_summing_mode>
  <lucy:actual_ccd1_tdi_configuration>NO_PLAYBACK</lucy:actual_ccd1_tdi_configuration>
  <lucy:actual_ccd2_tdi_configuration>TDI_4 </lucy:actual_ccd2_tdi_configuration>
  <lucy:actual_ccd3_tdi_configuration>TDI_4 </lucy:actual_ccd3_tdi_configuration>
  <lucy:actual_ccd4_tdi_configuration>TDI_4 </lucy:actual_ccd4_tdi_configuration>
  <lucy:actual_ccd5_tdi_configuration>TDI_4 </lucy:actual_ccd5_tdi_configuration>
  <lucy:actual_ccd6_tdi_configuration>TDI_4 </lucy:actual_ccd6_tdi_configuration>
  <lucy:planned_ccd1_tdi_configuration>NO_PLAYBACK</lucy:planned_ccd1_tdi_configuration>
  <lucy:planned_ccd2_tdi_configuration>4_ROWS </lucy:planned_ccd2_tdi_configuration>
  <lucy:planned_ccd3_tdi_configuration>4_ROWS </lucy:planned_ccd3_tdi_configuration>
  <lucy:planned_ccd4_tdi_configuration>4_ROWS </lucy:planned_ccd4_tdi_configuration>
  <lucy:planned_ccd5_tdi_configuration>4_ROWS </lucy:planned_ccd5_tdi_configuration>
  <lucy:planned_ccd6_tdi_configuration>4_ROWS </lucy:planned_ccd6_tdi_configuration>
  <lucy:mvic_fpe_vis_temperature unit ="degC">9.009289875250857</lucy:mvic_fpe_vis_temperature>
  <lucy:mvic_observation_allocation unit ="s">10</lucy:mvic_observation_allocation>
  <lucy:mvic_tdi_row_integration_time unit ="microseconds">7250</lucy:mvic_tdi_row_integration_time>
</lucy:MVIC_Instrument_Parameters>
```

## L'Ralph/LEISA-specific instrument parameters

```xml
<lucy:LEISA_Instrument_Parameters>
  <lucy:leisa_mode>T</lucy:leisa_mode>
  <lucy:leisa_observation_allocation unit="s">59</lucy:leisa_observation_allocation>
  <lucy:leisa_integration_time unit="microseconds">26.640</lucy:leisa_integration_time>
  <lucy:leisa_atrack_start_channel>4</lucy:leisa_atrack_start_channel>
  <lucy:leisa_atrack_num_channels>23</lucy:leisa_atrack_num_channels>
  <lucy:leisa_xtrack_start_row>647</lucy:leisa_xtrack_start_row>
  <lucy:leisa_xtrack_num_rows>20</lucy:leisa_xtrack_num_rows>
  <lucy:leisa_offset>1111</lucy:leisa_offset>
  <lucy:leisa_fpe_ir_temperature unit="degC">-1.701436782829319</lucy:leisa_fpe_ir_temperature>
</lucy:LEISA_Instrument_Parameters>
```
