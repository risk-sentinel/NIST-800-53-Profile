control 'PE-05(02)' do
  impact 0.5
  title "individual identity is linked to the receipt of output from output devices."
  desc <<~DESC
    Link individual identity to receipt of output from output devices.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      individual identity is linked to the receipt of output from output devices.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access control; system design documentation; system configuration settings and associated documentation; list of output devices and associated outputs requiring physical access controls; physical access control logs or records for areas containing output devices and related outputs; system audit records; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access control responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Organizational processes for access control to output devices; mechanisms supporting and/or implementing access control to output devices
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Methods for linking individual identity to the receipt of output from output devices include installing security functionality on facsimile machines, copiers, and printers. Such functionality allows organizations to implement authentication on output devices prior to the release of output to individuals.
  GUIDANCE
  tag nist: ['PE-5 (2)']
  tag control: 'PE-5 (2)'
  tag objective: 'PE-05(02)'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_5_2: true

  describe 'NIST SP 800-53A Rev 5 objective PE-05(02)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
