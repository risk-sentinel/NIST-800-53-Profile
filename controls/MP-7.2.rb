control 'MP-7 (2)' do
  impact 0.5
  title 'Prohibit Use of Sanitization-resistant Media'
  desc <<~DESC
    Prohibit the use of sanitization-resistant media in organizational systems.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      MP-07(02)[01] sanitization-resistant media is identified;
      MP-07(02)[02] the use of sanitization-resistant media in organizational systems is prohibited.

    Assessment methods and objects:
      EXAMINE: System media protection policy; system use policy; procedures addressing media usage restrictions; rules of behavior; system configuration settings and associated documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system media use responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for media use; mechanisms prohibiting use of media on systems or system components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Sanitization resistance refers to how resistant media are to non-destructive sanitization techniques with respect to the capability to purge information from media. Certain types of media do not support sanitization commands, or if supported, the interfaces are not supported in a standardized way across these devices. Sanitization-resistant media includes compact flash, embedded flash on boards and devices, solid state drives, and USB removable media.
  GUIDANCE
  tag nist: ['MP-7 (2)']
  tag rev: 'Rev_5'
  tag family: 'Media Protection'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control MP-7 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
