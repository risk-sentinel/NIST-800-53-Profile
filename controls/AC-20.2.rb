control 'AC-20 (2)' do
  impact 0.5
  title 'Portable Storage Devices — Restricted Use'
  desc <<~DESC
    Restrict the use of organization-controlled portable storage devices by authorized individuals on external systems using #{input('ac_20_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-20(02) the use of organization-controlled portable storage devices by authorized individuals is restricted on external systems using #{input('ac_20_02_odp')}.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing the use of external systems; system configuration settings and associated documentation; system connection or processing agreements; account management documents; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for restricting or prohibiting the use of organization-controlled storage devices on external systems; system/network administrators; organizational personnel with information security responsibilities
      TEST: Mechanisms implementing restrictions on the use of portable storage devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Limits on the use of organization-controlled portable storage devices in external systems include restrictions on how the devices may be used and under what conditions the devices may be used.
  GUIDANCE
  tag nist: ['AC-20 (2)']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{ac_20_02_odp}

  describe 'NIST SP 800-53 Rev 5 control AC-20 (2)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
