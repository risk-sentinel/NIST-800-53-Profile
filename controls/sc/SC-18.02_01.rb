control 'SC-18(02)[01]' do
  impact 0.5
  title "the acquisition of mobile code to be deployed in the system meets #{input('sc_18_02_odp')};"
  desc <<~DESC
    Verify that the acquisition, development, and use of mobile code to be deployed in the system meets #{input('sc_18_02_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the acquisition of mobile code to be deployed in the system meets #{input('sc_18_02_odp')};

    Assessment methods and objects:
      EXAMINE: System and communications protection policy; procedures addressing mobile code; mobile code requirements; mobile code usage restrictions; mobile code implementation policy and procedures; acquisition documentation; acquisition contracts for system, system component, or system service; system development life cycle documentation; system security plan; other relevant documents or records
      INTERVIEW: System/network administrators; organizational personnel with information security responsibilities; organizational personnel with responsibilities for managing mobile code; organizational personnel with acquisition and contracting responsibilities
      TEST: Organizational processes for the acquisition, development, and use of mobile code
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    None.
  GUIDANCE
  tag nist: ['SC-18 (2)']
  tag control: 'SC-18 (2)'
  tag objective: 'SC-18(02)[01]'
  tag rev: 'Rev_5'
  tag family: 'System and Communications Protection'
  tag baseline: %w{}
  tag control_sc_18_2: true
  tag odp: %w{sc_18_02_odp}

  describe 'NIST SP 800-53A Rev 5 objective SC-18(02)[01]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
