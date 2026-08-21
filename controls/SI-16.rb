control 'SI-16' do
  impact 0.5
  title 'Memory Protection'
  desc <<~DESC
    Implement the following controls to protect the system memory from unauthorized code execution: #{input('si_16_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-16 #{input('si_16_odp')} are implemented to protect the system memory from unauthorized code execution.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing memory protection for the system; system design documentation; system configuration settings and associated documentation; list of security safeguards protecting system memory from unauthorized code execution; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for memory protection; organizational personnel with information security responsibilities; system/network administrators; system developer
      TEST: Automated mechanisms supporting and/or implementing safeguards to protect the system memory from unauthorized code execution
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Some adversaries launch attacks with the intent of executing code in non-executable regions of memory or in memory locations that are prohibited. Controls employed to protect memory include data execution prevention and address space layout randomization. Data execution prevention controls can either be hardware-enforced or software-enforced with hardware enforcement providing the greater strength of mechanism.
  GUIDANCE
  tag nist: ['SI-16']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag odp: %w{si_16_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-16' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
