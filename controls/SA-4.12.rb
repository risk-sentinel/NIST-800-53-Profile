control 'SA-4 (12)' do
  impact 0.5
  title 'Data Ownership'
  desc <<~DESC
    (a) Include organizational data ownership requirements in the acquisition contract; and
    (b) Require all data to be removed from the contractor’s system and returned to the organization within #{input('sa_04_12_odp')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      SA-04(12)(a) organizational data ownership requirements are included in the acquisition contract;
      SA-04(12)(b) all data to be removed from the contractor’s system and returned to the organization is required within #{input('sa_04_12_odp')}.

    Assessment methods and objects:
      EXAMINE: System and services acquisition policy; system and services acquisition procedures; procedures addressing the integration of information security and privacy requirements, descriptions, and criteria into the acquisition process; procedures addressing the disposition of personally identifiable information; solicitation documentation; acquisition documentation; acquisition contracts for the system or system service; personally identifiable information processing policy; service level agreements; information sharing agreements; memoranda of understanding; system security plan; privacy plan; privacy impact assessment; privacy risk assessment documentation; other relevant documents or records
      INTERVIEW: Organizational personnel with acquisition/contracting responsibilities; organizational personnel with the responsibility for data management and processing requirements; organizational personnel with information security and privacy responsibilities
      TEST: Contract management processes to verify that data is removed as required; vendor processes for removing data in required timeframe; mechanisms verifying the removal and return of data
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Contractors who operate a system that contains data owned by an organization initiating the contract have policies and procedures in place to remove the data from their systems and/or return the data in a time frame defined by the contract.
  GUIDANCE
  tag nist: ['SA-4 (12)']
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{}
  tag odp: %w{sa_04_12_odp}

  describe 'NIST SP 800-53 Rev 5 control SA-4 (12)' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
