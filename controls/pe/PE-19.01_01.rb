control 'PE-19(01)[01]' do
  impact 0.5
  title "system components are protected in accordance with national emissions security policies and procedures based on the security category or classification of the information;"
  desc <<~DESC
    Protect system components, associated data communications, and networks in accordance with national Emissions Security policies and procedures based on the security category or classification of the information.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      system components are protected in accordance with national emissions security policies and procedures based on the security category or classification of the information;

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing information leakage that comply with national emissions and TEMPEST policies and procedures; system component design documentation; system configuration settings and associated documentation system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for system environmental controls; organizational personnel with information security responsibilities
      TEST: Information system components for compliance with national emissions and TEMPEST policies and procedures
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Emissions Security (EMSEC) policies include the former TEMPEST policies.
  GUIDANCE
  tag nist: ['PE-19 (1)']
  tag control: 'PE-19 (1)'
  tag objective: 'PE-19(01)[01]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_19_1: true

  describe 'NIST SP 800-53A Rev 5 objective PE-19(01)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
