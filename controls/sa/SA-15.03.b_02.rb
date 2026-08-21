control 'SA-15(03)(b)[02]' do
  impact 0.5
  title "the developer of the system, system component, or system service is required to perform a criticality analysis at the following rigor level: #{input('sa_15_03_odp_03')} ."
  desc <<~DESC
    Require the developer of the system, system component, or system service to perform a criticality analysis:
      (a) At the following decision points in the system development life cycle: #{input('sa_15_03_odp_01')} ; and
      (b) At the following level of rigor: #{input('sa_15_3_prm_2')}.
  DESC
  desc 'check', <<~CHECK
    Determine if:
      the developer of the system, system component, or system service is required to perform a criticality analysis at the following rigor level: #{input('sa_15_03_odp_03')} .

    Assessment methods and objects:
      EXAMINE: Supply chain risk management plan; system and services acquisition policy; procedures addressing development process, standards, and tools; procedures addressing criticality analysis requirements for the system, system component, or system service; solicitation documentation; acquisition documentation; service level agreements; acquisition contracts for the system, system component, or system service; criticality analysis documentation; business impact analysis documentation; software development life cycle documentation; system security plan; other relevant documents or records
      INTERVIEW: Organizational personnel with system and service acquisition responsibilities; organizational personnel with information security responsibilities; organizational personnel responsible for performing criticality analysis; system developer; organizational personnel with supply chain risk management responsibilities
      TEST: Organizational processes for performing criticality analysis; mechanisms supporting and/or implementing criticality analysis
  CHECK
  desc 'fix', <<~FIX
    NIST SP 800-53 Rev 5 and SP 800-53A Rev 5 publish no remediation text for this control. Implement the control statement above, record the implementation statement in the SSP, and replace this text with the system-specific remediation once the control is automated.
  FIX
  desc 'guidance', <<~GUIDANCE
    Criticality analysis performed by the developer provides input to the criticality analysis performed by organizations. Developer input is essential to organizational criticality analysis because organizations may not have access to detailed design documentation for system components that are developed as commercial off-the-shelf products. Such design documentation includes functional specifications, high-level designs, low-level designs, source code, and hardware schematics. Criticality analysis is important for organizational systems that are designated as high value assets. High value assets can be moderate- or high-impact systems due to heightened adversarial interest or potential adverse effects on the federal enterprise. Developer input is especially important when organizations conduct supply chain criticality analyses.
  GUIDANCE
  tag nist: ['SA-15 (3)']
  tag control: 'SA-15 (3)'
  tag objective: 'SA-15(03)(b)[02]'
  tag rev: 'Rev_5'
  tag family: 'System and Services Acquisition'
  tag baseline: %w{MODERATE HIGH}
  tag baseline_moderate: true
  tag baseline_high: true
  tag control_sa_15_3: true
  tag odp: %w{sa_15_03_odp_01 sa_15_03_odp_03 sa_15_3_prm_2}

  describe 'NIST SP 800-53A Rev 5 objective SA-15(03)(b)[02]' do
    skip 'Not automated. This control is a skeleton: it carries the NIST control language and the SP 800-53A assessment procedure but performs no check. Replace this stub with InSpec resource tests to automate it, or assess it manually and record the result as an attestation.'
  end
end
