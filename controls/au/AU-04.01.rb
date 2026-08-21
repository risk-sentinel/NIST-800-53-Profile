control 'AU-04(01)' do
  impact 0.5
  title "audit logs are transferred #{input('au_04_01_odp')} to a different system, system component, or media other than the system or system component conducting the logging."
  desc <<~DESC
    Transfer audit logs #{input('au_04_01_odp')} to a different system, system component, or media other than the system or system component conducting the logging.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      audit logs are transferred #{input('au_04_01_odp')} to a different system, system component, or media other than the system or system component conducting the logging.

    Assessment methods and objects:
      EXAMINE: Audit and accountability policy; system security plan; privacy plan; procedures addressing audit storage capacity; procedures addressing transfer of system audit records to secondary or alternate systems; system design documentation; system configuration settings and associated documentation; logs of audit record transfers to secondary or alternate systems; system audit records transferred to secondary or alternate systems; other relevant documents or records
      INTERVIEW: Organizational personnel with audit storage capacity planning responsibilities; organizational personnel with information security and privacy responsibilities; system/network administrators
      TEST: Mechanisms supporting the transfer of audit records onto a different system
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Audit log transfer, also known as off-loading, is a common process in systems with limited audit log storage capacity and thus supports availability of the audit logs. The initial audit log storage is only used in a transitory fashion until the system can communicate with the secondary or alternate system allocated to audit log storage, at which point the audit logs are transferred. Transferring audit logs to alternate storage is similar to [AU-9(2)](#au-9.2) in that audit logs are transferred to a different entity. However, the purpose of selecting [AU-9(2)](#au-9.2) is to protect the confidentiality and integrity of audit records. Organizations can select either control enhancement to obtain the benefit of increased audit log storage capacity and preserving the confidentiality, integrity, and availability of audit records and logs.
  GUIDANCE
  tag nist: ['AU-4 (1)']
  tag control: 'AU-4 (1)'
  tag objective: 'AU-04(01)'
  tag rev: 'Rev_5'
  tag family: 'Audit and Accountability'
  tag baseline: %w{}
  tag control_au_4_1: true
  tag odp: %w{au_04_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective AU-04(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
