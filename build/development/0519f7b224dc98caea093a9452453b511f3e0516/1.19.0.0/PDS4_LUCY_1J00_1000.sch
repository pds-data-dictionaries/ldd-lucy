<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:lucy  Version:1.0.0.0 - Tue Mar 28 20:09:30 UTC 2023 -->
  <!-- Generated from the PDS4 Information Model Version 1.19.0.0 - System Build 13.0 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/lucy/v1" prefix="lucy"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="lucy:LEISA_Instrument_Parameters/lucy:leisa_fpe_ir_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>lucy:LEISA_Instrument_Parameters/lucy:leisa_fpe_ir_temperature/lucy:leisa_fpe_ir_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LEISA_Instrument_Parameters/lucy:leisa_integration_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:LEISA_Instrument_Parameters/lucy:leisa_integration_time/lucy:leisa_integration_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LEISA_Instrument_Parameters/lucy:leisa_observation_allocation">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:LEISA_Instrument_Parameters/lucy:leisa_observation_allocation/lucy:leisa_observation_allocation</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LLORRI_Instrument_Parameters/lucy:calibration_lamp_level_1">
      <sch:assert test="@unit = ('DN', 'W/m**2/sr/nm/(DN/s)', 'electron/DN', 'pixel')">
        <title>lucy:LLORRI_Instrument_Parameters/lucy:calibration_lamp_level_1/lucy:calibration_lamp_level_1</title>
        The attribute @unit must be equal to one of the following values 'DN', 'W/m**2/sr/nm/(DN/s)', 'electron/DN', 'pixel'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LLORRI_Instrument_Parameters/lucy:calibration_lamp_level_2">
      <sch:assert test="@unit = ('DN', 'W/m**2/sr/nm/(DN/s)', 'electron/DN', 'pixel')">
        <title>lucy:LLORRI_Instrument_Parameters/lucy:calibration_lamp_level_2/lucy:calibration_lamp_level_2</title>
        The attribute @unit must be equal to one of the following values 'DN', 'W/m**2/sr/nm/(DN/s)', 'electron/DN', 'pixel'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters">
      <sch:assert test="if (lucy:playback_bad_pixel_mask_status) then lucy:playback_bad_pixel_mask_status = ('true', 'false') else true()">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:playback_bad_pixel_mask_status</title>
        The attribute lucy:playback_bad_pixel_mask_status must be equal to one of the following values 'true', 'false'.</sch:assert>
      <sch:assert test="if (lucy:playback_truncation_status) then lucy:playback_truncation_status = ('true', 'false') else true()">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:playback_truncation_status</title>
        The attribute lucy:playback_truncation_status must be equal to one of the following values 'true', 'false'.</sch:assert>
      <sch:assert test="if (lucy:fpecrc_error_flag) then lucy:fpecrc_error_flag = ('true', 'false') else true()">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:fpecrc_error_flag</title>
        The attribute lucy:fpecrc_error_flag must be equal to one of the following values 'true', 'false'.</sch:assert>
      <sch:assert test="if (lucy:xsum_error_flag_status) then lucy:xsum_error_flag_status = ('true', 'false') else true()">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:xsum_error_flag_status</title>
        The attribute lucy:xsum_error_flag_status must be equal to one of the following values 'true', 'false'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters/lucy:board_selection">
      <sch:assert test=". = ('EM 1', 'EM 2', 'ETU', 'FM 1', 'FM 2')">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:board_selection/lucy:board_selection</title>
        The attribute lucy:LRalph_Instrument_Common_Parameters/lucy:board_selection must be equal to one of the following values 'EM 1', 'EM 2', 'ETU', 'FM 1', 'FM 2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters/lucy:first_packet_timestamp">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:first_packet_timestamp/lucy:first_packet_timestamp</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters/lucy:last_packet_timestamp">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:last_packet_timestamp/lucy:last_packet_timestamp</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters/lucy:mce_scan_rate">
      <sch:assert test="@unit = ('counts/bin', 'kilobits/s')">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:mce_scan_rate/lucy:mce_scan_rate</title>
        The attribute @unit must be equal to one of the following values 'counts/bin', 'kilobits/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters/lucy:playback_end">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:playback_end/lucy:playback_end</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters/lucy:playback_header_type">
      <sch:assert test=". = ('LEISA_CDS', 'LEISA_NONCDS', 'MVIC', 'OTHER')">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:playback_header_type/lucy:playback_header_type</title>
        The attribute lucy:LRalph_Instrument_Common_Parameters/lucy:playback_header_type must be equal to one of the following values 'LEISA_CDS', 'LEISA_NONCDS', 'MVIC', 'OTHER'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:LRalph_Instrument_Common_Parameters/lucy:playback_start">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:LRalph_Instrument_Common_Parameters/lucy:playback_start/lucy:playback_start</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Planning/lucy:instrument_side">
      <sch:assert test=". = ('N/A', 'SIDE_1', 'SIDE_2')">
        <title>lucy:Lucy_Observation_Planning/lucy:instrument_side/lucy:instrument_side</title>
        The attribute lucy:Lucy_Observation_Planning/lucy:instrument_side must be equal to one of the following values 'N/A', 'SIDE_1', 'SIDE_2'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Planning/lucy:llorri_status">
      <sch:assert test=". = ('ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED')">
        <title>lucy:Lucy_Observation_Planning/lucy:llorri_status/lucy:llorri_status</title>
        The attribute lucy:Lucy_Observation_Planning/lucy:llorri_status must be equal to one of the following values 'ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Planning/lucy:lralph_status">
      <sch:assert test=". = ('ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED')">
        <title>lucy:Lucy_Observation_Planning/lucy:lralph_status/lucy:lralph_status</title>
        The attribute lucy:Lucy_Observation_Planning/lucy:lralph_status must be equal to one of the following values 'ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Planning/lucy:ltes_status">
      <sch:assert test=". = ('ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED')">
        <title>lucy:Lucy_Observation_Planning/lucy:ltes_status/lucy:ltes_status</title>
        The attribute lucy:Lucy_Observation_Planning/lucy:ltes_status must be equal to one of the following values 'ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Planning/lucy:mission_segment">
      <sch:assert test=". = ('Cruise_1', 'EGA_1')">
        <title>lucy:Lucy_Observation_Planning/lucy:mission_segment/lucy:mission_segment</title>
        The attribute lucy:Lucy_Observation_Planning/lucy:mission_segment must be equal to one of the following values 'Cruise_1', 'EGA_1'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Planning/lucy:ttcam_status">
      <sch:assert test=". = ('ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED')">
        <title>lucy:Lucy_Observation_Planning/lucy:ttcam_status/lucy:ttcam_status</title>
        The attribute lucy:Lucy_Observation_Planning/lucy:ttcam_status must be equal to one of the following values 'ACTIVE', 'POWERED', 'UNKNOWN', 'UNPOWERED'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Time_Information/lucy:ccsds_sclk_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:Lucy_Observation_Time_Information/lucy:ccsds_sclk_time/lucy:ccsds_sclk_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Time_Information/lucy:mid_ephemeris_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:Lucy_Observation_Time_Information/lucy:mid_ephemeris_time/lucy:mid_ephemeris_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Time_Information/lucy:mid_sclk">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:Lucy_Observation_Time_Information/lucy:mid_sclk/lucy:mid_sclk</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Time_Information/lucy:mid_utc_jd">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:Lucy_Observation_Time_Information/lucy:mid_utc_jd/lucy:mid_utc_jd</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Time_Information/lucy:start_sclk">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:Lucy_Observation_Time_Information/lucy:start_sclk/lucy:start_sclk</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:Lucy_Observation_Time_Information/lucy:stop_sclk">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:Lucy_Observation_Time_Information/lucy:stop_sclk/lucy:stop_sclk</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:MVIC_Instrument_Parameters/lucy:mvic_fpe_vis_temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>lucy:MVIC_Instrument_Parameters/lucy:mvic_fpe_vis_temperature/lucy:mvic_fpe_vis_temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:MVIC_Instrument_Parameters/lucy:mvic_observation_allocation">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:MVIC_Instrument_Parameters/lucy:mvic_observation_allocation/lucy:mvic_observation_allocation</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="lucy:MVIC_Instrument_Parameters/lucy:mvic_tdi_row_integration_time">
      <sch:assert test="@unit = ('day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr')">
        <title>lucy:MVIC_Instrument_Parameters/lucy:mvic_tdi_row_integration_time/lucy:mvic_tdi_row_integration_time</title>
        The attribute @unit must be equal to one of the following values 'day', 'hr', 'julian day', 'microseconds', 'min', 'ms', 'ns', 's', 'yr'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
