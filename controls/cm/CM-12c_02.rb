control 'CM-12c.[02]' do
  impact 0.5
  title "changes to the location (i.e., system or system components) where #{input('cm_12_odp')} is stored are documented."
  desc <<~DESC
    a. Identify and document the location of #{input('cm_12_odp')} and the specific system components on which the information is processed and stored;
    b. Identify and document the users who have access to the system and system components where the information is processed and stored; and
    c. Document changes to the location (i.e., system or system components) where the information is processed and stored.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      changes to the location (i.e., system or system components) where #{input('cm_12_odp')} is stored are documented.

    Assessment methods and objects:
      EXAMINE: Configuration management policy; procedures addressing identification and documentation of information location; configuration management plan; system design documentation; system architecture documentation; PII inventory documentation; data mapping documentation; audit records; list of users with system and system component access; change control records; system component inventory; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for managing information location and user access to information; organizational personnel with responsibilities for operating, using, and/or maintaining the system; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Organizational processes governing information location; mechanisms enforcing policies and methods for governing information location
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Information location addresses the need to understand where information is being processed and stored. Information location includes identifying where specific information types and information reside in system components and how information is being processed so that information flow can be understood and adequate protection and policy management provided for such information and system components. The security category of the information is also a factor in determining the controls necessary to protect the information and the system component where the information resides (see [FIPS 199](#628d22a1-6a11-4784-bc59-5cd9497b5445) ). The location of the information and system components is also a factor in the architecture and design of the system (see [SA-4](#sa-4), [SA-8](#sa-8), [SA-17](#sa-17)).
  GUIDANCE
  tag nist: ['CM-12']
  tag control: 'CM-12'
  tag objective: 'CM-12c.[02]'
  tag rev: 'Rev_5'
  tag family: 'Configuration Management'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_cm_12: true
  tag odp: %w{cm_12_odp}

  describe 'NIST SP 800-53A Rev 5 objective CM-12c.[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
