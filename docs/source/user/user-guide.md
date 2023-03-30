{date}  
{author}

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

*Give a schematic diagram or a list showing the hierarchy of
classes in order of appearance in label. Refer the reader to the
[Definitions section](#definitions) for complete definitions. An example of such a
list is given on the page `<dead link>` on the PDS Small Bodies Node wiki. In this
example the names of classes and attributes have hyperlinks to their definitions
further down the page, a useful lookup tool.*

*The author should take into consideration the complexity
of the dictionary when organizing this section.  If the hierarchy is large or
complicated, it may be helpful to break it down by class as shown in the
following subsections, but don’t forget to provide a high-level view of how the
classes relate to one another.*

## `Lucy_Observation_Time_Information`

*What is this class for?*

*Give a schematic diagram or a list of the attributes in this class in order of 
appearance in label. Refer reader to Definitions section for complete definitions.*

*Give label snippets showing use of the class and attributes, with annotations 
as appropriate. Refer reader to Examples section for complete examples.*

*Explain why some things are required and others are optional.*

*List and explain any rules that apply to this class (e.g. from Schematron).*

## `Lucy_Observation_Planning`

## `Lucy_Target_List`

## `Lucy_Product_Information`

## `LLORRI_Instrument_Parameters`

## `LRalph_Instrument_Common_Parameters`

## `LEISA_Instrument_Parameters`

## `MVIC_Instrument_Parameters`


# Definitions

| Type      | Name           | Description   |
|-----------|-------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Class     | Lucy_Observation_Time_Information   | Lucy Mission observation identification and timing information.           |
| Attribute | observation_id | The Lucy Mission observation identifier.|
| Attribute | observation_id_count | The Lucy Mission observation identifier counter. This number increments by 1 with each planned observation sequence.|
| Attribute | observation_complete | The Lucy Mission observation is complete.              |
| Attribute | observation_missing_packets         | The number of missing packets in the observation. The best data quality has no missing packets.|
| Attribute | start_sclk     | The start time of the observation in Lucy spacrcraft clock format sssssssss.ttttttt, seconds.ticks where ticks are 1/65535 of a second.    |
| Attribute | mid_sclk       | The middle time of the observation in Lucy spacrcraft clock format sssssssss.ttttttt, seconds.ticks where ticks are 1/65535 of a second.   |
| Attribute | stop_sclk      | The end time of the observation in Lucy spacrcraft clock format sssssssss.ttttttt, seconds.ticks where ticks are 1/65535 of a second.      |
| Attribute | mid_utc        | The middle time of the observation in ISO UTC format "YYYY-MM-DDTHH:MM:SS.sss"  |
| Attribute | mid_sclk_string| The middle time of the observation in Lucy spacecraft clock string partition/SSSSSSSSSS-PPPPP, where S is seconds and P are ticks in units of 1/66535 of a second.    |
| Attribute | mid_utc_doy    | The middle time of the observation in ISO DOY format, YYYY-DOYTHH:MM:SS.sss     |
| Attribute | mid_utc_jd     | The middle time of the observation in Julian day format, |
| Attribute | mid_ephemeris_time   | The middle time of the observation in ephemeris time, seconds past J2000, TDB.  |
| Attribute | ccsds_sclk_time| The Lucy spacecraft clock time of the CCSDS playback timestamp in seconds.|
| Class     | Lucy_Observation_Planning           | The Lucy Mission observation planning class and attributes describe the observation planning information needed to understand the planned spacecraft observations.    |
| Attribute | load_identifier| The command sequence load identifier|
| Attribute | mission_segment| The Lucy Mission segment           |
| Attribute | sap_identifier | The Lucy Mission science activity plan identifier.     |
| Attribute | visit_name     | The Lucy Mission trojan asteroid visti name.           |
| Attribute | instrument_side| The Lucy elctronics side.          |
| Attribute | llorri_status  | The status of the L'LORRI instrument.  |
| Attribute | lralph_status  | The status of the L'RALPH instrument.  |
| Attribute | ltes_status    | The status of the L'TES instrument.|
| Attribute | ttcam_status   | The status of the TTCAM instrument.|
| Class     | Lucy_Target_List     | The Lucy Mission class that contains the target list of potential targets in a given observation.    |
| Attribute | target_fov_count     | The number of possible targets in FOV (SPICE-derived). |
| Attribute | target_fov_name| The name of the possible target in FOV (SPICE-derived).|
| Class     | Lucy_Product_Information            | The Lucy Mission class that contains attributes specific to the labeled data product.          |
| Attribute | internal_product_version_id         | The Lucy pipeline internal data processing version number. This number is likely to be grater than the PDS version number given in the version_id attribute in the Observation_Area. |
| Class     | LLORRI_Instrument_Parameters        | The Lucy LORRI instrument class that contains instrument specific attributes relevant to the labeled data product.  |
| Attribute | attached_sync_marker_dec            | Attached Sync Marker, decimal representation.          |
| Attribute | attached_sync_marker_hex            | Attached Sync Marker, hexidecimal representation.      |
| Attribute | latch_count    | The number of times a latchup has occurred.            |
| Attribute | calibration_lamp_level_1            | The Digital Number (DN) setting for calibration lamp one.|
| Attribute | calibration_lamp_level_2            | The Digital Number (DN) setting for calibration lamp two.|
| Class     | LRalph_Instrument_Common_Parameters | The Lucy LRalph instrument class that contains the common (LEISA and MVIC) instrument specific attributes relevant to the labeled data product.  |
| Attribute | playback_start                  | Playback science header timstamp of the first m4 packet used in spacecraft clock seconds.      |
| Attribute | playback_end                    | Playback science header timstamp of the last m4 packet used in spacecraft clock seconds.       |
| Attribute | playback_bad_pixel_mask_status  | Status of the bad pixel map, true or false             |
| Attribute | playback_truncation_status      | Status of the truncation enabled, true or false        |
| Attribute | playback_header_type            | Playback header type|
| Attribute | test_pattern_setting            | The instrument test pattern setting, 0 is science, 1 is test pattern.     |
| Attribute | hs_xtrack_start_row             | The cross track start row from the high speed header.  |
| Attribute | scan_row_pixels                 | The number of pixels in the scan row.  |
| Attribute | scan_row_pixels                 | The number of pixels in the scan row.  |
| Attribute | fpecrc_error_flag               | FPE checksum error flag, true or false |
| Attribute | m4_calibration_state            | Calibration state (TBR)            |
| Attribute | m4_blackbody_setting            | Blackbody state (TBR)              |
| Attribute | m4_filament_setting             | Filament setting (TBR)             |
| Attribute | fpe_drop_frames                 | Number of FPE drop frames (TBR).   |
| Attribute | mce_scan_rate                   | The MCE scan rate (TBR).           |
| Attribute | first_packet_timestamp          | The timestamp of the first packet recorded in spacraft clock seconds.     |
| Attribute | last_packet_timestamp           | The timestamp of the last packet recorded in spacraft clock seconds.      |
| Attribute | xsum_error_flag_status          | Xsum flag indicating if there are errors in the stored data packet, true or false              |
| Attribute | lr_acquisition_start_block      | The Lralph observation acquisition start block address.|
| Attribute | mce_start_postion               | The MCE start position (TBR), units TBD|
| Attribute | mce_end_postion                 | The MCE start position (TBR), units TBD|
| Attribute | board_selection                 | The instrument side selected       |
| Attribute | blocks_allocated                | The number of blocks allocated     |
| Class     | LEISA_Instrument_Parameters         | The Lucy LRalph LEISA class that contains the instrument specific attributes relevant to the labeled data product.  |
| Attribute | leisa_mode                          | LEISA observation mode, T is CDS, F is NONCDS. (TBR)   |
| Attribute | leisa_observation_allocation        | LEISA observation allocation duration. |
| Attribute | leisa_integration_time              | LEISA observation integration time (TBR)|
| Attribute | leisa_atrack_start_channel          | LEISA along track start channel    |
| Attribute | leisa_atrack_num_channels           | LEISA along track number of channels.  |
| Attribute | leisa_xtrack_start_row              | LEISA cross track start row.       |
| Attribute | leisa_xtrack_num_rows               | LEISA cross track number of rows.  |
| Attribute | leisa_offset   | LEISA offset (TBR) |
| Attribute | leisa_fpe_ir_temperature            | LEISA FPE IR Temperature (TBR)     |
| Class     | MVIC_Instrument_Parameters          | The Lucy LRalph MVIC class that contains the instrument specific attributes relevant to the labeled data product.   |
| Attribute | mvic_ccd_list                       | List of the MVIC CCDs used in this observation.        |
| Attribute | mvic_actual_atrack_summing          | MVIC actual along track pixel summing. |
| Attribute | mvic_actual_xtrack_summing          | MVIC actual along track pixel summing. |
| Attribute | mvic_planned_atrack_summing         | MVIC actual summing mode.          |
| Attribute | mvic_planned_xtrack_summing         | MVIC planned along track pixel summing.|
| Attribute | mvic_summing_mode                   | MVIC planned summing mode.         |
| Attribute | actual_ccd1_tdi_configuration       | Actual CCD 1 TDI configuration.    |
| Attribute | actual_ccd2_tdi_configuration       | Actual CCD 2 TDI configuration.    |
| Attribute | actual_ccd3_tdi_configuration       | Actual CCD 3 TDI configuration.    |
| Attribute | actual_ccd4_tdi_configuration       | Actual CCD 4 TDI configuration.    |
| Attribute | actual_ccd5_tdi_configuration       | Actual CCD 5 TDI configuration.    |
| Attribute | actual_ccd6_tdi_configuration       | Actual CCD 6 TDI configuration.    |
| Attribute | planned_ccd1_tdi_configuration      | The planned CCD 1 TDI configuration.|
| Attribute | planned_ccd2_tdi_configuration      | The planned CCD 2 TDI configuration.|
| Attribute | planned_ccd3_tdi_configuration      | The planned CCD 3 TDI configuration.|
| Attribute | planned_ccd4_tdi_configuration      | The planned CCD 4 TDI configuration.|
| Attribute | planned_ccd5_tdi_configuration      | The planned CCD 5 TDI configuration.|
| Attribute | planned_ccd6_tdi_configuration      | The planned CCD 6 TDI configuration.|
| Attribute | mvic_fpe_vis_temperature            | The MVIC FPE VIS Temperature       |
| Attribute | mvic_observation_allocation         | MVIC allocated observation duration|
| Attribute | mvic_tdi_row_integration_time       | MVIC allocated observation duration|

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
  <lucy:calibration_lamp_level_1 unit="DN">1600</lucy:calibration_lamp_level_1>
  <lucy:calibration_lamp_level_2 unit="DN">1600</lucy:calibration_lamp_level_2>
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
