control 'MP-06(03)' do
  impact 0.5
  title "non-destructive sanitization techniques are applied to portable storage devices prior to connecting such devices to the system under #{input('mp_06_03_odp')}."
  desc <<~DESC
    Apply nondestructive sanitization techniques to portable storage devices prior to connecting such devices to the system under the following circumstances: #{input('mp_06_03_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      non-destructive sanitization techniques are applied to portable storage devices prior to connecting such devices to the system under #{input('mp_06_03_odp')}.

    Assessment methods and objects:
      EXAMINE: System media protection policy; procedures addressing media sanitization and disposal; information on portable storage devices for the system; list of circumstances requiring sanitization of portable storage devices; media sanitization records; audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media sanitization responsibilities; organizational personnel with information security responsibilities
      TEST: Organizational processes for media sanitization of portable storage devices; mechanisms supporting and/or implementing media sanitization
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Portable storage devices include external or removable hard disk drives (e.g., solid state, magnetic), optical discs, magnetic or optical tapes, flash memory devices, flash memory cards, and other external or removable disks. Portable storage devices can be obtained from untrustworthy sources and contain malicious code that can be inserted into or transferred to organizational systems through USB ports or other entry portals. While scanning storage devices is recommended, sanitization provides additional assurance that such devices are free of malicious code. Organizations consider nondestructive sanitization of portable storage devices when the devices are purchased from manufacturers or vendors prior to initial use or when organizations cannot maintain a positive chain of custody for the devices.
  GUIDANCE
  tag nist: ['MP-6 (3)']
  tag control: 'MP-6 (3)'
  tag objective: 'MP-06(03)'
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_mp_6_3: true
  tag odp: %w{mp_06_03_odp}

  describe 'NIST SP 800-53A Rev 5 objective MP-06(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
