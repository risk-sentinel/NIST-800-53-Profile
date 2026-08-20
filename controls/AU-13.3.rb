control 'AU-13 (3)' do
  impact 0.5
  title 'Unauthorized Replication of Information'
  desc <<~DESC
    Employ discovery techniques, processes, and tools to determine if external entities are replicating organizational information in an unauthorized manner.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      AU-13(03) discovery techniques, processes, and tools are employed to determine if external entities are replicating organizational information in an unauthorized manner.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing information disclosure monitoring; procedures addressing information replication; system design documentation; system configuration settings and associated documentation; system audit records; training resources for staff to recognize the unauthorized use of organizational information; other relevant documents or records
      INTERVIEW: Organizational personnel with responsibilities for monitoring unauthorized replication of information; organizational personnel with information security and privacy responsibilities
      TEST: Discovery tools for identifying unauthorized information replication
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    The unauthorized use or replication of organizational information by external entities can cause adverse impacts on organizational operations and assets, including damage to reputation. Such activity can include the replication of an organizational website by an adversary or hostile threat actor who attempts to impersonate the web-hosting organization. Discovery tools, techniques, and processes used to determine if external entities are replicating organizational information in an unauthorized manner include scanning external websites, monitoring social media, and training staff to recognize the unauthorized use of organizational information.
  GUIDANCE
  tag nist: ['AU-13 (3)']
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}

  describe 'NIST SP 800-53 Rev 5 control AU-13 (3)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
