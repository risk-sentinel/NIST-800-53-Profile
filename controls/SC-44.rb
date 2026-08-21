control 'SC-44' do
  impact 0.5
  title 'Detonation Chambers'
  desc <<~DESC
    Employ a detonation chamber capability within #{input('sc_44_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SC-44 a detonation chamber capability is employed within the #{input('sc_44_odp')}.

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing detonation chambers; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel installing, configuring, and/or maintaining the system
      TEST: Mechanisms supporting and/or implementing the detonation chamber capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Detonation chambers, also known as dynamic execution environments, allow organizations to open email attachments, execute untrusted or suspicious applications, and execute Universal Resource Locator requests in the safety of an isolated environment or a virtualized sandbox. Protected and isolated execution environments provide a means of determining whether the associated attachments or applications contain malicious code. While related to the concept of deception nets, the employment of detonation chambers is not intended to maintain a long-term environment in which adversaries can operate and their actions can be observed. Rather, detonation chambers are intended to quickly identify malicious code and either reduce the likelihood that the code is propagated to user environments of operation or prevent such propagation completely.
  GUIDANCE
  tag nist: ['SC-44']
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag odp: %w{sc_44_odp}

  describe 'NIST SP 800-53 Rev 5 control SC-44' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
