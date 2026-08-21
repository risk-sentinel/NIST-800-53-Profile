control 'MP-07b.' do
  impact 0.5
  title "the use of portable storage devices in organizational systems is prohibited when such devices have no identifiable owner."
  desc <<~DESC
    a. #{input('mp_07_odp_02')} the use of #{input('mp_07_odp_01')} on #{input('mp_07_odp_03')} using #{input('mp_07_odp_04')} ; and
    b. Prohibit the use of portable storage devices in organizational systems when such devices have no identifiable owner.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the use of portable storage devices in organizational systems is prohibited when such devices have no identifiable owner.

    Assessment methods and objects:
      EXAMINE: System media protection policy; system use policy; procedures addressing media usage restrictions; rules of behavior; system design documentation; system configuration settings and associated documentation; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media use responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for media use; mechanisms restricting or prohibiting the use of system media on systems or system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System media includes both digital and non-digital media. Digital media includes diskettes, magnetic tapes, flash drives, compact discs, digital versatile discs, and removable hard disk drives. Non-digital media includes paper and microfilm. Media use protections also apply to mobile devices with information storage capabilities. In contrast to [MP-2](#mp-2) , which restricts user access to media, MP-7 restricts the use of certain types of media on systems, for example, restricting or prohibiting the use of flash drives or external hard disk drives. Organizations use technical and nontechnical controls to restrict the use of system media. Organizations may restrict the use of portable storage devices, for example, by using physical cages on workstations to prohibit access to certain external ports or disabling or removing the ability to insert, read, or write to such devices. Organizations may also limit the use of portable storage devices to only approved devices, including devices provided by the organization, devices provided by other approved organizations, and devices that are not personally owned. Finally, organizations may restrict the use of portable storage devices based on the type of device, such as by prohibiting the use of writeable, portable storage devices and implementing this restriction by disabling or removing the capability to write to such devices. Requiring identifiable owners for storage devices reduces the risk of using such devices by allowing organizations to assign responsibility for addressing known vulnerabilities in the devices.
  GUIDANCE
  tag nist: ['MP-7']
  tag control: 'MP-7'
  tag objective: 'MP-07b.'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_mp_7: true
  tag odp: %w{mp_07_odp_01 mp_07_odp_02 mp_07_odp_03 mp_07_odp_04}

  describe 'NIST SP 800-53A Rev 5 objective MP-07b.' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
