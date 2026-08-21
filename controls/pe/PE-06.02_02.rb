control 'PE-06(02)[02]' do
  impact 0.5
  title "#{input('pe_06_02_odp_02')} are initiated using #{input('pe_06_02_odp_03')}."
  desc <<~DESC
    Recognize #{input('pe_06_02_odp_01')} and initiate #{input('pe_06_02_odp_02')} using #{input('pe_06_02_odp_03')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('pe_06_02_odp_02')} are initiated using #{input('pe_06_02_odp_03')}.

    Assessment methods and objects:
      EXAMINE: Physical and environmental protection policy; procedures addressing physical access monitoring; system design documentation; system configuration settings and associated documentation; system audit records; list of response actions to be initiated when specific classes/types of intrusions are recognized; system security plan; privacy plan; other relevant documents or records
      INTERVIEW: Organizational personnel with physical access monitoring responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Organizational processes for monitoring physical access; automated mechanisms supporting and/or implementing physical access monitoring; automated mechanisms supporting and/or implementing recognition of classes/types of intrusions and initiation of a response
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Response actions can include notifying selected organizational personnel or law enforcement personnel. Automated mechanisms implemented to initiate response actions include system alert notifications, email and text messages, and activating door locking mechanisms. Physical access monitoring can be coordinated with intrusion detection systems and system monitoring capabilities to provide integrated threat coverage for the organization.
  GUIDANCE
  tag nist: ['PE-6 (2)']
  tag control: 'PE-6 (2)'
  tag objective: 'PE-06(02)[02]'
  tag rev: 'Rev_5'
  tag family: 'Physical and Environmental Protection'
  tag baseline: %w{}
  tag control_pe_6_2: true
  tag odp: %w{pe_06_02_odp_01 pe_06_02_odp_02 pe_06_02_odp_03}

  describe 'NIST SP 800-53A Rev 5 objective PE-06(02)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
