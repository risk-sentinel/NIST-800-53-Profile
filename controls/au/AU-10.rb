control 'AU-10' do
  impact 0.5
  title "irrefutable evidence is provided that an individual (or process acting on behalf of an individual) has performed #{input('au_10_odp')}."
  desc <<~DESC
    Provide irrefutable evidence that an individual (or process acting on behalf of an individual) has performed #{input('au_10_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      irrefutable evidence is provided that an individual (or process acting on behalf of an individual) has performed #{input('au_10_odp')}.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing non-repudiation; system design documentation; system configuration settings and associated documentation; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Mechanisms implementing non-repudiation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Types of individual actions covered by non-repudiation include creating information, sending and receiving messages, and approving information. Non-repudiation protects against claims by authors of not having authored certain documents, senders of not having transmitted messages, receivers of not having received messages, and signatories of not having signed documents. Non-repudiation services can be used to determine if information originated from an individual or if an individual took specific actions (e.g., sending an email, signing a contract, approving a procurement request, or receiving specific information). Organizations obtain non-repudiation services by employing various techniques or mechanisms, including digital signatures and digital message receipts.
  GUIDANCE
  tag nist: ['AU-10']
  tag control: 'AU-10'
  tag objective: 'AU-10'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{HIGH}
  tag baseline_high: true
  tag control_au_10: true
  tag odp: %w{au_10_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-10' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
