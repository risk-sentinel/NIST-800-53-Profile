control 'AU-10(03)' do
  impact 0.5
  title "reviewer or releaser credentials are maintained within the established chain of custody for information reviewed or released."
  desc <<~DESC
    Maintain reviewer or releaser credentials within the established chain of custody for information reviewed or released.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      reviewer or releaser credentials are maintained within the established chain of custody for information reviewed or released.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing non-repudiation; system design documentation; system configuration settings and associated documentation; records of information reviews and releases; system audit records; other relevant documents or records
      INTERVIEW: Organizational personnel with information security and privacy responsibilities; system/network administrators; system developers
      TEST: Automated mechanisms implementing non-repudiation capability
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Chain of custody is a process that tracks the movement of evidence through its collection, safeguarding, and analysis life cycle by documenting each individual who handled the evidence, the date and time the evidence was collected or transferred, and the purpose for the transfer. If the reviewer is a human or if the review function is automated but separate from the release or transfer function, the system associates the identity of the reviewer of the information to be released with the information and the information label. In the case of human reviews, maintaining the credentials of reviewers or releasers provides the organization with the means to identify who reviewed and released the information. In the case of automated reviews, it ensures that only approved review functions are used.
  GUIDANCE
  tag nist: ['AU-10 (3)']
  tag control: 'AU-10 (3)'
  tag objective: 'AU-10(03)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_10_3: true

  describe 'NIST SP 800-53A Rev 5 objective AU-10(03)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
