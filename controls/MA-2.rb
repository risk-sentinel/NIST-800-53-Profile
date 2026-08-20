control 'MA-2' do
  impact 0.5
  title 'Controlled Maintenance'
  desc <<~DESC
    a. Schedule, document, and review records of maintenance, repair, and replacement on system components in accordance with manufacturer or vendor specifications and/or organizational requirements;
    b. Approve and monitor all maintenance activities, whether performed on site or remotely and whether the system or system components are serviced on site or removed to another location;
    c. Require that #{input('ma_02_odp_01')} explicitly approve the removal of the system or system components from organizational facilities for off-site maintenance, repair, or replacement;
    d. Sanitize equipment to remove the following information from associated media prior to removal from organizational facilities for off-site maintenance, repair, or replacement: #{input('ma_02_odp_02')};
    e. Check all potentially impacted controls to verify that the controls are still functioning properly following maintenance, repair, or replacement actions; and
    f. Include the following information in organizational maintenance records: #{input('ma_02_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MA-02a.
        MA-02a.[01] maintenance, repair, and replacement of system components are scheduled in accordance with manufacturer or vendor specifications and/or organizational requirements;
        MA-02a.[02] maintenance, repair, and replacement of system components are documented in accordance with manufacturer or vendor specifications and/or organizational requirements;
        MA-02a.[03] records of maintenance, repair, and replacement of system components are reviewed in accordance with manufacturer or vendor specifications and/or organizational requirements;
      MA-02b.
        MA-02b.[01] all maintenance activities, whether performed on site or remotely and whether the system or system components are serviced on site or removed to another location, are approved;
        MA-02b.[02] all maintenance activities, whether performed on site or remotely and whether the system or system components are serviced on site or removed to another location, are monitored;
      MA-02c. #{input('ma_02_odp_01')} is/are required to explicitly approve the removal of the system or system components from organizational facilities for off-site maintenance, repair, or replacement;
      MA-02d. equipment is sanitized to remove #{input('ma_02_odp_02')} from associated media prior to removal from organizational facilities for off-site maintenance, repair, or replacement;
      MA-02e. all potentially impacted controls are checked to verify that the controls are still functioning properly following maintenance, repair, or replacement actions;
      MA-02f. #{input('ma_02_odp_03')} is included in organizational maintenance records.

    Assessment methods and objects:
      EXAMINE: Maintenance policy; procedures addressing controlled system maintenance; maintenance records; manufacturer/vendor maintenance specifications; equipment sanitization records; media sanitization records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system maintenance responsibilities; organizational personnel with information security responsibilities; organizational personnel responsible for media sanitization; system/network administrators
      TEST: Organizational processes for scheduling, performing, documenting, reviewing, approving, and monitoring maintenance and repairs for the system; organizational processes for sanitizing system components; mechanisms supporting and/or implementing controlled maintenance; mechanisms implementing the sanitization of system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Controlling system maintenance addresses the information security aspects of the system maintenance program and applies to all types of maintenance to system components conducted by local or nonlocal entities. Maintenance includes peripherals such as scanners, copiers, and printers. Information necessary for creating effective maintenance records includes the date and time of maintenance, a description of the maintenance performed, names of the individuals or group performing the maintenance, name of the escort, and system components or equipment that are removed or replaced. Organizations consider supply chain-related risks associated with replacement components for systems.
  GUIDANCE
  tag nist: ['MA-2']
  tag rev: 'Rev_5'
  tag family: 'Maintenance'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ma_02_odp_01 ma_02_odp_02 ma_02_odp_03}

  describe 'NIST SP 800-53 Rev 5 control MA-2' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
