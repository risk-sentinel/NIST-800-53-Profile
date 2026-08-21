control 'AC-16(05)[01]' do
  impact 0.5
  title "security attributes are displayed in human-readable form on each object that the system transmits to output devices to identify #{input('ac_16_05_odp_01')} using #{input('ac_16_05_odp_02')};"
  desc <<~DESC
    Display security and privacy attributes in human-readable form on each object that the system transmits to output devices to identify #{input('ac_16_05_odp_01')} using #{input('ac_16_05_odp_02')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      security attributes are displayed in human-readable form on each object that the system transmits to output devices to identify #{input('ac_16_05_odp_01')} using #{input('ac_16_05_odp_02')};

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing display of security and privacy attributes in human-readable form; special dissemination, handling, or distribution instructions; types of human-readable, standard naming conventions; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system developers
      TEST: System output devices displaying security and privacy attributes in human-readable form on each object
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    System outputs include printed pages, screens, or equivalent items. System output devices include printers, notebook computers, video displays, smart phones, and tablets. To mitigate the risk of unauthorized exposure of information (e.g., shoulder surfing), the outputs display full attribute values when unmasked by the subscriber.
  GUIDANCE
  tag nist: ['AC-16 (5)']
  tag control: 'AC-16 (5)'
  tag objective: 'AC-16(05)[01]'
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag control_ac_16_5: true
  tag odp: %w{ac_16_05_odp_01 ac_16_05_odp_02}

  describe 'NIST SP 800-53A Rev 5 objective AC-16(05)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
