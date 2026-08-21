control 'SI-14(01)' do
  impact 0.5
  title "the software and data employed during system component and service refreshes are obtained from #{input('si_14_01_odp')}."
  desc <<~DESC
    Obtain software and data employed during system component and service refreshes from the following trusted sources: #{input('si_14_01_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the software and data employed during system component and service refreshes are obtained from #{input('si_14_01_odp')}.

    Assessment methods and objects:
      EXAMINE: System and information integrity policy; system and information integrity procedures; procedures addressing non-persistence for system components; system design documentation; system configuration settings and associated documentation; system audit records; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel responsible for obtaining component and service refreshes from trusted sources; organizational personnel with information security responsibilities
      TEST: Organizational processes for defining and obtaining component and service refreshes from trusted sources; automated mechanisms supporting and/or implementing component and service refreshes
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Trusted sources include software and data from write-once, read-only media or from selected offline secure storage facilities.
  GUIDANCE
  tag nist: ['SI-14 (1)']
  tag control: 'SI-14 (1)'
  tag objective: 'SI-14(01)'
  tag rev: 'Rev_5'
  tag family: 'System and Information Integrity'
  tag baseline: %w{}
  tag control_si_14_1: true
  tag odp: %w{si_14_01_odp}

  describe 'NIST SP 800-53A Rev 5 objective SI-14(01)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
