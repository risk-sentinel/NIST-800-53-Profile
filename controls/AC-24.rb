control 'AC-24' do
  impact 0.5
  title 'Access Control Decisions'
  desc <<~DESC
    #{input('ac_24_odp_01')} to ensure #{input('ac_24_odp_02')} are applied to each access request prior to access enforcement.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AC-24 #{input('ac_24_odp_01')} are taken to ensure that #{input('ac_24_odp_02')} are applied to each access request prior to access enforcement.

    Assessment methods and objects:
      EXAMINE: Access control policy; procedures addressing access control decisions; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for establishing procedures regarding access control decisions to the system; organizational personnel with information security responsibilities
      TEST: Mechanisms applying established access control decisions and procedures
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Access control decisions (also known as authorization decisions) occur when authorization information is applied to specific accesses. In contrast, access enforcement occurs when systems enforce access control decisions. While it is common to have access control decisions and access enforcement implemented by the same entity, it is not required, and it is not always an optimal implementation choice. For some architectures and distributed systems, different entities may make access control decisions and enforce access.
  GUIDANCE
  tag nist: ['AC-24']
  tag rev: 'Rev_5'
  tag family: 'Access Control'
  tag baseline: %w{}
  tag odp: %w{ac_24_odp_01 ac_24_odp_02}

  describe 'NIST SP 800-53 Rev 5 control AC-24' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
