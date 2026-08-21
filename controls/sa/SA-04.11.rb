control 'SA-04(11)' do
  impact 0.5
  title "#{input('sa_04_11_odp')} are defined in the acquisition contract for the operation of a system of records on behalf of an organization to accomplish an organizational mission or function."
  desc <<~DESC
    Include #{input('sa_04_11_odp')} in the acquisition contract for the operation of a system of records on behalf of an organization to accomplish an organizational mission or function.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      #{input('sa_04_11_odp')} are defined in the acquisition contract for the operation of a system of records on behalf of an organization to accomplish an organizational mission or function.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of Privacy Act requirements into systems of records operated by external organizations; solicitation documentation; acquisition documentation; acquisition contracts for the system, system component, or system service; service level agreements; system security plan; privacy plan; personally identifiable information processing policy; privacy program plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition responsibilities; organizational personnel with information security and privacy responsibilities
      TEST: Contract management processes to verify Privacy Act requirements are defined for the operation of a system of records; vendor processes for demonstrating incorporation of Privacy Act requirements in its operation of a system of records
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    When, by contract, an organization provides for the operation of a system of records to accomplish an organizational mission or function, the organization, consistent with its authority, causes the requirements of the [PRIVACT](#18e71fec-c6fd-475a-925a-5d8495cf8455) to be applied to the system of records.
  GUIDANCE
  tag nist: ['SA-4 (11)']
  tag control: 'SA-4 (11)'
  tag objective: 'SA-04(11)'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag control_sa_4_11: true
  tag odp: %w{sa_04_11_odp}

  describe 'NIST SP 800-53A Rev 5 objective SA-04(11)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
