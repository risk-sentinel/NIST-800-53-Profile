control 'CM-10' do
  impact 0.5
  title 'Software Usage Restrictions'
  desc <<~DESC
    a. Use software and associated documentation in accordance with contract agreements and copyright laws;
    b. Track the use of software and associated documentation protected by quantity licenses to control copying and distribution; and
    c. Control and document the use of peer-to-peer file sharing technology to ensure that this capability is not used for the unauthorized distribution, display, performance, or reproduction of copyrighted work.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      CM-10a. software and associated documentation are used in accordance with contract agreements and copyright laws;
      CM-10b. the use of software and associated documentation protected by quantity licenses is tracked to control copying and distribution;
      CM-10c. the use of peer-to-peer file sharing technology is controlled and documented to ensure that peer-to-peer file sharing is not used for the unauthorized distribution, display, performance, or reproduction of copyrighted work.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; software usage restrictions; software contract agreements and copyright laws; site license documentation; list of software usage restrictions; software license tracking reports; configuration management plan; system security plan; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel operating, using, and/or maintaining the system; organizational personnel with software license management responsibilities; organizational personnel with information security responsibilities; system/network administrators
      TEST: Organizational processes for tracking the use of software protected by quantity licenses; organizational processes for controlling/documenting the use of peer-to-peer file sharing technology; mechanisms implementing software license tracking; mechanisms implementing and controlling the use of peer-to-peer files sharing technology
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Software license tracking can be accomplished by manual or automated methods, depending on organizational needs. Examples of contract agreements include software license agreements and non-disclosure agreements.
  GUIDANCE
  tag nist: ['CM-10']
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{LOW MODERATE HIGH}
  tag baseline_low: true
  tag baseline_moderate: true
  tag baseline_high: true

  describe 'NIST SP 800-53 Rev 5 control CM-10' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
