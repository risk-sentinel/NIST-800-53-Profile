control 'SI-13 (1)' do
  impact 0.5
  title 'Transferring Component Responsibilities'
  desc <<~DESC
    Take system components out of service by transferring component responsibilities to substitute components no later than #{input('si_13_01_odp')} of mean time to failure.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SI-13(01) system components are taken out of service by transferring component responsibilities to substitute components no later than #{input('si_13_01_odp')} of mean time to failure.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing predictable failure prevention; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for MTTF activities; organizational personnel with information security responsibilities; system/network administrators; organizational personnel with contingency planning responsibilities
      TEST: Organizational processes for managing MTTF; automated mechanisms supporting and/or implementing the transfer of component responsibilities to substitute components
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Transferring primary system component responsibilities to other substitute components prior to primary component failure is important to reduce the risk of degraded or debilitated mission or business functions. Making such transfers based on a percentage of mean time to failure allows organizations to be proactive based on their risk tolerance. However, the premature replacement of system components can result in the increased cost of system operations.
  GUIDANCE
  tag nist: ['SI-13 (1)']
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag odp: %w{si_13_01_odp}

  describe 'NIST SP 800-53 Rev 5 control SI-13 (1)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
