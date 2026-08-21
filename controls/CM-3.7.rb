control 'CM-3 (7)' do
  impact 0.5
  title 'Review System Changes'
  desc <<~DESC
    Review changes to the system #{input('cm_03_07_odp_01')} or when #{input('cm_03_07_odp_02')} to determine whether unauthorized changes have occurred.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-03(07) changes to the system are reviewed #{input('cm_03_07_odp_01')} or when #{input('cm_03_07_odp_02')} to determine whether unauthorized changes have occurred.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing system configuration change control; configuration management plan; change control records; system architecture and configuration documentation; system configuration settings and associated documentation; system audit records; system component inventory; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with configuration change control responsibilities; organizational personnel with security responsibilities; system/network administrators; members of change control board or similar
      TEST: Organizational processes for configuration change control; mechanisms implementing audit records for changes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Indications that warrant a review of changes to the system and the specific circumstances justifying such reviews may be obtained from activities carried out by organizations during the configuration change process or continuous monitoring process.
  GUIDANCE
  tag nist: ['CM-3 (7)']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{}
  tag odp: %w{cm_03_07_odp_01 cm_03_07_odp_02}

  describe 'NIST SP 800-53 Rev 5 control CM-3 (7)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
